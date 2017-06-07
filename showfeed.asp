<% @language="vbscript" %>
<% option explicit 
	Dim conn,res,id,tsql,objcom
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\feedbackDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "feedback",conn,0,3,2
%>
<html>
<body>
<table border="5">
<th>
<td>Name</td>
<td>Mail</td>
<td>Comment</td>
</th>
<%
		
	res.movefirst

	do while not res.EOF
	Response.Write("<tr><td>"&res("Name")&"</td>")
    Response.Write("<td>"&res("Mail")&"</td>")
	Response.Write("<td>"&res("Comment")&"</td></tr>")	
	res.movenext

	loop
	
%>
</table>
</body>
</html>