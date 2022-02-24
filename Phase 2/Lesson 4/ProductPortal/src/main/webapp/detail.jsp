<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 5px;
}
table {
margin: auto;
}
body {
text-align: center;
margin-top: 100px;
background-color: #92a8d1;
}
</style>
</head>
<body>
<jsp:useBean id="index" class="com.simplilearn.pdetails_portal.Product" scope="session"></jsp:useBean>
<h3>Product Details : </h3> 
<br><table>
<tr>
<th>Product ID 	</th>
<th>Product Name	</th>
<th>Product Type 	</th>
<th>Product Price  </th>
</tr>
<tr>
<td><jsp:getProperty property="id" name="index"/></td>
<td><jsp:getProperty property="pname" name="index"/></td>  
<td><jsp:getProperty property="ptype" name="index"/></td>  
<td><jsp:getProperty property="pprice" name="index" /></td>
</tr>
</table> 
</body>
</html>
