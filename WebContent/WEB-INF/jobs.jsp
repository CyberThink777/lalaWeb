<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job List</title>
<link rel="stylesheet" href="CSS/styleadmin.css">
</head>
<body>
	<div class="content">
	<h1>Employee Information</h1>
		<div class="hyperlink-box">
			<a href="job?action=add">Add Job</a>
			<a href="admin">Home</a>
		</div>
	<c:forEach var = "i" items = "${jobs}" varStatus="loop">
		<script>
		function btn1${loop.index}(){
			 var edits = document.getElementsByClassName("edit${loop.index}"); 
			    for (var i = 0; i < edits.length; i++) {
			        edits[i].removeAttribute("disabled");
				}
			document.getElementById("btnright${loop.index}").style.display = "inline";
			document.getElementById("btndelete${loop.index}").style.display = "inline";
		}
		function btndel${loop.index}(){
			document.getElementById("delete${loop.index}").removeAttribute("disabled");
			document.getElementById("btnright${loop.index}").click();
		}
		</script>
    	<div class="box">
		<form action="job" method="post">
			<div class="textbox">
				<p>Job Code</p>
				<input class="edit${loop.index}" type="text" name="jobCode" value=${i.code} disabled required>
				<input type="hidden" name="oldCode" value=${i.code} readonly>
			</div>
			<div class="textbox">
				<p>Job Name</p>
            	<input class="edit${loop.index}" type="text" name="jobName" value=${i.name} disabled required>
        	</div>
			<div class="textbox">
				<p>Job Salary</p>
            	<input class="edit${loop.index}" type="number" name="jobSalary" step="0.01" value=${i.salary} disabled required>
        	</div>
			<div class="button-box">
				<input class="btnleft" type="button" value="Edit" onclick="btn1${loop.index}()">
				<input id="delete${loop.index}" type="hidden" disabled value="delete" name="action">
				<button id="btndelete${loop.index}" class="btndelete" onclick="btndel${loop.index}()">Delete</button>
				<input id="btnright${loop.index}" class="btnright" type="submit" value="Confirm">
			</div>
		</form>
	</div>
   </c:forEach> 
	</div>
</body>
</html>