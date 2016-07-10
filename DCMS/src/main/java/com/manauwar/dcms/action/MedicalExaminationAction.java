
package com.manauwar.dcms.action;

import com.manauwar.dcms.dao.LaboratoryInvestigationDAO;
import com.manauwar.dcms.dao.MedicalExaminationDAO;
import com.manauwar.dcms.dao.PersonalDetailDAO;
import com.manauwar.dcms.pojo.hibernate.LaboratoryInvestigation;
import com.manauwar.dcms.pojo.hibernate.MedicalExamination;
import com.manauwar.dcms.pojo.hibernate.PersonalDetail;
import com.manauwar.dcms.utils.DevelopmentSupport;


public class MedicalExaminationAction extends DevelopmentSupport {
    
    private MedicalExamination medEx = new MedicalExamination();
    private MedicalExaminationDAO medExDao = new MedicalExaminationDAO();
    private String errorMessage;
    private String message;
    private String certiNo;
    private String refNo;
    private String nameOfCandidate;       
    private PersonalDetail perDet = new PersonalDetail();
    private PersonalDetailDAO perDetDao = new PersonalDetailDAO();
    private LaboratoryInvestigation labInvest = new LaboratoryInvestigation();
    private LaboratoryInvestigationDAO labInvestDao = new LaboratoryInvestigationDAO();

    public PersonalDetail getPerDet() {
        return perDet;
    }

    public void setPerDet(PersonalDetail perDet) {
        this.perDet = perDet;
    }
     
    public MedicalExamination getMedEx() {
        return medEx;
    }

    public void setMedEx(MedicalExamination medEx) {
        this.medEx = medEx;
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

    public String getCertiNo() {
        return certiNo;
    }

    public void setCertiNo(String certiNo) {
        this.certiNo = certiNo;
    }

    public String getNameOfCandidate() {
        return nameOfCandidate;
    }

    public void setNameOfCandidate(String nameOfCandidate) {
        this.nameOfCandidate = nameOfCandidate;
    }

    public String getRefNo() {
        return refNo;
    }

    public void setRefNo(String refNo) {
        this.refNo = refNo;
    }

    public LaboratoryInvestigation getLabInvest() {
        return labInvest;
    }

    public void setLabInvest(LaboratoryInvestigation labInvest) {
        this.labInvest = labInvest;
    }
    
    
    
    
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
    
    public String saveStep2() throws Exception 
    {
        try {
            if(medEx.getMedicalExaminationId() == null)
            {
                
                perDet =  perDetDao.findByPerDetId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
                setCertiNo(perDet.getCertificateNo());
                setRefNo(perDet.getReferenceNo());
                medEx.setPersonalDetail(perDet);
                medExDao.save(medEx);
                message = "Medical Examination Saved Successfully ";
                
               
            }
            else
            {
                perDet =  perDetDao.findByPerDetId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
                medEx.setPersonalDetail(perDet);
                MedicalExamination medEx1;
                medEx1 = medEx;
                medExDao.update(medEx1);
                labInvest = labInvestDao.findByPerDetailId(perDet.getPersonalDetailId());
               
                message = "Medical Examination Updated Successfully ";
            }
            return SUCCESS;
        }catch(Exception e){
            errorMessage = "Exception in saveStep2 method -> MedicalExaminationAction " + e.getMessage() +" cause is "+ e.getCause();
            return ERROR;
        }
        
    }
    
    
            public String goToPerDetail() throws Exception 
    {
        try {
            
                perDet =  perDetDao.findByPerDetId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
            labInvest = labInvestDao.findByPerDetailId(Integer.parseInt(getSession().getAttribute("perDetId").toString()));
               
               
                message = "View Personal Detail Page";
            
            return SUCCESS;
        }catch(Exception e){
            errorMessage = "Exception in saveStep2 method -> MedicalExaminationAction " + e.getMessage() +" cause is "+ e.getCause();
            return ERROR;
        }
        
    }
            
            
                     
}