package gov.nih.nci.caBIOApp.ui.pager;

public interface PagerDataSource{

  public int getItemCount() throws Exception;
  public PagerItem[] getItems( int startIdx, int numItems ) throws Exception;
  public String[] getHeaders();

}
