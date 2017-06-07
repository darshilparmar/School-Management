<% @language="VBScript"%>
<% Option explicit
	dim conn,res
	set conn=Server.CreateObject("ADODB.Connection")
	conn.provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\LoginDB.mdb"
	set res=Server.CreateObject("ADODB.Recordset")
	res.open "LoginDB",conn,0,3,2
	dim Name,Password
	Name=Request.Form("adminname")
	Password=Request.Form("adminpass")
	res.movefirst
	Do While not res.EOF
	If(Name=res("Username") AND Password=res("Password")) then
	Response.Redirect("admin.asp")
	Else
	Response.write("Invalid username or password")
	response.redirect("home.html")
	
	End If
	res.MoveNext
	Loop
%>