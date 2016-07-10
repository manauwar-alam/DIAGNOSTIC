
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

          
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">LIFE CARE DIAGNOSTIC</p>

            </div>
            <p align="center"  style="background-color: #ffffff">MAIN PAGE</p>
            <p align="center"  style="background-color: crimson;color: #ffffff"><s:property value="message"/></p>
            <s:include value="header.jsp"/>
            <p align="center"  style="color: crimson;font-size: 20px"><s:property value="showUserName"/></p>
            
            <div id ="mainContent" style="margin-left: 20%">
                

                <s:form name="MainForm" >

                    <s:submit value="Add New Entry" action="NewEntry" />
                    <s:submit value="Search By Passport No" action="SearchPassPage" method="goToSearchPassPage"/>
                    <s:submit value="Search By Candidate Name" action="SearchCandiPage" method="goToSearchCandiPage"/>

                </s:form>
            </div>
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">Developed and Designed by MOHD. MANAUWAR ALAM</p>

            </div>
            <p align="center"  style="background-color: #ffffff">manauwar.alam@outlook.com</p>

        </div>
    </body>
</html>

