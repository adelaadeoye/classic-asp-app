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
</head>
<body>
<div id ="container">
<div id="intro">
Table
</div>
<h3>

	<%
input = Session("userInput")
Response.Write input
%>
</h3>
</div>
</body>
</html>