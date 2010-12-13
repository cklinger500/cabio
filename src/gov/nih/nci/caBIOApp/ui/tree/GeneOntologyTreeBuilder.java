package gov.nih.nci.caBIOApp.ui.tree;

import gov.nih.nci.ncicb.webtree.*;
import gov.nih.nci.caBIO.bean.*;

import javax.swing.tree.*;

public class GeneOntologyTreeBuilder
  extends DefaultOntologyTreeBuilder
  implements TreeBuilder
{
  public GeneOntologyTreeBuilder(){
    super();
  }
  protected DefaultMutableTreeNode buildNode( Object rel, Object ont )
    throws Exception
  {
    DefaultMutableTreeNode node = new DefaultMutableTreeNode();
    GoOntologyRelationship goRel = (GoOntologyRelationship)rel;
    GoOntology goOnt = (GoOntology)ont;
    String id = goOnt.getId().toString();
    int hsCount = goOnt.getHomoSapienGenesCount().intValue();
    int mmCount = goOnt.getMouseGenesCount().intValue();
    String name = "[" + 
      goRel.getRelationshipType() + 
      "] " + goOnt.getName() +
      " [Hs:" + hsCount + "]" +
      " [Mm:" + mmCount + "]";
    node.setUserObject( new WebNode( id, name,
				     "javascript:" + 
				     _eventHandler + "('" +
				     id + "', '" + name + "')" ) );
    return node;
  }
}
