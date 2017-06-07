<% @language="vbscript" %>
<% option explicit 
	Dim conn,res,id
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\ExamDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "Notices",conn,0,3,2
	res.AddNew
	res("Title")=Request.Form("title")
	res("Notice")=Request.Form("notice")
	res("Authority")=Request.Form("authority")
	res.update
	res.movenext
	
	Response.redirect("admin.asp")
%>