package com.manauwar.dcms.pojo.hibernate;
// Generated 16 Apr, 2014 12:57:57 PM by Hibernate Tools 3.2.1.GA



/**
 * MedicalExamination generated by hbm2java
 */
public class MedicalExamination  implements java.io.Serializable {


     private Integer medicalExaminationId;
     private PersonalDetail personalDetail;
     private String visionRightEye;
     private String visionLeftEye;
     private String otherRightEye;
     private String otherLeftEye;
     private String rightEar;
     private String leftEar;
     private String hernia;
     private String varicoseVeins;
     private String extremeties;
     private String skin;
     private String hydrocele;
     private String bloodPressure;
     private String heart;
     private String lungs;
     private String abdomen;
     private String vrdl;
     private String tpha;

    public MedicalExamination() {
    }

	
    public MedicalExamination(PersonalDetail personalDetail, String visionRightEye, String visionLeftEye, String otherRightEye, String otherLeftEye, String rightEar, String leftEar, String hernia, String varicoseVeins, String extremeties, String skin, String hydrocele, String bloodPressure, String heart, String lungs, String abdomen, String vrdl) {
        this.personalDetail = personalDetail;
        this.visionRightEye = visionRightEye;
        this.visionLeftEye = visionLeftEye;
        this.otherRightEye = otherRightEye;
        this.otherLeftEye = otherLeftEye;
        this.rightEar = rightEar;
        this.leftEar = leftEar;
        this.hernia = hernia;
        this.varicoseVeins = varicoseVeins;
        this.extremeties = extremeties;
        this.skin = skin;
        this.hydrocele = hydrocele;
        this.bloodPressure = bloodPressure;
        this.heart = heart;
        this.lungs = lungs;
        this.abdomen = abdomen;
        this.vrdl = vrdl;
    }
    public MedicalExamination(PersonalDetail personalDetail, String visionRightEye, String visionLeftEye, String otherRightEye, String otherLeftEye, String rightEar, String leftEar, String hernia, String varicoseVeins, String extremeties, String skin, String hydrocele, String bloodPressure, String heart, String lungs, String abdomen, String vrdl, String tpha) {
       this.personalDetail = personalDetail;
       this.visionRightEye = visionRightEye;
       this.visionLeftEye = visionLeftEye;
       this.otherRightEye = otherRightEye;
       this.otherLeftEye = otherLeftEye;
       this.rightEar = rightEar;
       this.leftEar = leftEar;
       this.hernia = hernia;
       this.varicoseVeins = varicoseVeins;
       this.extremeties = extremeties;
       this.skin = skin;
       this.hydrocele = hydrocele;
       this.bloodPressure = bloodPressure;
       this.heart = heart;
       this.lungs = lungs;
       this.abdomen = abdomen;
       this.vrdl = vrdl;
       this.tpha = tpha;
    }
   
    public Integer getMedicalExaminationId() {
        return this.medicalExaminationId;
    }
    
    public void setMedicalExaminationId(Integer medicalExaminationId) {
        this.medicalExaminationId = medicalExaminationId;
    }
    public PersonalDetail getPersonalDetail() {
        return this.personalDetail;
    }
    
    public void setPersonalDetail(PersonalDetail personalDetail) {
        this.personalDetail = personalDetail;
    }
    public String getVisionRightEye() {
        return this.visionRightEye;
    }
    
    public void setVisionRightEye(String visionRightEye) {
        this.visionRightEye = visionRightEye;
    }
    public String getVisionLeftEye() {
        return this.visionLeftEye;
    }
    
    public void setVisionLeftEye(String visionLeftEye) {
        this.visionLeftEye = visionLeftEye;
    }
    public String getOtherRightEye() {
        return this.otherRightEye;
    }
    
    public void setOtherRightEye(String otherRightEye) {
        this.otherRightEye = otherRightEye;
    }
    public String getOtherLeftEye() {
        return this.otherLeftEye;
    }
    
    public void setOtherLeftEye(String otherLeftEye) {
        this.otherLeftEye = otherLeftEye;
    }
    public String getRightEar() {
        return this.rightEar;
    }
    
    public void setRightEar(String rightEar) {
        this.rightEar = rightEar;
    }
    public String getLeftEar() {
        return this.leftEar;
    }
    
    public void setLeftEar(String leftEar) {
        this.leftEar = leftEar;
    }
    public String getHernia() {
        return this.hernia;
    }
    
    public void setHernia(String hernia) {
        this.hernia = hernia;
    }
    public String getVaricoseVeins() {
        return this.varicoseVeins;
    }
    
    public void setVaricoseVeins(String varicoseVeins) {
        this.varicoseVeins = varicoseVeins;
    }
    public String getExtremeties() {
        return this.extremeties;
    }
    
    public void setExtremeties(String extremeties) {
        this.extremeties = extremeties;
    }
    public String getSkin() {
        return this.skin;
    }
    
    public void setSkin(String skin) {
        this.skin = skin;
    }
    public String getHydrocele() {
        return this.hydrocele;
    }
    
    public void setHydrocele(String hydrocele) {
        this.hydrocele = hydrocele;
    }
    public String getBloodPressure() {
        return this.bloodPressure;
    }
    
    public void setBloodPressure(String bloodPressure) {
        this.bloodPressure = bloodPressure;
    }
    public String getHeart() {
        return this.heart;
    }
    
    public void setHeart(String heart) {
        this.heart = heart;
    }
    public String getLungs() {
        return this.lungs;
    }
    
    public void setLungs(String lungs) {
        this.lungs = lungs;
    }
    public String getAbdomen() {
        return this.abdomen;
    }
    
    public void setAbdomen(String abdomen) {
        this.abdomen = abdomen;
    }
    public String getVrdl() {
        return this.vrdl;
    }
    
    public void setVrdl(String vrdl) {
        this.vrdl = vrdl;
    }
    public String getTpha() {
        return this.tpha;
    }
    
    public void setTpha(String tpha) {
        this.tpha = tpha;
    }




}


