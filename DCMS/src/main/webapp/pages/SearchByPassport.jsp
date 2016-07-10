<%-- 
    Document   : PersonalDetail
    Created on : 21 Mar, 2014, 3:21:50 PM
    Author     : Mohd. Manauwar Alam
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<%-- <%@ taglib uri="http://displaytag.sf.net" prefix="display"%> --%>
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
      <%--   <div id="container"> 


            <s:bean name="java.util.HashMap" id="qTableLayout">
                <s:param name="tablecolspan" value="%{8}" />
            </s:bean>
            <div style ="background-color: #215dc6;">
                <p align="center" class="pageHeading" style="color: #ffffff">SEARCH PAGE</p>

            </div>
            <p align="center"  style="background-color: #ffffff">SEARCH BY PASSPORT NUMBER</p>
            <div>
                <div id ="mainContent">
                    <p align="center"  style="background-color: #009900;color: #ffffff"><s:property value="message"/></p>
                    <s:include value="header.jsp"/>

                    <s:form name="frmSearch" theme="qxhtml"> 
                        
                       
                        <hr>
                        <table border="0" cellpadding="4" cellspacing="0" align="center">
                           


                           
                            
                        
                                <s:textfield label="Passport Number" name="passportNo" required=""  maxLength="45" size=""  labelposition="left">
                                    <s:param name="labelcolspan" value="%{1}" />
                                    <s:param name="inputcolspan" value="%{8}" />
                                </s:textfield>

                                
                            <s:submit   value="<< Go To Main Page"  align="left" action="GoToMainPage" method="goToMainPage">
                                    <s:param name="labelcolspan" value="%{1}" />
                                    <s:param name="inputcolspan" value="%{3}" />
                                </s:submit>
                          <s:submit   value="Search"  align="center" action="SearchByPassportNo" method="searchByPassportNo">
                                    <s:param name="labelcolspan" value="%{1}" />
                                    <s:param name="inputcolspan" value="%{3}" />
                                </s:submit>
                        </table>



                    </s:form>
                    <s:if test="perDetList.size() > 0">
                        <hr>
                        <s:label value="CANDIDATE DETAILS ARE " cssClass= "pageSubHeading">
                            <s:param name="labelcolspan" value="%{0}" />
                            <s:param name="inputcolspan" value="%{11}" />
                        </s:label>
                        <hr>
                        <s:form name="frmSearch">


                            <display:table name="perDetList"
                                           excludedParams="*" export="false" cellpadding="8"
                                           cellspacing="2" summary="true" id="doc"
                                           requestURI="SearchByPassportNo.action">
                                <display:column  class="griddata" title="Record"  sortable="true" maxLength="100" headerClass="gridheader">
                                    <c:out> ${doc_rowNum}
                                    </display:column>

                                    <display:column property="passportNo" title="Passport No"
                                                    maxLength="100" headerClass="gridheader"
                                                    class="<s:if test= ${doc_rowNum}%2== 0>even</s:if><s:else>odd</s:else>"
                                                    sortable="false"/>

                                    <display:column property="nameOfCandidate" title="Name of Candidate"
                                                    maxLength="100" headerClass="gridheader"
                                                    class="griddata"
                                                    sortable="false">
                                    </display:column>

                                    <display:column property="postAppliedFor" title="Post Applied for"
                                                    maxLength="100" headerClass="gridheader"
                                                    class="griddata"
                                                    sortable="false">
                                    </display:column>
                                     <display:column property="examDate" title="Exam Date"
                                                    maxLength="100" headerClass="gridheader"
                                                    class="griddata" format="{0,date,dd/MM/yyyy}"
                                                    sortable="false">
                                    </display:column>
                                    <display:column paramId="PERDETID" paramProperty="personalDetailId" 
                                                href="viewPerDet.action" 
                                                headerClass="gridheader" class="griddata" media="html"  title="View" >
                                    VIEW
                                </display:column>

                                </display:table>

                                <br>
                            </s:form>

                        </s:if>
                        <s:else>
                            <s:form name="frmSearch" >
                                <br>
<table  align="center" >
                                <s:label value="NO DATA AVAILABLE FOR THIS SEARCH" >
                                    <s:param name="labelcolspan" value="%{0}" />
                                    <s:param name="inputcolspan" value="%{11}" />
                                </s:label>

</table>
                            </s:form>
                        </s:else>
                        </div>
                        <div style ="background-color: #215dc6;">
                            <p align="center" class="pageHeading" style="color: #ffffff">Developed and Designed by MOHD. MANAUWAR ALAM</p>

                        </div>
                        <p align="center"  style="background-color: #ffffff">manauwar.alam@outlook.com</p>
                </div> 
            </div>  --%>
    </body>
</html>
