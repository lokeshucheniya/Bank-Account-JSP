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

<body>

<form action="addnew.app">
		
		<div align ="center">
		
		
		<h1>Register Here</h1>
	AccountHolderName:<input type = "text" name ="accountholdername" required="required"><br>
	CustomerEmailId:<input type = "email" name ="emailid" required="required" pattern ="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"><br>
	CustomerDOB:<input type = "date" name ="dob" required="required"><br>
	CustomerPhoneNo:<input type = "tel" name ="phoneno" required="required"><br>
	
	

	AccountType:<select id ="drop" onchange="myFunction();" >
					<option>Select</option>
					<option value="saving">Saving</option>
					<option value="current">Current</option>
					
				</select>   <br>
				
	<div  id ="set1">
		Enter OverDraft Limit: <input type="number" name="acccountbalance" min=0>
	</div>
	
	<div id="set2">
		Enter Account Balance: <input type="number" name="acccountbalance" min=0> 
	</div>

	 <div id="set" style="display:none">
	 
	 		<input type="radio" name="sal" value="Salary">Salary
			<input type="radio" name="sal" value="Non-Salary">Non-Salary
	 </div>
	 
	<input type ="submit" value = "Submit" name="submit">	
	<input type ="reset" value = "Back" name="back">	
	
</div>
</form>

</body>

<script>
	function myFunction() {
		var dropdown = document.getElementById("drop");
		var val = dropdown.options[dropdown.selectedIndex].value;
		
		var drops = document.getElementById("set");
		var val1 = dropdown.options[dropdown.selectedIndex].value;
		
		
		if(val == "saving"){
			document.getElementById("set").style.display = "block";
			if(val1 == "Salary"){
				document.getElementById("set1").style.display;
			}
		}
		
		else{
			document.getElementById("set").style.display = "none";
		}
	}

</script>
<div>
	<jsp:include page ="Footer.jsp"></jsp:include>
</div>
</html>