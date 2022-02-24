<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<jsp:useBean id="index" class="com.simplilearn.pdetails_portal.Product" scope="session"/>
	<jsp:setProperty property="id" name="index"/>  
	<jsp:setProperty property="pname" name="index"/>  
	<jsp:setProperty property="ptype" name="index"/>  
	<jsp:setProperty property="pprice" name="index"/>  <br><br>
	
	<h2 style="text-align: center;"><a href = "detail.jsp"><b>Click here to get the Product Details</b></a></h2>

</body>
</html>
