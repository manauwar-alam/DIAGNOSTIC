<%-- 
    Document   : LaboratoryInvestigation
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
        <title>Laboratory Investigation</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/lifecare.css" rel="stylesheet" type="text/css" >
        <meta HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=UTF-8">
        <s:head />
        <sx:head />
    </head>
    <body class="oneColElsLtHdr">
        <div id="container"> 

            <s:actionerror />
            <s:bean name="java.util.HashMap" id="qTableLayout">
                <s:param name="tablecolspan" value="%{8}" />
            </s:bean>
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">LABORATORY INVESTIGATION</p>

            </div>
            <p align="center"  style="background-color: #ffffff">STEP 3 OF 3 (final)</p>
            <div>
                <div id ="mainContent">
                    <p align="center"  style="background-color: #009900;color: #ffffff"><s:property value="message"/></p>
                    <s:include value="header.jsp"/>
                    <s:form name="frmLabInvest" theme="qxhtml" validate = "true"> 
                        <s:hidden name="labInvest.laboratoryInvestigationId"/>

                        <hr>
                        <table border="0" cellpadding="4" cellspacing="0" align="center">


                            <s:textfield label="Certificate No" name="perDet.certificateNo" required="true"  maxLength="100" size=""  labelposition="left" readonly="true">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>
                            <s:label value="............." cssClass="labelDot"/>
                            <s:textfield label="Ref No" name="perDet.referenceNo" required="true"  maxLength="50" size=""  labelposition="left" readonly="true">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{5}" />
                            </s:textfield>

                            <s:textfield label="Name of Candidate" name="perDet.nameOfCandidate" required="true"  maxLength="100" size="80"  labelposition="left" readonly="true">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:textfield>
                        </table>
                        <br>
                        <hr>
                        <table border="0" cellpadding="4" cellspacing="0" align="center">

                            <s:label value="URINE" cssClass="pageSubHeading">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:label>


                            <s:textfield label="SUGAR" name="labInvest.urineSugar" required="true"  maxLength="30" size="" value="ABSENT" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:textfield label="ALBUMN" name="labInvest.urineAlbumn" required="true"  maxLength="30" size="" value="ABSENT" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:textfield label="BILHARZIASIS" name="labInvest.urineBilharziasis" required="true"  maxLength="30" size="" value="NOT SEEN" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:textfield label="OTHERS" name="labInvest.urineOthers" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:label value="STOOL" cssClass="pageSubHeading">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:label>

                            <s:textfield label="HELMINTHES" name="labInvest.stoolHelminthes" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="BILHARZIASIS" name="labInvest.stoolBilharziasis" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="SALMONELA" name="labInvest.stoolSalmonela" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="SHIGELLA" name="labInvest.stoolShigella" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="V. CHOLERA" name="labInvest.stoolVcholera" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="OTHERS" name="labInvest.stoolOthers" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:label value="BLOOD" cssClass="pageSubHeading">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:label>


                            <s:textfield label="HAEMOGLOBIN in gm%" name="labInvest.bloodHemoglobin" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="MALARIA FILM" name="labInvest.bloodMalariaFilm" required="true"  maxLength="30" size="" value="NOT SEEN" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:label value="SEROLOGY" cssClass="pageSubHeading">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:label>


                            <s:textfield label="HIV" name="labInvest.serologyHiv" required="true"  maxLength="30" size="" value="NON REACTIVE" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="HB$Ag" name="labInvest.serologyHbag" required="true"  maxLength="30" size="" value="NON REACTIVE" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="AntiHCV" name="labInvest.serologyAntiHcv" required="true"  maxLength="30" size="" value="NON REACTIVE" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="L.F.T." name="labInvest.serologyLft" required="true"  maxLength="30" size="" value="NORMAL" labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="UREA" name="labInvest.serologyUrea" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="Creatinine in mg/dl" name="labInvest.serologyCreatinine" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="BLOOD SUGAR (R) in mg/dl" name="labInvest.serologyBloodSugarR" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>

                            <s:textfield label="BLOOD GROUP in mg/dl" name="labInvest.serologyBloodGroup" required="true"  maxLength="30" size=""  labelposition="left">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:textfield>


                            <s:label value="PREGNENCY TEST" cssClass="pageSubHeading">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:label>

                            <s:radio  list = "#{'P':'Positive','N':'Negative'}" required="true" name="labInvest.pregnencyTest" value="'N'">
                                <s:param name = "labelcolspan" value = "%{1}" />
                                <s:param name="inputcolspan" value="%{8}" />
                            </s:radio>
                            <sx:datetimepicker name="labInvest.lmpdate" label="LMP Date" required="true" displayFormat="dd-MMM-yyyy" value="" />


                            <s:textfield label="CHEST X-RAY" name="labInvest.chestXray" required="true"  maxLength="30" size="" value="NORMAL" labelposition="left">
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
                            <s:submit   value="<<< Go to Medical Examination"  align="left" action="goToMedicalExamination" method="goToMedExam">
                                <s:param name="labelcolspan" value="%{1}" />
                                <s:param name="inputcolspan" value="%{3}" />
                            </s:submit>
                            <s:submit   value="Save Step 3"  align="left" action="SaveStep3" method="saveStep3"/>    
                            


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
