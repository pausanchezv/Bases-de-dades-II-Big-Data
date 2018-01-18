<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%--
  the values for "arrow=xxx" are the names of the images jpivot/jpivot/table/arrow-xxx.gif
--%>

<jp:mondrianQuery id="query01" jdbcDriver="org.apache.derby.jdbc.EmbeddedDriver" jdbcUrl="jdbc:postgresql:menjaub" catalogUri="/WEB-INF/queries/menjaub.xml"
   jdbcUser="postgres" jdbcPassword="postgres" connectionPooling="false">

SELECT  
    { [Measures].[num_persons], [Measures].[quantity] } ON COLUMNS,
{([Customer].[all customers], [Tables].[all tabless], [Origin].[all origins], [Dates].[all datess])} on rows
FROM booking 
</jp:mondrianQuery>

<c:set var="title01" scope="session">MenjaUB - Cub de 'BOOKING'</c:set>
