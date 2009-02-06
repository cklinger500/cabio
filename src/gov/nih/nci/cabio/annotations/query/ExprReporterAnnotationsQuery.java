package gov.nih.nci.cabio.annotations.query;

import gov.nih.nci.cabio.domain.ExpressionArrayReporter;
import gov.nih.nci.system.query.hibernate.HQLCriteria;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

public class ExprReporterAnnotationsQuery extends InListQuery {

    private String arrayPlatform;
    
    private Collection<ExpressionArrayReporter> reporterList = 
        new ArrayList<ExpressionArrayReporter>();
    
    public ExprReporterAnnotationsQuery(String arrayPlatform, Collection<String> reporterIds) {
        super(reporterIds);
        this.arrayPlatform = arrayPlatform;
    }

    public Collection<ExpressionArrayReporter> getResults() {
        return reporterList;
    }

    protected Object generateQuery(List subList) {
        
        List params = new ArrayList();
        params.add(arrayPlatform);
        params.addAll(subList);
        
        String hql = "select reporter from " +
                "gov.nih.nci.cabio.domain.ExpressionArrayReporter reporter " +
                "left join fetch reporter.gene " +
//                "left join fetch reporter.physicalLocationCollection as pl " +
//                "left join fetch pl.chromosome " +
//                "left join fetch reporter.cytogeneticLocationCollection as cl " +
//                "left join fetch cl.startCytoband " +
                "left join reporter.microarray as microarray " +
                "where microarray.name = ? " +
                "and reporter.name in "+getPlaceholders(subList);
        
        return new HQLCriteria(hql,params);
    }
    
    protected void processResult(Object result) {
        reporterList.add((ExpressionArrayReporter)result);
    }
}