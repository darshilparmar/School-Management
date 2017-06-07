<% @language="vbscript" %>
<% option explicit 
	Dim conn,res,id
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	conn.open "C:\inetpub\wwwroot\School Management\Database\AdmissionDB.mdb"
	set res=Server.CreateObject("ADODB.RecordSet")
	res.open "Admission",conn,0,3,2
	res.AddNew
	res("FirstName")=Request.Form("first_name")
	res("LastName")=Request.Form("last_name")
	res("dd/mm/yyyy")=Request.Form("date_pick")
	res("Address")=Request.Form("textarea1")
	res("Gender")=Request.Form("group1")
	res("BloodGroup")=Request.Form("bloodgp")
	res("State")=Request.Form("State")
	res("City")=Request.Form("City")
	res("ZipCode")=Request.Form("ZipCode")
	res("Email")=Request.Form("email")
	res.update
	res.movenext
	Response.write(" Added!")
	
%>


	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              