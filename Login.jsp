<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div>
	<jsp:include page ="Header.jsp"></jsp:include>
</div>
<div><h2>Welcome ${sessionScope.username}</h2>
</div>
<body>
<div align ="center">
	<form action = "login.app"  method ="post">
		<table >
			<tr><td>User Name :<input type = "text" value ="name" name = "username" required="required"></td></tr>
			<tr><td>Password  :<input type = "password" value ="password"  name="password"></td></tr>
			<tr><td><input type = "submit" value = "submit" name="submit"></td>
			<td><input type = "submit" value = "Register" name="register"></td></tr>
		
	
		</table>	
	</form>
	
</div>
</body>
<div>
	<jsp:include page ="Footer.jsp"></jsp:include>
</div>
</html>