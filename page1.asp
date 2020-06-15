<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Task 2| Input Validation</title>
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
#errortxt{
	color:red
	}

-->
</style>
  </head>
  <body>
  <div id ="container">

<div id="intro">
<h5>Hi! My name is <strong>Adela,</strong> this is my 2nd Task code in <strong>CLASSIC ASP</strong></h4>
<p>When you enter a number, I will create a 3 column table with rows equal to the number you entered</p>
</div>
<form method="POST" action="">
<p>Enter text:</p> 
<input type="text" placeholder="Text here" name="userInput" size="20" /><br>
<%
If Len(Request.Form) > 0 Then Call Save()
Sub Save()
Dim txt
txt = Request.Form("userInput")
	If isNumeric(txt) Then
      Response.Write txt & " is num"

	  Call Response.Redirect("page2.asp?userinput="+txt)
	Else       
		Response.Write("<p id='errortxt'>" & txt & " is not a num </p>")
	End If
End Sub
%>
<input type="submit" id="button" value="Submit" />
</form>
</div>
</body>
</html>
