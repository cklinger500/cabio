package gov.nih.nci.caBIOApp.ui.form;

import gov.nih.nci.caBIOApp.util.*;
import gov.nih.nci.caBIOApp.ui.*;
import gov.nih.nci.caBIOApp.sod.*;
import gov.nih.nci.caBIOApp.report.*;

import java.util.*;
import javax.servlet.*;

import org.apache.struts.action.*;

public class MyCaBIOMainForm extends ActionForm{

  private boolean _callingSubAction = false;
  private QueryDesign _queryDesign = null;
  private ReportDesign _reportDesign = null;
  private ValueLabelPair _reportDownloadLink = null;
  private Table _report = null;
  private int _defaultDisplaySize = 25;
  private int _startIdx = 0;
  private int _displaySize = _defaultDisplaySize;
  private String _scrollDirection = null;

  public void setCallingSubAction( boolean b ){
    _callingSubAction = b;
  }
  public boolean getCallingSubAction(){
    return _callingSubAction;
  }

  public Table generateReport()
    throws ServletException
  {
    try{
      ReportGenerator gen = new ReportGenerator( _reportDesign );
      _report = gen.generateReport();
      /*
      CaBIOTable t = new CaBIOTable();
      int numCols = 5;
      int numRows = 100;
      for( int i = 0; i < numCols; i++ ){
	t.addColumn( "Header " + ( i + 1 ) );
      }
      t.setColumnCount( numCols );
      t.setRowCount( numRows );
      for( int i = 0; i < numRows; i++ ){
	for( int j = 0; j < numCols; j++ ){
	  t.setStringValueAt( "val[" + i + "," + j + "]", i, j );
	}
      }
      _report = t;
      */
    }catch( Exception ex ){
      throw new ServletException( "error generating report", ex );
    }
    return _report;
  }

  public boolean isCreateQueryDone(){
    return _queryDesign != null;
  }

  public boolean isCreateReportDone(){
    return _reportDesign != null;
  }


  public void setQueryDesign( QueryDesign qd ){
    _queryDesign = qd;
  }
  public QueryDesign getQueryDesign(){
    QueryDesign design = _queryDesign;
    if( design == null && _reportDesign != null ){
      design = _reportDesign.getQueryDesign();
    }
    return design;
  }

  public void setReportDesign( ReportDesign qd ){
    _reportDesign = qd;
  }
  public ReportDesign getReportDesign(){
    return _reportDesign;
  }

  public void reset(){
    _callingSubAction = false;
    _queryDesign = null;
    _reportDesign = null;
    _startIdx = 0;
    _displaySize = _defaultDisplaySize;
  }

  public void setReportDownloadLink( ValueLabelPair vlp ){
    _reportDownloadLink = vlp;
  }
  public ValueLabelPair getReportDownloadLink(){
    return _reportDownloadLink;
  }

  public void scroll()
    throws ServletException
  {
    if( "begin".equals( _scrollDirection ) ){
      _startIdx = 0;
      _displaySize = Math.min( _defaultDisplaySize, _report.getRowCount() );
    }else if( "forward".equals( _scrollDirection ) ){
      _startIdx = Math.min( _report.getRowCount() - 1, _startIdx + _defaultDisplaySize );
      _displaySize = Math.min( _defaultDisplaySize, 
			       Math.min( _report.getRowCount() - _startIdx, 
					 _defaultDisplaySize ) );
    }else if( "backward".equals( _scrollDirection ) ){
      _startIdx = Math.max( 0, _startIdx - _defaultDisplaySize );
      _displaySize = Math.min( _defaultDisplaySize, _report.getRowCount() );
    }else if( "end".equals( _scrollDirection ) ){
      _startIdx = Math.max( 0, _report.getRowCount() - _defaultDisplaySize );
      _displaySize = Math.min( _defaultDisplaySize, _report.getRowCount() );
    }else{
      throw new ServletException( "invalid direction: " + _scrollDirection );
    }

  }

  public int getDisplayRowStartIndex(){
    return _startIdx;
  }
  public int getNumRowsToDisplay(){
    return _displaySize;
  }

  public boolean getAllowScrollBegin(){
    return getAllowScrollBackward();
  }
  public boolean getAllowScrollEnd(){
    return getAllowScrollForward();
  }
  public boolean getAllowScrollForward(){
    boolean allow = false;
    if( ( _startIdx + _defaultDisplaySize ) < _report.getRowCount() - 1 ){
      allow = true;
    }
    return allow;
  }
  public boolean getAllowScrollBackward(){
    boolean allow = false;
    if( ( _startIdx - _defaultDisplaySize ) > -1 ){
      allow = true;
    }
    return allow;
  }

  public void setScrollDirection( String s ){
    _scrollDirection = s;
  }
  public String getScrollDirection(){
    return _scrollDirection;
  }

  public Table getReport(){
    return _report;
  }
  public String[] getReportHeaders(){
    int numCols = _report.getColumnCount();
    String[] headers = new String[numCols];
    for( int i = 0; i < numCols; i++ ){
      headers[i] = _report.getColumnName( i );
    }
    return headers;
  }



}
