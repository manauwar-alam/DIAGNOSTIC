
package com.manauwar.dcms.action;


import com.manauwar.dcms.dao.*;
import com.manauwar.dcms.pojo.hibernate.MedicalExamination;
import com.manauwar.dcms.pojo.hibernate.PersonalDetail;
import com.manauwar.dcms.utils.DevelopmentSupport;

import java.util.ArrayList;
import java.util.List;
import org.apache.struts2.interceptor.validation.SkipValidation;

public class PersonalDetailAction extends DevelopmentSupport {
    
    
    private PersonalDetail perDet = new PersonalDetail();
    private PersonalDetailDAO perDetDao = new PersonalDetailDAO();
    private UsersDAO userDao = new UsersDAO();
    private String certificateNumber;
    private String errorMessage;
    private String message;
    private List<PersonalDetail> passportNoList = new ArrayList<PersonalDetail>();
    private Integer PERDETID;
    private MedicalExamination medEx = new MedicalExamination();
    private MedicalExaminationDAO medExDao = new MedicalExaminationDAO();
    
     
    
    

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

    public void setErrorMesage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<PersonalDetail> getPassportNoList() {
        return passportNoList;
    }

    public void setPassportNoList(List<PersonalDetail> passportNoList) {
        this.passportNoList = passportNoList;
    }

    public Integer getPERDETID() {
        return PERDETID;
    }

    public void setPERDETID(Integer PERDETID) {
        this.PERDETID = PERDETID;
    }

    public MedicalExamination getMedEx() {
        return medEx;
    }

    public void setMedEx(MedicalExamination medEx) {
        this.medEx = medEx;
    }

    
    
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
    
    
    public String saveStep1() throws Exception 
    {
        try {
            if(perDet.getPersonalDetailId()== null)
            {
              Boolean bool  = perDetDao.findByPassportNo(perDet.getPassportNo());
               if(bool)
               {
                   addFieldError("perDet.passportNo", "This Passport Number already exist enter another");
                    message = "Please check the error regarding Passport Number ";
                    return INPUT;
               }
               else {
                perDet.setUsers(userDao.findByUserName(getSession().getAttribute("username").toString()));
               
                perDetDao.save(perDet);
                getSession().setAttribute("perDetId", perDet.getPersonalDetailId());
               
                message = "Personal Detail saved successfully ";
                   return SUCCESS;
               }
            }
            else
            {
                PersonalDetail perDet1 = new PersonalDetail();
                perDet.setUsers(userDao.findByUserName(getSession().getAttribute("username").toString()));
               
                perDet1 = perDet;
                
                perDetDao.update(perDet1);
                medEx = medExDao.findByPerDetId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
                message = "Personal Detail Updated successfully ";
                return SUCCESS;
            }

        }catch(Exception e){
            errorMessage = "Exception in saveStep1 method -> PersonalDetailAction " + e.getMessage() +" cause is "+ e.getCause();
            return ERROR;
        }
        
    }
    @SkipValidation
    public String viewPerDet() throws Exception {
        try {

            perDet = perDetDao.findByPerDetId(getPERDETID());
            getSession().setAttribute("perDetId", getPERDETID());
            
            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in viewPerDet method -> PersonalDetailAction" + e.getMessage() + " Reported Cause is: " + e.getCause();
            return ERROR;
        }
    }
   
    
    @SkipValidation
    public String goToMainPage() throws Exception {
        try {

            
            
            return SUCCESS;
        } catch (Exception e) {
            errorMessage = "Exception in goToMainPage method -> PersonalDetailAction" + e.getMessage() + " Reported Cause is: " + e.getCause();
            return ERROR;
        }
    }
}
