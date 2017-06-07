<% @language="vbscript" %>
<% option explicit 
	Dim conn,res,id,tsql,objcom
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\AddStudentDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "AddStudentDB",conn,0,3,2
%>
<html>
<body>
<table border="3">

<th>
FirstName
<td><b>LastName</b></td>
<td><b>dd/mm/yyyy</b></td>
<td><b>Address</b></td>
<td><b>Gender</b></td>
<td><b>BloodGroup</b></td>
<td><b>State</b></td>
<td><b>City</b></td>
<td><b>ZipCode</b></td>
<td><b>Email</b></td>




</th>
<%
	res.movefirst
	
	do while not res.EOF
	
    Response.Write("<tr><td>"&res("FirstName")&"</td>")
	Response.Write("<td>"&res("LastName")&"</td>")
	
	Response.Write("<td>"&res("dd/mm/yyyy")&"</td>")
	Response.Write("<td>"&res("Address")&"</td>")
	Response.Write("<td>"&res("Gender")&"</td>")
	Response.Write("<td>"&res("BloodGroup")&"</td>")
	Response.Write("<td>"&res("State")&"</td>")
	Response.Write("<td>"&res("City")&"</td>")
	Response.Write("<td>"&res("ZipCode")&"</td>")
	Response.Write("<td>"&res("Email")&"</td></tr>")
	
	res.movenext
	loop
	
%>
</table>
</body>
</html>