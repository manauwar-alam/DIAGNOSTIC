<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
    <head>
        <title>Lifecare-Diagnostic</title>
        <link href="css/lifecare.css" rel="stylesheet" type="text/css" >
        <!-- <meta HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=UTF-8"> -->
        <s:head />
    </head>

    <body class="oneColElsLtHdr">
        <div id="container"> 

          
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">LIFE CARE DIAGNOSTIC</p>

            </div>
            <p align="center"  style="background-color: #ffffff">LOGIN PAGE</p>
            <p align="center"  style="background-color: crimson;color: #ffffff"><s:property value="message"/></p>
            <div id ="mainContent" style="margin-left: 30%">
                <s:form name="LoginForm"  action="LoginAction">
                   <%--  <s:hidden name="userName"/> --%>
                    
                    <br>
                    <br>
                    <s:textfield label="Username" name="userName" labelposition="left">
                       
                    </s:textfield>

                    <s:password label="Password"  name="password" labelposition="left">
                       
                    </s:password>

                    <s:submit value="Login"  align="center" />


                
           
        </s:form>
    </div>
     <div style ="background-color: #215dc6;">
                    <p align="center" class="pageHeading" style="color: #ffffff">Developed and Designed by MOHD. MANAUWAR ALAM</p>

                </div>
                <p align="center"  style="background-color: #ffffff">manauwar.alam@outlook.com</p>
            
</div>
</body>
</html>

