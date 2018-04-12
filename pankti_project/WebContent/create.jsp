<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
		<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<script type="text/javascript">
function check(){
var title= document.getElementById("titlea").value;	
var area= document.getElementById("writearea").value;
var checkboxa=document.getElementById("music_a").value;
var checkboxb=document.getElementById("sports_a").value;
var checkboxc=document.getElementById("arts_a").value;

var date = document.getElementById("dat").value;
var time = document.getElementById("tim").value;
var venue =document.getElementById("ven").value;

if (title==null || title=="" )
{
if(area=null || area==""){
	alert("Title and Description Cannot be blank");
	return false;
   }
else{
alert("Title Cannot be blank");
return false;
}
}
else if(area==null || area=="")
{
alert("Description cannot be blank");
return false;
}

//<!--checking for checkbox using jQuery -->
} 

</script>

<% 
if(session.getAttribute("email")== null){
  response.sendRedirect("login.jsp");
}
%>
<style>
 body {
    background-image:url(bg.jpg);	
    
}
div {
	width: 35%;
    padding: 10px;
    border: 5px solid black;
}

table{
	padding: 20px;
    border: 5px solid black;
}
</style>
<body>
<br>
<a href="index.jsp">Back to Home Page</a>


<center>
<div><h1>

<font size = "5" color = "SlateBlue"> CREATE EVENT </font>

</h1></div>
<br>


<form action= "<%=request.getContextPath()%>/EventServlet" method ="post" onsubmit=" return check()" >

<table>

<tr><td height="50">
<font color = "Light SlateBlue"> TITLE: </font>
<td height="30">
<input autofocus type="text" name="title" id="titlea" placeholder= "Enter Event Title"/>
</td>
</tr>
<tr><td height="30">

<font color = "Light SlateBlue"> DESCRIPTION: </font>

<td>
<textarea rows="5" cols="50" maxlength="250" id="writearea" name="textpart" placeholder="Enter text here...">
</textarea>
</td>
</tr>
<tr>
<td height="30">

<font color = "Light SlateBlue"> DATE: </font>

<td height="30">
<input type="date" id="dat" name = "dats"/>
</td>
</tr>

<tr>
<td>
<font color = "Light SlateBlue"> TIME: </font>
<td>
<input type="time" id="tim" name="tims"/>
</td>
</tr>

<tr>
<td>
<font color = "Light SlateBlue"> VENUE: </font>
<td>
<input type="text" name= "venue" id="ven" placeholder="Enter venue of your Event"/>
</td>
</tr>

<tr>
<td>


<font color = "Light SlateBlue"> Orator: </font>

<td>
<input type="text" name= "speaker" id="spk" placeholder="Enter Orator's Name"/>
</td>
</tr>
<tr>
<td>
<font color = "Light SlateBlue"> ORATOR'S INFO: </font>

<td>
<textarea rows="5" cols="35" maxlength="150" name= "speakerinfo" id="spkinfo" placeholder="Enter Orator's Info "></textarea>
</td>
</tr>

<tr>
<td><td>

<input type="checkbox" name="checkboxa" id="music_a" value="Music"> <font color = "Light SlateBlue"> MUSIC </font>
<input type="checkbox" name="checkboxb" id="sports_a" value="Sports"> <font color = "Light SlateBlue"> SPORTS </font>
<input type="checkbox" name="checkboxc" id="arts_a" value="Arts"> <font color = "Light SlateBlue"> ARTS </font>

<h4 align="left">
<input type="submit" value="SUBMIT" >
</h4>
</td> </td>
</tr>
</table>
</center>

</form>
</body>
</html>
