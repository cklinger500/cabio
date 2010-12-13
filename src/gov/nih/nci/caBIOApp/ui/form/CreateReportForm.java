package gov.nih.nci.caBIOApp.ui.form;

import gov.nih.nci.caBIOApp.util.*;
import gov.nih.nci.caBIOApp.ui.*;
import gov.nih.nci.caBIOApp.sod.*;

import java.util.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.struts.action.*;

public class CreateReportForm extends ActionForm{
  
  private boolean _callingSubAction = false;
  private String _selectedQueryDesignId = null;
  private String _selectedReportDesignId = null;
  private HashMap _queryDesigns = new HashMap();
  private HashMap _reportDesigns = new HashMap();
  private List _qdVLs = new ArrayList();
  private List _rdVLs = new ArrayList();
    private String _label = null;

  public void setCallingSubAction( boolean b ){
    _callingSubAction = b;
  }
  public boolean getCallingSubAction(){
    return _callingSubAction;
  }

  public void setQueryDesigns( HashMap qds ){

    _selectedReportDesignId = null;
    _selectedQueryDesignId = null;
    if( qds != null ){
      _queryDesigns = qds;
      _qdVLs = new ArrayList();
      for( Iterator i = _queryDesigns.keySet().iterator(); i.hasNext(); ){
	QueryDesign qd = (QueryDesign)_queryDesigns.get( (String)i.next() );
	_qdVLs.add( new ValueLabelPair( qd.getId(), qd.getLabel() ) );
      }
    }else{
      _queryDesigns = new HashMap();
    }

  }

  public List getQDVLs(){
    return _qdVLs;
  }

  public void setReportDesigns( HashMap rds ){

    _selectedQueryDesignId = null;
    _selectedReportDesignId = null;
    if( rds != null ){
      _reportDesigns = rds;
      _rdVLs = new ArrayList();
      for( Iterator i = _reportDesigns.keySet().iterator(); i.hasNext(); ){
	ReportDesign rd = (ReportDesign)_reportDesigns.get( (String)i.next() );
	//Before adding, check to see if QueryDesign in query designs. If not, remove the ReportDesign.
	QueryDesign aDesign = rd.getQueryDesign();
	if( _queryDesigns.get( aDesign.getId() ) == null ){
	  _reportDesigns.remove( rd.getId() );
	}else{
	  _rdVLs.add( new ValueLabelPair( rd.getId(), rd.getLabel() ) );
	}
      }
    }else{
      _reportDesigns = new HashMap();
    }

  }

  public List getRDVLs(){
    return _rdVLs;
  }

  public void setSelectedQueryDesignId( String s ){
    _selectedQueryDesignId = s;
  }
  public String getSelectedQueryDesignId(){
    return  _selectedQueryDesignId;
  }

  public void setSelectedReportDesignId( String s ){
    _selectedReportDesignId = s;
  }
  public String getSelectedReportDesignId(){
    return  _selectedReportDesignId;
  }

  public QueryDesign getSelectedQueryDesign()
    throws ServletException
  {
    QueryDesign design = null;
    design = (QueryDesign)_queryDesigns.get( _selectedQueryDesignId );
    if( design == null ){
      throw new ServletException( "Couldn't find query design with id: " + 
				  _selectedQueryDesignId );
    }
    return design;
  }
    /*
  public ReportDesign getSelectedReportDesign()
    throws ServletException
  {
    ReportDesign design = (ReportDesign)_reportDesigns.get( _selectedReportDesignId );
    if( design == null ){
      try{
	design = new ReportDesign( getSelectedQueryDesign() );
	MessageLog.printInfo( "CreateReportForm.getSelectedReportDesign(): created new report with id: " +
			      design.getId() );
	_reportDesigns.put( design.getId(), design );
      }catch( Exception ex ){
	throw new ServletException( "Error selecting report design.", ex );
      }
    }
    return design;
  }
    */
    public ReportDesign create()
	throws ServletException
    {
	ReportDesign design = null;
	try{
	    design = new ReportDesign( _label, _label, getSelectedQueryDesign() );
	    MessageLog.printInfo( "CreateReportForm.create(): created new report with id: " +
				  design.getId() );
	    _reportDesigns.put( design.getId(), design );
	}catch( Exception ex ){
	    throw new ServletException( "Error creating report design.", ex );
	}
	_rdVLs.add( new ValueLabelPair( design.getId(), design.getLabel() ) );
	return design;
    }
    public ReportDesign select()
	throws ServletException
    {
	if( _selectedReportDesignId == null ){
	    throw new ServletException( "Report design id is null." );
	}
	return (ReportDesign)_reportDesigns.get( _selectedReportDesignId );
    }

    public ReportDesign rename()
	throws ServletException
    {
	ReportDesign rd = select();
	if( rd == null ){
	    throw new ServletException( "Couldn't find selected report design." );
	}
	rd.setLabel( _label );
	ValueLabelPair vlp = FormUtils.getVLP( _rdVLs, rd.getId() );
	vlp.setLabel( _label );
	return rd;
    }
    public ReportDesign remove()
	throws ServletException
    {
	if( _selectedReportDesignId == null ){
	    throw new ServletException( "No report design selected." );
	}
	_rdVLs.remove( new ValueLabelPair( _selectedReportDesignId, null ) );
	return (ReportDesign)_reportDesigns.remove( _selectedReportDesignId );
    }
    public void setLabel( String s ){
	_label = s;
    }
    public String getLabel(){
	return _label;
    }

    public ActionErrors validate( ActionMapping mapping, HttpServletRequest request ){
	ActionErrors errors = new ActionErrors();
	String nextStep = request.getParameter( "nextStep" );
	if( nextStep != null ){
	    if( "create".equals( nextStep ) || "rename".equals( nextStep ) ){
		ActionError error = 
		    FormUtils.validateRequiredName( _label,
						    "createReportForm.errors.reportLabelRequired",
						    new String[0] );
		if( error == null ){
		    error = FormUtils.validateUniqueName( _label, _reportDesigns.keySet(),
						"createReportForm.errors.uniqueLabelRequired" );
		}
		if( error != null ){
		    errors.add( "label", error );
		}
	    }
	}
	return errors;
    }
    public void reset(){
	_label = null;
    }
}
