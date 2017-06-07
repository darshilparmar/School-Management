<% @language="vbscript" %>
<% option explicit 
	Dim conn,res,id,tsql,objcom
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\StudentDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "StudentDB",conn,0,3,2
		id=Request.Form("std_id")
	res.movefirst

	do while not res.EOF
	if id="&res('ID')" then
	
	Response.Write(res("ID")&"<br/>")
    Response.Write(res("FirstName")&"<br/>")
	Response.Write(res("LastName")&"<br/>")
	Response.Write(res("Age")&"<br/>")
	Response.Write(res("BloodGroup")&"<br/>")
	Response.Write(res("Examination")&"<br/>")
	Response.Write(res("City")&"<br/>")
	Response.Write(res("ZipCode")&"<br/>")
	Response.Write(res("Email")&"<br/>")
	
	else
	res.movenext
	end if
	loop
	
%>