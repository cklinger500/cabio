package gov.nih.nci.caBIOApp.ui.tree;

import javax.swing.tree.DefaultMutableTreeNode;

public interface TreeBuilder {

    public DefaultMutableTreeNode buildTree(String ontName, String rootTerm)
            throws Exception;
}