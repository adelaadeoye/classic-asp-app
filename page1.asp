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
#errMsg{
	color:red
	}

-->
</style>
<script>
validate =()=>{
	var userInput= document.getElementById("userInput").value
	button = document.getElementById("btnSubmit")
	if ((!isNaN(userInput) && (function(x) { return (x | 0) === x; })(parseFloat(userInput)))==true){
	console.log(userInput)
	button.disabled=false
	document.getElementById("errMsg").innerHTML=""

	}
	else{
		button.disabled=true
		document.getElementById("errMsg").innerHTML="Invalid input only integer allow"


	}
}

</script>
  </head>
  <body>
  <div id ="container">

<div id="intro">
<h5>Hi! My name is <strong>Adela,</strong> this is my 2nd Task code in <strong>CLASSIC ASP</strong></h4>
<p>When you enter a number, I will create a 3 column table with rows equal to the number you entered</p>
</div>
<form method="POST" action="page2.asp">
<p>Enter text:</p> 
<input type="text" placeholder="Text here" oninput="validate()" name="userInput" id="userInput" size="20" /><br>
<p id="errMsg"></p>
<input type="submit" disabled id="btnSubmit" value="Submit" />
</form>
<%
'If Len(Request.Form) > 0 Then Call Save()
'Sub Save()
'Dim txt
'txt = Request.Form("userInput")
'	If isNumeric(txt) Then
 '     Response.Write txt & " is num"

'	  Call Response.Redirect("page2.asp?userinput="+txt)
'	Else       
'		Response.Write("<p id='errortxt'>" & txt & " is not a num </p>")
'	End If
'End Sub
'%>
</div>
</body>
</html>
