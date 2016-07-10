/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manauwar.dcms.action;

import java.util.Calendar;
import com.manauwar.dcms.pojo.hibernate.PersonalDetail;
import com.manauwar.dcms.utils.DevelopmentSupport;
import com.manauwar.dcms.dao.PersonalDetailDAO;
import java.util.ArrayList;
import java.util.List;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class MainAction extends DevelopmentSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PersonalDetailDAO perDetDao = new PersonalDetailDAO();
    private PersonalDetail perDet = new PersonalDetail();
    private String certificateNumber;
    private String errorMessage;
    private String message;
    private List<PersonalDetail> perDetList = new ArrayList<PersonalDetail>();
    private String passportNo;
    private String CandidateName;
    static String dataSourceURL = null;

    public PersonalDetail getPerDet() {
        return perDet;
    }

    public void setPerDet(PersonalDetail perDet) {
        this.perDet = perDet;
    }

    public String getCertificateNumber() {
        return certificateNumber;
    }

    public void setCertificateNumber(String certificateNumber) {
        this.certificateNumber = certificateNumber;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<PersonalDetail> getPerDetList() {
        return perDetList;
    }

    public void setPerDetList(List<PersonalDetail> perDetList) {
        this.perDetList = perDetList;
    }

    public String getPassportNo() {
        return passportNo;
    }

    public void setPassportNo(String passportNo) {
        this.passportNo = passportNo;
    }

    public String getCandidateName() {
        return CandidateName;
    }

    public void setCandidateName(String CandidateName) {
        this.CandidateName = CandidateName;
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    @SkipValidation
    public String createNewEntry() throws Exception {
        try {
            createCertificateNo(perDetDao.findLastCertNo());
            perDet.setCertificateNo(certificateNumber);
            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in createNewEntry method -> PersonalDetailAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }

    }

    public String createCertificateNo(Integer certNo) {
        if (certNo == 0) {
            certificateNumber = Calendar.getInstance().get(Calendar.YEAR) + "0000";
            Integer cno = Integer.parseInt(certificateNumber) + certNo + 1;
            certificateNumber = cno.toString();
        } else {
            certificateNumber = certNo + 1 + "";
        }
        return certificateNumber;
    }

    @SkipValidation
    public String goToSearchPassPage() throws Exception {
        try {

            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in goToSearchPassPage method -> MainAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }

    }

    @SkipValidation
    public String goToSearchCandiPage() throws Exception {
        try {

            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in goToSearchCandiPage method -> MainAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }

    }

    @SkipValidation
    public String searchByPassportNo() throws Exception {
        try {

            perDetList = perDetDao.getListByPassportNo(getPassportNo());
            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in searchByPassportNo method -> PersonalDetailAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }

    }

    @SkipValidation
    public String searchByCandidateName() throws Exception {
        try {

            perDetList = perDetDao.getListByCandiName(getCandidateName());
            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in searchByCandidateName method -> PersonalDetailAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }

    }

    @SkipValidation
    public String goToMainPage() throws Exception {
        try {

            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in goToMainPage method -> MainAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }

    }
    
    
}