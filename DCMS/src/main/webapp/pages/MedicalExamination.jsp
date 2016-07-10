<%-- 
    Document   : MedicalExamination
    Created on : 21 Mar, 2014, 3:21:50 PM
    Author     : Mohd. Manauwar Alam
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Medical Examination</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/lifecare.css" rel="stylesheet" type="text/css" >
        <meta HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=UTF-8">
        <s:head />
    </head>
    <body class="oneColElsLtHdr">
        <div id="container"> 

            <s:actionerror />
            <s:bean name="java.util.HashMap" id="qTableLayout">
                <s:param name="tablecolspan" value="%{8}" />
            </s:bean>
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">MEDICAL EXAMINATION</p>

            </div>
            <p align="center"  style="background-color: #ffffff">STEP 2 OF 3</p>

            <div id ="mainContent">
                <p align="center"  style="background-color: #009900;color: #ffffff"><s:property value="message"/></p>
                <s:include value="header.jsp"/>
                <s:form name="frmPerDet" theme="qxhtml" validate="true"> 
                    <s:hidden name="medEx.medicalExaminationId"/>

                    <hr>
                    <table border="0" cellpadding="4" cellspacing="0" align="center">


                        <s:textfield label="Certificate No" name="perDet.certificateNo" required="true"  maxLength="100" size=""  labelposition="left" readonly="true">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>
                        <s:label value="............." cssClass="labelDot"/>
                        <s:textfield label="Ref No" name="perDet.referenceNo" required="true"  maxLength="" size=""  labelposition="left" readonly="true">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Name of Candidate" name="perDet.nameOfCandidate" required="true"  maxLength="100" size="80"  labelposition="left" readonly="true">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:textfield>

                    </table>
                    <br>
                    <hr>
                    <table border="0" cellpadding="4" cellspacing="0" align="center">

                        <s:label value="EYE" cssClass="pageSubHeading">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:label>

                        <s:textfield label="Vision Right Eye" name="medEx.visionRightEye" required="true"  maxLength="10" size=""  labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>
                        <br>

                        <s:textfield label="Vision Left Eye" name="medEx.visionLeftEye" required="true"  maxLength="10" size=""  labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>


                        <s:textfield label="Other Right Eye" name="medEx.otherRightEye" required="true"  maxLength="10" size="" value="NAD"  labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>



                        <s:textfield label="Other Left Eye" name="medEx.otherLeftEye" required="true"  maxLength="10" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>


                        <s:label value="EAR" cssClass="pageSubHeading">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:label>

                        <s:textfield label="Right Ear" name="medEx.rightEar" required="true"  maxLength="10" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Left Ear" name="medEx.leftEar" required="true"  maxLength="10" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:label value="OTHERS" cssClass="pageSubHeading">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:label>

                        <s:textfield label="Hernia" name="medEx.hernia" required="true"  maxLength="30" size="" value="NIL" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Varicose Veins" name="medEx.varicoseVeins" required="true"  maxLength="30" size="" value="NIL" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Extremities" name="medEx.extremeties" required="true"  maxLength="30" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Skin" name="medEx.skin" required="true"  maxLength="30" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Hydrocele" name="medEx.hydrocele" required="true"  maxLength="30" size="" value="NIL" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:textfield>


                        <s:label value="SYSTEMIN EXAMINATION" cssClass="pageSubHeading">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:label>

                        <s:textfield label="Blood Pressure in mmHG" name="medEx.bloodPressure" required="true"  maxLength="30" size=""  labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Heart" name="medEx.heart" required="true"  maxLength="30" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Lungs" name="medEx.lungs" required="true"  maxLength="30" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Abdomen" name="medEx.abdomen" required="true"  maxLength="30" size="" value="NAD" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:label value="VENERAL DISEASE" cssClass="pageSubHeading">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:label>

                        <s:label value="Clinical" cssClass="pageSubHeading">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:label>

                        <s:textfield label="Lab : VDRL" name="medEx.vrdl" required="true"  maxLength="30" size="" value="NON REACTIVE"  labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:textfield>

                        <s:textfield label="(if VDRL is Reactive) TPHA" name="medEx.tpha" required="true"  maxLength="30" size="" value="NON REACTIVE" labelposition="left">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:textfield>

                    </table>
                    <hr>
                    <table border="0" cellpadding="4" cellspacing="0" align="center">


                        <s:textfield label="Remarks" name="perDet.commonRemarks" required="true"  maxLength="50" size="40" value="NO ABNORMALITY DETECTED" labelposition="left" readonly="true">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>
                        <s:label value="............." cssClass="labelDot"/>
                        <s:textfield label="Results" name="perDet.commonResult" required="true"  maxLength="50" size="" value="FIT" labelposition="left" readonly="true">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:textfield>

                        <s:textfield label="Reason" name="perDet.commonReason" required=""  maxLength="100" size="80"  labelposition="left" readonly="true">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{8}" />
                        </s:textfield>

                    </table>
                    <hr>
                    <table border="0" cellpadding="4" cellspacing="0" align="center">


<s:submit   value="<<< Go to Personal Detail"  align="left" action="goToPersonalDetail" method="goToPerDetail">
                            <s:param name="labelcolspan" value="%{1}" />
                            <s:param name="inputcolspan" value="%{3}" />
                        </s:submit>
                        <s:submit   value="Save Step 2"  align="left" action="SaveStep2" method="saveStep2">  
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

    </body>
</html>
