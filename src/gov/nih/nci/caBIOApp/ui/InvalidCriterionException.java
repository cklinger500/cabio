package gov.nih.nci.caBIOApp.ui;

import gov.nih.nci.caBIOApp.util.*;

public class InvalidCriterionException extends BaseException
{
    public InvalidCriterionException(){
	super();
    }
    public InvalidCriterionException( String s ){
	super( s );
    }
    public InvalidCriterionException( String s, Throwable t ){
	super( s, t );
    }

}
