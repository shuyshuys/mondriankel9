<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/aw_warehouse?user=root&password=" 
catalogUri="/WEB-INF/queries/sales.xml">

select {[Measures].[Order Quantity], [Measures].[Total Due]} ON COLUMNS,
  {([Customer].[All Customer], [Payment].[All Payment], [Ship].[All Ship], [Store].[All Store], [Product].[All Product])} ON ROWS
from [Sales]

</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWorksDW using Mondrian OLAP</c:set>
