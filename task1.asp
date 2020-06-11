<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Task 1</title>
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
<h4>Hi! My name is <strong>Adela,</strong> this is my first code in <strong>CLASSIC ASP</strong></h4>
</div>
<form action="" method="get">
Enter text: <input type="text" placeholder="Text here" name="userInput" size="20" /><br><br>
<input type="submit" value="Submit" id="button" />
</form>
<h3>
Result
</h3>
<%
dim userInput
userInput=Request.QueryString("userInput")
If userInput<>"" Then
    Response.Write("<h4>Hello, this is the text:  " & userInput & "</h4>")
End If
%>
</div>
</body>
</html>