<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/aw_warehouse?user=root&password=" catalogUri="/WEB-INF/queries/production.xml">

<!-- select {[Measures].[Quantity],[Measures].[AverageProductionPeriod]} ON COLUMNS,
  {([Time].[All Times],[Product].[All Products],[Store].[All Stores],[Ship].[All Ships],[payment].[All payments],[customer].[All Customers])} ON ROWS
from [Sales] -->

select {[Measures].[total_due],[Measures].[order_qty]}ON COLUMNS,
  {([Location],[Time].[All Times],[Product].[All Products])} ON ROWS
from [Production]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWorksDW using Mondrian OLAP</c:set>
