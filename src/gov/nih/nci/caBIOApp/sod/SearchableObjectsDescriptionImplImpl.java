package gov.nih.nci.caBIOApp.sod;

import java.util.*;

public class SearchableObjectsDescriptionImplImpl
  extends SearchableObjectsDescriptionImpl
{
  public SearchableObjectsDescriptionImplImpl(){
    super();
  }
  public List getSearchableObjects(){
    return SODUtils.sortSearchableObjects( super.getSearchableObjects() );
  }
}
