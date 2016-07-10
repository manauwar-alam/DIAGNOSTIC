
<%-- 
    Document   : MainPage
    Created on : March 2014
    Author     : Mohd. Manauwar Alam
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
    <head>
        <title>Lifecare-Diagnostic</title>
        <link href="css/lifecare.css" rel="stylesheet" type="text/css" >
        <meta HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=UTF-8">
        <s:head />
    </head>

    <body class="oneColElsLtHdr">
        <div id="container"> 
<%-- 
            <s:bean name="java.util.HashMap" id="qTableLayout">
                <s:param name="tablecolspan" value="%{8}" />
            </s:bean> --%>
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">LIFE CARE DIAGNOSTIC</p>

            </div>
            <p align="center"  style="background-color: #ffffff">ERROR PAGE</p>
            <p align="center"  style="background-color: #009900;color: #ffffff"><s:property value="message"/></p>
            <div id ="mainContent" style="margin-left: 5%">
                <s:include value="header.jsp"/>
                <s:form name="LoginForm" theme="qxhtml">

                   
                    <s:property value="errorMessage"/>

                </s:form>
            </div>
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">Developed and Designed by MOHD. MANAUWAR ALAM</p>

            </div>
            <p align="center"  style="background-color: #ffffff">manauwar.alam@outlook.com</p>

        </div>
    </body>
</html>

