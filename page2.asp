<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Task 2| Dynamic Table</title>
<style type="text/css">
<!--


#container {
	border:1px solid black;
	width:400px;
	height:400px;
	margin:0 auto;
	margin-right:auto;
	text-align:center;
	}
#intro{
	text-align:justify;
	margin: 5px;
	
	}
#button{
	margin-top:5px;
	border-radius:10px;
	fonr-size:20px;
	border:1px solid green;
	width:150px;
	height:50px;
}
#button:hover {
    cursor: pointer;
	background:green;
	color:white
}

-->
</style>
<script>
function calculateCells() {
	var table=document.getElementById("table");
  	for(var i = 1; i <= table.rows.length-2; i++)
            {
				var sumAB=0;
					
				A = parseInt(document.getElementById("A_"+i).value);
				B = parseInt(document.getElementById("B_"+i).value);
				sumAB=parseInt(A+B);
				document.getElementById("SumAB_"+i).innerHTML=sumAB
						
			
			}
            
           
}
</script>
</head>
<body>
<div id ="container">
<div id="intro">
Table
</div>
<h3>

Dynamic Table
</h3>
<table id="table"width="200" border="1" cellspacing="0" cellpadding="2">
    <tr>
      <th>A</td>
      <th>B</td>
      <th>Sum</td>
    </tr>
	<% 
	input = Request.form("userInput")
	Response.Write("I am input" & input)
	For i = 1 to input Step 1
			%>
				<tr id="row_<%=i%>">
					<td><input id="A_<%=i%>"/></td>
					<td><input id="B_<%=i%>"/></td>
					<td><p id="SumAB_<%=i%>"></p></td>
				 </tr>
			<%

	Next
	%>
    <tr>
  </table>
  <button onclick="calculateCells()" type="button">Calculate</button>
</div>
</body>
</html>