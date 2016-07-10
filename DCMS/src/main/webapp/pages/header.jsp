<%-- 
    Document   : header
    Created on : 2 Apr, 2014, 11:13:33 AM
    Author     : wml4
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form name="LogoutForm" >
            
            <s:url action="Logout" id="Logout" method="logout"></s:url>
               
                 <p align="right"  style="margin-right: 5%">  <s:a href="%{Logout}" >Logout</s:a></p>
        </s:form>
       
    </body>
</html>
