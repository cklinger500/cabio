package gov.nih.nci.cabio.portal.portlet.printers;

import gov.nih.nci.cabio.domain.GeneOntology;
import gov.nih.nci.cabio.domain.GeneOntologyRelationship;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * Prints a gene collection in JSON format. 
 * @see GeneCollectionJSONPrinter
 * 
 * @author <a href="mailto:rokickik@mail.nih.gov">Konrad Rokicki</a>
 */
public class ParentGOCollectionJSONPrinter extends TableJSONPrinter {
    
    protected Collection<GeneOntology> getTerms(Object obj) {
        if (obj == null) return null;
        Collection<GeneOntologyRelationship> collection = 
            (Collection<GeneOntologyRelationship>)obj;
        List<GeneOntology> terms = new ArrayList<GeneOntology>();
        for(GeneOntologyRelationship gor : collection) {
            terms.add(gor.getParentGeneOntology());
        }
        return terms;
    }
    
    public JSONObject objectToJSON(Object obj) 
            throws JSONException {

        Collection<GeneOntology> collection = getTerms(obj);
        
        JSONObject json = new JSONObject();
        
        JSONArray cols = new JSONArray();
        cols.put("GO Identifier");
        cols.put("GO Term");
        json.put("columnNames", cols);
        json.put("count", (collection == null) ? "0" : collection.size());
        
        JSONArray rows = new JSONArray();

        if (collection != null) {
            int c=0;
            for(GeneOntology go : collection) {
                if (c >= MAX_RESULTS) break;
                JSONObject jsonObj = new JSONObject();
                jsonObj.put("GO Identifier", go.getId());
                jsonObj.put("GO Term", go.getName());
                rows.put(jsonObj);
                c++;
            }
        }
        
        json.put("rows", rows);
        return json;
    }
}
