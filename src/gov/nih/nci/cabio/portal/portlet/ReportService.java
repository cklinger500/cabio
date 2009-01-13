package gov.nih.nci.cabio.portal.portlet;

import gov.nih.nci.cabio.domain.ArrayReporterPhysicalLocation;
import gov.nih.nci.cabio.domain.ExpressionArrayReporter;
import gov.nih.nci.cabio.domain.Gene;
import gov.nih.nci.cabio.domain.GeneAgentAssociation;
import gov.nih.nci.cabio.domain.GeneDiseaseAssociation;
import gov.nih.nci.cabio.domain.GeneFunctionAssociation;
import gov.nih.nci.cabio.domain.GenePhysicalLocation;
import gov.nih.nci.cabio.domain.MarkerPhysicalLocation;
import gov.nih.nci.cabio.domain.NucleicAcidPhysicalLocation;
import gov.nih.nci.cabio.domain.Pathway;
import gov.nih.nci.cabio.domain.SNPArrayReporter;
import gov.nih.nci.cabio.domain.SNPPhysicalLocation;
import gov.nih.nci.cabio.domain.TranscriptPhysicalLocation;
import gov.nih.nci.system.applicationservice.ApplicationException;
import gov.nih.nci.system.applicationservice.CaBioApplicationService;
import gov.nih.nci.system.query.hibernate.HQLCriteria;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Convenience class for queries in the canned reports portlet. The queries 
 * defined here do some eager-fetching of results. Note that due to SDK defects,
 * it best to never eager-fetch associations with a cardinality greater than 1.
 * 
 * @author <a href="mailto:rokickik@mail.nih.gov">Konrad Rokicki</a>
 */
public class ReportService {

    private static final String PHYSICAL_LOCATION_HQL = 
             "select loc from gov.nih.nci.cabio.domain.PhysicalLocation loc " +
             "left join fetch loc.chromosome as chrom " +
             "where ";
    
    private static final String GENES_BY_AGENT_HQL = 
             "select assoc from gov.nih.nci.cabio.domain.GeneAgentAssociation assoc " +
             "left join fetch assoc.gene as gene " +
             "left join fetch assoc.agent as agent " +
             "left join fetch assoc.evidence " +
             "where ";
    
     private static final String GENES_BY_AGENT_HQL_WHERE = 
             "(lower(agent.name) like ? or lower(agent.EVSId) like ?)";

    private static final String GENES_BY_DISEASE_HQL = 
             "select assoc from gov.nih.nci.cabio.domain.GeneDiseaseAssociation assoc " +
             "left join fetch assoc.gene as gene " +
             "left join fetch assoc.diseaseOntology as disease " +
             "left join fetch assoc.evidence " +
             "where ";
    
    private static final String GENES_BY_DISEASE_HQL_WHERE = 
             "(lower(disease.name) like ? or lower(disease.EVSId) like ?)";

    private static final String GENE_ASSOCIATIONS_HQL = 
             "select assoc from gov.nih.nci.cabio.domain.GeneFunctionAssociation assoc " +
             "left join fetch assoc.gene as gene " +
             "left join fetch assoc.evidence " +
             "where ";
    
    private static final String GENE_ASSOCIATIONS_HQL_WHERE = 
             "(lower(gene.symbol) like ? or lower(gene.hugoSymbol) like ?)";

    private static final String REPORTERS_BY_GENE_HQL = 
             "select reporter from gov.nih.nci.cabio.domain.ExpressionArrayReporter reporter " +
             "left join fetch reporter.gene as gene " +
             "left join fetch reporter.microarray " +
             "where ";
    
    private static final String REPORTERS_BY_GENE_HQL_WHERE = 
             "(lower(gene.symbol) like ? or lower(gene.hugoSymbol) like ?)";

    private static final String REPORTERS_BY_SNP_HQL = 
             "select reporter from gov.nih.nci.cabio.domain.SNPArrayReporter reporter " +
             "left join fetch reporter.SNP as SNP " +
             "left join fetch reporter.microarray " +
             "where ";
    
    private static final String REPORTERS_BY_SNP_HQL_WHERE = 
             "lower(SNP.DBSNPID) = ?";

    private static final String GENES_BY_SYMBOL_HQL = 
             "select gene from gov.nih.nci.cabio.domain.Gene gene " +
             "left join fetch gene.databaseCrossReferenceCollection as dbxr " +
             "left join fetch gene.chromosome " +
             "left join fetch gene.taxon as taxon " +
             "where dbxr.dataSourceName = 'LOCUS_LINK_ID' " +
             "and ";

    private static final String GENES_BY_SYMBOL_HQL_WHERE = 
             "(lower(gene.hugoSymbol) like ? or lower(gene.symbol) like ?)";
     
    private static final String PATHWAY_BY_SYMBOL_HQL = 
            "select pathway from gov.nih.nci.cabio.domain.Pathway pathway " +
            "left join fetch pathway.taxon as taxon " +
            "left join pathway.geneCollection as genes " +
            "where ";

    private static final String PATHWAY_BY_SYMBOL_HQL_WHERE = 
            "(lower(genes.hugoSymbol) like ? or lower(genes.symbol) like ?)";
    
    
    private final CaBioApplicationService appService;
    
    private Map<Class, String> detailObjectHQL = new HashMap<Class, String>();
    
    /**
     * Constructor 
     * @param appService CaBioApplicationService
     */
    public ReportService(CaBioApplicationService appService) {
        this.appService = appService;

        detailObjectHQL.put(GenePhysicalLocation.class, PHYSICAL_LOCATION_HQL);
        detailObjectHQL.put(ArrayReporterPhysicalLocation.class, PHYSICAL_LOCATION_HQL);
        detailObjectHQL.put(NucleicAcidPhysicalLocation.class, PHYSICAL_LOCATION_HQL);
        detailObjectHQL.put(SNPPhysicalLocation.class, PHYSICAL_LOCATION_HQL);
        detailObjectHQL.put(MarkerPhysicalLocation.class, PHYSICAL_LOCATION_HQL);
        detailObjectHQL.put(TranscriptPhysicalLocation.class, PHYSICAL_LOCATION_HQL);
        
        detailObjectHQL.put(GeneAgentAssociation.class, GENES_BY_AGENT_HQL);
        detailObjectHQL.put(GeneDiseaseAssociation.class, GENES_BY_DISEASE_HQL);
        detailObjectHQL.put(GeneFunctionAssociation.class, GENE_ASSOCIATIONS_HQL);
        detailObjectHQL.put(ExpressionArrayReporter.class, REPORTERS_BY_GENE_HQL);
        detailObjectHQL.put(SNPArrayReporter.class, REPORTERS_BY_SNP_HQL);
        detailObjectHQL.put(Gene.class, GENES_BY_SYMBOL_HQL);
        detailObjectHQL.put(Pathway.class, PATHWAY_BY_SYMBOL_HQL);
    }
    

    /**
     * Returns the detail object graph for the specified class/id combination.
     * @param clazz A caBIO bean class 
     * @param id Internal caBIO id of the object
     * @return Object with certain associations preloaded
     * @throws ApplicationException
     */
    public Object getDetailObject(Class clazz, Long id) 
            throws ApplicationException {

        if (!clazz.getPackage().getName().startsWith("gov.nih.nci.cabio.")) {
            throw new ApplicationException("Invalid class specified.");
        }
        
        String hql = detailObjectHQL.get(clazz);

        if (hql == null) {
            hql = "select o from "+clazz.getName()+" o where o.id = '"+id+"'";
        }
        else {
            Matcher m = Pattern.compile("^select (\\w+?) from.*").matcher(hql);
            m.find();
            String target = m.group(1);
            hql += target + ".id = '"+id+"'";
        }

        // TODO: We can't use wildcards here because some ids are Integers 
        // instead of Longs (GF18404). When that's fixed, we can do the 
        // following, which is more efficient:
        
//        List<String> params = new ArrayList<String>();
//        params.add(id.toString());
//        List results = appService.query(new HQLCriteria(hql, params));
        
        List results = appService.query(new HQLCriteria(hql));
                
        if (results.isEmpty()) return null;
        return results.iterator().next();
    }
    
    
    /**
     * Returns all gene associations for a given agent.  
     * @param agentNameOrCui Agent.name or Agent.EVSId
     * @return List of GeneAgentAssociation, with preloaded genes, agents 
     *         and evidences
     * @throws ApplicationException
     */
    public List<GeneAgentAssociation> getGenesByAgent(String agentNameOrCui) 
            throws ApplicationException {

        List<String> params = duplicateId(convertInput(agentNameOrCui));
        return appService.query(new HQLCriteria(
            GENES_BY_AGENT_HQL+GENES_BY_AGENT_HQL_WHERE,params));
    }

    
    /**
     * Returns all gene associations for a given disease.  
     * @param diseaseNameOrCui Disease.name or Disease.EVSId
     * @return List of GeneDiseaseAssociation, with preloaded genes, agents 
     *         and evidences
     * @throws ApplicationException
     */
    public List<GeneDiseaseAssociation> getGenesByDisease(
            String diseaseNameOrCui) throws ApplicationException {

        List<String> params = duplicateId(convertInput(diseaseNameOrCui));
        return appService.query(new HQLCriteria(
            GENES_BY_DISEASE_HQL+GENES_BY_DISEASE_HQL_WHERE,params));
    }
    

    /**
     * Returns all gene associations for a given gene symbol.  
     * @param geneSymbol Gene.symbol or Gene.hugoSymbol
     * @return List of GeneDiseaseAssociation, with preloaded genes and evidences
     * @throws ApplicationException
     */
    public List<GeneFunctionAssociation> getGeneAssociations(
            String geneSymbol) throws ApplicationException {
         
        List<String> params = duplicateId(convertInput(geneSymbol));
        return appService.query(new HQLCriteria(
            GENE_ASSOCIATIONS_HQL+GENE_ASSOCIATIONS_HQL_WHERE,params));
    }
    

    /**
     * Returns all reporters for a given gene symbol.  
     * @param geneSymbol Gene.symbol or Gene.hugoSymbol
     * @return List of ExpressionArrayReporter, with preloaded genes and microarrays
     * @throws ApplicationException
     */
    public List<ExpressionArrayReporter> getReportersByGene(
            String geneSymbol) throws ApplicationException {

        List<String> params = duplicateId(convertInput(geneSymbol));
        return appService.query(new HQLCriteria(
            REPORTERS_BY_GENE_HQL+REPORTERS_BY_GENE_HQL_WHERE,params));
    }
    
    
    /**
     * Returns all reporters for a given SNP.  
     * @param dbSNPId SNP.DBSNPID
     * @return List of SNPArrayReporter, with preloaded genes and SNPs
     * @throws ApplicationException
     */
    public List<SNPArrayReporter> getReportersBySNP(
            String dbSNPId) throws ApplicationException {

        List<String> params = new ArrayList<String>();
        params.add(dbSNPId.toLowerCase().trim());
        return appService.query(new HQLCriteria(
            REPORTERS_BY_SNP_HQL+REPORTERS_BY_SNP_HQL_WHERE,params));
    }
    
    
    /**
     * Returns all genes for a given symbol.  
     * @param geneSymbol
     * @return List of Genes, with preloaded taxons, chromosomes, and the 
     *         locus link id in DatabaseCrossReference. 
     * @throws ApplicationException
     */
    public List<Gene> getGenesBySymbol(
            String geneSymbol) throws ApplicationException {

        List<String> params = duplicateId(convertInput(geneSymbol));
        return appService.query(new HQLCriteria(
            GENES_BY_SYMBOL_HQL+GENES_BY_SYMBOL_HQL_WHERE,params));
    }
    
    /**
     * Returns all pathways for a given name.
     * @param pathwayName (Name of the pathway)
     * @return List of Pathways. 
     * @throws ApplicationException
     */
    public List<Pathway> getPathwaysByName(
            String pathwayName) throws ApplicationException {
        
        String inputName = pathwayName.trim();
        
        if ("".equals(inputName)) return new ArrayList<Pathway>();
        
        Pathway pathway = new Pathway();
        if (!inputName.matches("^(h|m)_")) {
            pathway.setName("*"+inputName);
        }
        else {
            pathway.setName(inputName);
        }
        
        return appService.search(Pathway.class, pathway);
    }
    
    /**
     * Returns all pathways for a given symbol.  
     * @param geneSymbol (Gene Symbol)
     * @return List of Pathways. 
     * @throws ApplicationException
     */
     public List<Pathway> getPathwaysByGeneSymbol(
            String geneSymbol) throws ApplicationException {

        List<String> params = duplicateId(convertInput(geneSymbol));
        return appService.query(new HQLCriteria(
            PATHWAY_BY_SYMBOL_HQL+PATHWAY_BY_SYMBOL_HQL_WHERE,params));
    }
     
     /**
      * Converts input for use in HQL. Converts to lower case and replaces
      * star (*) wildcards with amperstand (%) wildcards.
      * @param input
      * @return converted input
      */
     private String convertInput(String input) {
         return input.toLowerCase().trim().replaceAll("\\*", "%");
     }
    
    /**
     * Shortcut method to create a parameter array with the same parameter twice.
     * @param id
     * @return
     */
    private List<String> duplicateId(String id) {
        List<String> params = new ArrayList<String>();
        params.add(id);
        params.add(id);
        return params;
    }
}