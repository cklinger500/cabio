<%@ include file="/WEB-INF/jsp/init.jsp" %>

<div id="queries_pathwayByGene" class="query">

    <html:form action="/cabioportlet/pathwayByGeneQuery">
    <html:hidden property="page" styleId="page"/>

    <table>
    
    <tr><td title="Gene symbol">Gene / HUGO Symbol</td><td>
    <html:text property="geneSymbol" size="30"/>
    </td></tr>

    </table>

    <html:submit>Search</html:submit>
    <html:reset>Reset</html:reset>

    </html:form>
</div>