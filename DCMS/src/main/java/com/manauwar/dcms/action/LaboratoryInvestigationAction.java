/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manauwar.dcms.action;

import com.manauwar.dcms.dao.LaboratoryInvestigationDAO;
import com.manauwar.dcms.dao.MedicalExaminationDAO;
import com.manauwar.dcms.dao.PersonalDetailDAO;
import com.manauwar.dcms.pojo.hibernate.LaboratoryInvestigation;
import com.manauwar.dcms.pojo.hibernate.MedicalExamination;
import com.manauwar.dcms.pojo.hibernate.PersonalDetail;
import com.manauwar.dcms.utils.DevelopmentSupport;


/**
 *
 * @author wml4
 */
public class LaboratoryInvestigationAction extends DevelopmentSupport {
    
    private String errorMessage;
    private String message;
    private PersonalDetail perDet = new PersonalDetail();
    private PersonalDetailDAO perDetDao = new PersonalDetailDAO();
    private LaboratoryInvestigation labInvest = new LaboratoryInvestigation();
    private LaboratoryInvestigationDAO labInvestDao = new LaboratoryInvestigationDAO();
    private MedicalExamination medEx = new MedicalExamination();
    private MedicalExaminationDAO medExDao = new MedicalExaminationDAO();

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

    public PersonalDetail getPerDet() {
        return perDet;
    }

    public void setPerDet(PersonalDetail perDet) {
        this.perDet = perDet;
    }

    public LaboratoryInvestigation getLabInvest() {
        return labInvest;
    }

    public void setLabInvest(LaboratoryInvestigation labInvest) {
        this.labInvest = labInvest;
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
    
    public String saveStep3() throws Exception 
    {
        try {
            if(labInvest.getLaboratoryInvestigationId() == null)
            {
                
              perDet =  perDetDao.findByPerDetId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
              labInvest.setPersonalDetail(perDet);
                labInvestDao.save(labInvest);
                message = "Lab Investigation Saved Successfully, You can Create new entry ";
               
            }
            else
            {
                perDet =  perDetDao.findByPerDetId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
                labInvest.setPersonalDetail(perDet);
                LaboratoryInvestigation labInvest1;
                
                labInvest1 = labInvest;
               labInvestDao.update(labInvest1);
                message = "Medical Examination Updated Successfully ";
            }
            return SUCCESS;
        }catch(Exception e){
            errorMessage = "Exception in saveStep3 method -> LaboratoryInvestigation " + e.getMessage() +" cause is "+ e.getCause();
            return ERROR;
        }
        
    }
    
    
            
            public String goToMedExam() throws Exception 
    {
        try {
            medEx = medExDao.findByPerDetId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
            return SUCCESS;
        }catch(Exception e){
            errorMessage = "Exception in saveStep3 method -> LaboratoryInvestigation " + e.getMessage() +" cause is "+ e.getCause();
            return ERROR;
        }
        
    }
}