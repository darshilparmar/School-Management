<% @language="vbscript" %>
<% option explicit 
	Dim conn,res
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\ExamsDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "Schedule",conn,0,3,2
%>
<html>
<body>
<table border="3">
<th>
Date<b>
<td>Months</td>
<td>Year</td>
<td>Day</td>
<td>Subject</td></b>

</th>
<%
		
	res.movefirst

	do while not res.EOF
	Response.Write("<tr><td>"&res("Date")&"</td>")
    Response.Write("<td>"&res("Months")&"</td>")
	Response.Write("<td>"&res("Year")&"</td>")
	Response.Write("<td>"&res("Day")&"</td>")
	Response.Write("<td>"&res("Subject")&"</td></tr>")	
	res.movenext

	loop
	
%>
</table>
</body>
</html>