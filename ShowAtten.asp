<% @language="vbscript" %>
<% option explicit 
	Dim conn,res
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\StudentDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "Attendance",conn,0,3,2
%>
<html>
<body>
<table border="3">

<th>
Time
<td>Monday</td>
<td>Tuesday</td>
<td>Wednesday</td>
<td>Thursday</td>
<td>Friday</td>
</th>
<%
		
	res.movefirst

	do while not res.EOF
	Response.Write("<tr><td>"&res("Time")&"</td>")
    Response.Write("<td>"&res("Mon")&"</td>")
	Response.Write("<td>"&res("Tue")&"</td>")
	Response.Write("<td>"&res("Wed")&"</td>")
	Response.Write("<td>"&res("Thu")&"</td>")
	Response.Write("<td>"&res("Fri")&"</td></tr>")	
	res.movenext

	loop
	
%>
</table>
</body>
</html>