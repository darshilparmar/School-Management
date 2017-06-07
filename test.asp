  <%@ Language="VBScript" %>
  <% Option Explicit %>
 <!--- This page should display "ASP is working!" --->
  <!--- if ASP is available to you. --->

  <HTML>
    <HEAD>
      <TITLE>ASP Test Page</TITLE>
    </HEAD>

    <BODY>
      <% Dim TestString %>
      <% TestString = "ASP is Working!" %>
      <H1>
        <% Response.Write TestString %>
      </H1>
    </BODY>
  </HTML>