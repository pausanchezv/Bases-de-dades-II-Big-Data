<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%--
  the values for "arrow=xxx" are the names of the images jpivot/jpivot/table/arrow-xxx.gif
--%>


<jp:mondrianQuery id="query01" jdbcDriver="org.apache.derby.jdbc.EmbeddedDriver" jdbcUrl="jdbc:postgresql:menjaub" catalogUri="/WEB-INF/queries/menjaub.xml"
   jdbcUser="postgres" jdbcPassword="postgres" connectionPooling="false">

SELECT  
    { [Measures].[total_amount], [Measures].[cost_price], [Measures].[quantity] } ON COLUMNS,
{([Customer].[all customers], [Staff].[all staffs], [Tables].[all tabless], [Dates].[all datess])} on rows
FROM sales 
</jp:mondrianQuery>

<c:set var="title01" scope="session">MenjaUB - Cub de 'SALES'</c:set>
