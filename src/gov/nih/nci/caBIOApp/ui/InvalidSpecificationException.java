package gov.nih.nci.caBIOApp.ui;

import gov.nih.nci.caBIOApp.util.*;

public class InvalidSpecificationException extends BaseException
{
    public InvalidSpecificationException(){
	super();
    }
    public InvalidSpecificationException( String s ){
	super( s );
    }
    public InvalidSpecificationException( String s, Throwable t ){
	super( s, t );
    }

}
