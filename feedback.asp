<% @language="VBScript"%>
<% option explicit 
	Dim conn,res,id
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\feedbackDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "feedback",conn,0,3,2
	res.AddNew
	res("Name")=Request.Form("name")
	res("Mail")=Request.Form("email")
	res("comment")=Request.Form("comment")
	res.update
	res.movenext
	response.write("Feedback Added!!!")
	response.redirect("AboutUs.html")
%>