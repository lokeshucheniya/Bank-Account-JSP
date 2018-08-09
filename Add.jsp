<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
	<div>
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
</head>
<body>
<form action="add.app">
	
	
	<div align="center">
		<form action="add.app" method ="get">
			<jstl:if test="${requestScope.AddNew != null}">
				AccountHolderName:<input type = "text" name ="accountholdername" required="required"><br>
				CustomerEmailId:<input type = "email" name ="emailid" required="required" pattern ="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"><br>
				CustomerDOB:<input type = "date" name ="dob" required="required"><br>
				CustomerPhoneNo:<input type = "tel" name ="phoneno" required="required"><br>
			</jstl:if>
			
			
			
		</form>
	</div>
</form>
	

</body>
</html>