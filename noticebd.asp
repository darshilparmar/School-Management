<% @language="vbscript" %>
<% option explicit 
	Dim conn,res
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\ExamsDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "Notices",conn,0,3,2
%>
<html>
<body>
<table border="3">
<th>
Title
<td>Notice</td>
<td>Authority</td>


</th>
<%
		
	res.movefirst

	do while not res.EOF
	Response.Write("<tr><td>"&res("Title")&"</td>")
    Response.Write("<td>"&res("Notice")&"</td>")
	Response.Write("<td>"&res("Authority")&"</td></tr>")	
	res.movenext

	loop
	
%>
</table>
</body>
</html>