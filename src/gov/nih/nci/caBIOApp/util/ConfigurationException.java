package gov.nih.nci.caBIOApp.util;

public class ConfigurationException extends BaseException
{
    public ConfigurationException(){
	super();
    }
    public ConfigurationException( String s ){
	super( s );
    }
    public ConfigurationException( String s, Throwable t ){
	super( s, t );
    }

}
