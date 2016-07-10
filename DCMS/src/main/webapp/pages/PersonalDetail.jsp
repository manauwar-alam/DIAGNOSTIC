<%-- 
    Document   : PersonalDetail
    Created on : 21 Mar, 2014, 3:21:50 PM
    Author     : Mohd. Manauwar Alam
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Personal Detail</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/lifecare.css" rel="stylesheet" type="text/css" >
        <meta HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=UTF-8">
        <s:head />
        <sx:head />
        <s:actionerror />
    </head>
    <body class="oneColElsLtHdr">
        <div id="container"> 

            <s:actionerror />
           <%--  <s:bean name="java.util.HashMap" id="qTableLayout">
                <s:param name="tablecolspan" value="%{8}" />
            </s:bean> --%>
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">PERSONAL DETAIL</p>

            </div>
            <p align="center"  style="background-color: #ffffff">STEP 1 OF 3</p>
            <div>
                <div id ="mainContent">
                    <p align="center"  style="background-color: #009900;color: #ffffff"><s:property value="message"/></p>
                     <s:include value="header.jsp"/>
                    <s:form name="frmPerDet"  > 
                        <hr>
                        <table border="0" cellpadding="4" cellspacing="0" align="center">
                            <s:hidden name="perDet.personalDetailId" />

                            <s:textfield label="Certificate No" name="perDet.certificateNo" required="true"  maxLength="100" size=""  labelposition="left" >
                               
                            </s:textfield>
                            <s:label value="............." cssClass="labelDot"/>
                            <s:textfield label="Ref No" name="perDet.referenceNo" required="true"  maxLength="50" size=""  labelposition="left">
                              
                            </s:textfield>

                            <s:textfield label="Name of Candidate" name="perDet.nameOfCandidate" required="true"  maxLength="100" size="80"  labelposition="left" >
                              
                            </s:textfield>

                        </table>
                        <br>

                        <hr>

                        <table border="0" cellpadding="4" cellspacing="0" align="center">

                            <s:textfield label="Passport No" name="perDet.passportNo" required="true"  maxLength="45" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:textfield label="Place of Issue" name="perDet.placeOfIssue" required="true"  maxLength="45" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <sx:datetimepicker name="perDet.dateOfIssue" label="Date of Issue" required="true" displayFormat="dd-MMM-yyyy" value="" >
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </sx:datetimepicker>




                            <s:textfield label="Post applied for" name="perDet.postAppliedFor" required="true"  maxLength="45" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:textfield label="Weight in kg" name="perDet.weight" required="true"  maxLength="10" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="Height in cm" name="perDet.height" required="true"  maxLength="10" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:select label="Marital Status" name="perDet.maritalStatus"  required="true" list="#{'M':'Married','U':'Unmarried'}" value="'M'" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:select>
                            <s:select label="Sex"  name="perDet.sex" required="true" list="#{'M':'Male','F':'Female'}" value="'M'" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:select>
                            <s:textfield label="Nationality" name="perDet.nationality" required="true"  maxLength="20" size="" value="INDIAN" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>
                            <sx:datetimepicker name="perDet.dateOfBirth" label="Date of Birth" required="true" displayFormat="dd-MMM-yyyy" value="" />

                            <s:textfield label="Age in Years" name="perDet.ageInYears" required="true"  maxLength="11" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <sx:datetimepicker name="perDet.examDate" label="Exam Date" required="true" displayFormat="dd-MMM-yyyy" value="" >
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </sx:datetimepicker>  
                            <s:textfield label="Any thing else" name="" required="true"  maxLength="" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:textfield>
                        </table>
                        <hr>
                        <table border="0" cellpadding="4" cellspacing="0" align="center">


                            <s:textfield label="Remarks" name="perDet.commonRemarks" required="true"  maxLength="50" size="40" value="NO ABNORMALITY DETECTED" labelposition="left" >
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>
<s:label value="............." cssClass="labelDot"/>
                            <s:textfield label="Results" name="perDet.commonResult" required="true"  maxLength="50" size="" value="FIT" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="Reason" name="perDet.commonReason" required=""  maxLength="100" size="80"  labelposition="left" >
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:textfield>

                        </table>
                        <hr>
                        <table border="0" cellpadding="4" cellspacing="0" align="center">

                            <s:submit   value="<<< Go To Main Page"  align="left" action="GoToMainPage" method="goToMainPage">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:submit>
                            <s:submit   value="Save Step 1"  align="left" action="SaveStep1" method="saveStep1">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:submit>
                            

                        

                        </table>
                    </s:form>
                </div>
                <div style ="background-color: #215dc6;">
                    <p align="center" class="pageHeading" style="color: #ffffff">Developed and Designed by MOHD. MANAUWAR ALAM</p>

                </div>
                <p align="center"  style="background-color: #ffffff">manauwar.alam@outlook.com</p>
            </div> 
        </div> 
    </body>
</html>
