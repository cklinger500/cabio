package gov.nih.nci.caBIOApp.ui.pager;

public interface PagerItem{

  public String getId();
  public String[] getValues();
  public void setSelected( boolean b );
  public boolean isSelected();
}
