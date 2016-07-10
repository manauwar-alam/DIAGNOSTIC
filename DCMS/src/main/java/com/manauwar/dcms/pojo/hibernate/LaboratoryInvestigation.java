package com.manauwar.dcms.pojo.hibernate;
// Generated 16 Apr, 2014 12:57:57 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * LaboratoryInvestigation generated by hbm2java
 */
public class LaboratoryInvestigation  implements java.io.Serializable {


     private Integer laboratoryInvestigationId;
     private PersonalDetail personalDetail;
     private String urineSugar;
     private String urineAlbumn;
     private String urineBilharziasis;
     private String urineOthers;
     private String stoolHelminthes;
     private String stoolBilharziasis;
     private String stoolSalmonela;
     private String stoolShigella;
     private String stoolVcholera;
     private String stoolOthers;
     private String bloodHemoglobin;
     private String bloodMalariaFilm;
     private String serologyHiv;
     private String serologyHbag;
     private String serologyAntiHcv;
     private String serologyLft;
     private String serologyUrea;
     private String serologyCreatinine;
     private String serologyBloodSugarR;
     private String serologyBloodGroup;
     private char pregnencyTest;
     private Date lmpdate;
     private String chestXray;

    public LaboratoryInvestigation() {
    }

    public LaboratoryInvestigation(PersonalDetail personalDetail, String urineSugar, String urineAlbumn, String urineBilharziasis, String urineOthers, String stoolHelminthes, String stoolBilharziasis, String stoolSalmonela, String stoolShigella, String stoolVcholera, String stoolOthers, String bloodHemoglobin, String bloodMalariaFilm, String serologyHiv, String serologyHbag, String serologyAntiHcv, String serologyLft, String serologyUrea, String serologyCreatinine, String serologyBloodSugarR, String serologyBloodGroup, char pregnencyTest, Date lmpdate, String chestXray) {
       this.personalDetail = personalDetail;
       this.urineSugar = urineSugar;
       this.urineAlbumn = urineAlbumn;
       this.urineBilharziasis = urineBilharziasis;
       this.urineOthers = urineOthers;
       this.stoolHelminthes = stoolHelminthes;
       this.stoolBilharziasis = stoolBilharziasis;
       this.stoolSalmonela = stoolSalmonela;
       this.stoolShigella = stoolShigella;
       this.stoolVcholera = stoolVcholera;
       this.stoolOthers = stoolOthers;
       this.bloodHemoglobin = bloodHemoglobin;
       this.bloodMalariaFilm = bloodMalariaFilm;
       this.serologyHiv = serologyHiv;
       this.serologyHbag = serologyHbag;
       this.serologyAntiHcv = serologyAntiHcv;
       this.serologyLft = serologyLft;
       this.serologyUrea = serologyUrea;
       this.serologyCreatinine = serologyCreatinine;
       this.serologyBloodSugarR = serologyBloodSugarR;
       this.serologyBloodGroup = serologyBloodGroup;
       this.pregnencyTest = pregnencyTest;
       this.lmpdate = lmpdate;
       this.chestXray = chestXray;
    }
   
    public Integer getLaboratoryInvestigationId() {
        return this.laboratoryInvestigationId;
    }
    
    public void setLaboratoryInvestigationId(Integer laboratoryInvestigationId) {
        this.laboratoryInvestigationId = laboratoryInvestigationId;
    }
    public PersonalDetail getPersonalDetail() {
        return this.personalDetail;
    }
    
    public void setPersonalDetail(PersonalDetail personalDetail) {
        this.personalDetail = personalDetail;
    }
    public String getUrineSugar() {
        return this.urineSugar;
    }
    
    public void setUrineSugar(String urineSugar) {
        this.urineSugar = urineSugar;
    }
    public String getUrineAlbumn() {
        return this.urineAlbumn;
    }
    
    public void setUrineAlbumn(String urineAlbumn) {
        this.urineAlbumn = urineAlbumn;
    }
    public String getUrineBilharziasis() {
        return this.urineBilharziasis;
    }
    
    public void setUrineBilharziasis(String urineBilharziasis) {
        this.urineBilharziasis = urineBilharziasis;
    }
    public String getUrineOthers() {
        return this.urineOthers;
    }
    
    public void setUrineOthers(String urineOthers) {
        this.urineOthers = urineOthers;
    }
    public String getStoolHelminthes() {
        return this.stoolHelminthes;
    }
    
    public void setStoolHelminthes(String stoolHelminthes) {
        this.stoolHelminthes = stoolHelminthes;
    }
    public String getStoolBilharziasis() {
        return this.stoolBilharziasis;
    }
    
    public void setStoolBilharziasis(String stoolBilharziasis) {
        this.stoolBilharziasis = stoolBilharziasis;
    }
    public String getStoolSalmonela() {
        return this.stoolSalmonela;
    }
    
    public void setStoolSalmonela(String stoolSalmonela) {
        this.stoolSalmonela = stoolSalmonela;
    }
    public String getStoolShigella() {
        return this.stoolShigella;
    }
    
    public void setStoolShigella(String stoolShigella) {
        this.stoolShigella = stoolShigella;
    }
    public String getStoolVcholera() {
        return this.stoolVcholera;
    }
    
    public void setStoolVcholera(String stoolVcholera) {
        this.stoolVcholera = stoolVcholera;
    }
    public String getStoolOthers() {
        return this.stoolOthers;
    }
    
    public void setStoolOthers(String stoolOthers) {
        this.stoolOthers = stoolOthers;
    }
    public String getBloodHemoglobin() {
        return this.bloodHemoglobin;
    }
    
    public void setBloodHemoglobin(String bloodHemoglobin) {
        this.bloodHemoglobin = bloodHemoglobin;
    }
    public String getBloodMalariaFilm() {
        return this.bloodMalariaFilm;
    }
    
    public void setBloodMalariaFilm(String bloodMalariaFilm) {
        this.bloodMalariaFilm = bloodMalariaFilm;
    }
    public String getSerologyHiv() {
        return this.serologyHiv;
    }
    
    public void setSerologyHiv(String serologyHiv) {
        this.serologyHiv = serologyHiv;
    }
    public String getSerologyHbag() {
        return this.serologyHbag;
    }
    
    public void setSerologyHbag(String serologyHbag) {
        this.serologyHbag = serologyHbag;
    }
    public String getSerologyAntiHcv() {
        return this.serologyAntiHcv;
    }
    
    public void setSerologyAntiHcv(String serologyAntiHcv) {
        this.serologyAntiHcv = serologyAntiHcv;
    }
    public String getSerologyLft() {
        return this.serologyLft;
    }
    
    public void setSerologyLft(String serologyLft) {
        this.serologyLft = serologyLft;
    }
    public String getSerologyUrea() {
        return this.serologyUrea;
    }
    
    public void setSerologyUrea(String serologyUrea) {
        this.serologyUrea = serologyUrea;
    }
    public String getSerologyCreatinine() {
        return this.serologyCreatinine;
    }
    
    public void setSerologyCreatinine(String serologyCreatinine) {
        this.serologyCreatinine = serologyCreatinine;
    }
    public String getSerologyBloodSugarR() {
        return this.serologyBloodSugarR;
    }
    
    public void setSerologyBloodSugarR(String serologyBloodSugarR) {
        this.serologyBloodSugarR = serologyBloodSugarR;
    }
    public String getSerologyBloodGroup() {
        return this.serologyBloodGroup;
    }
    
    public void setSerologyBloodGroup(String serologyBloodGroup) {
        this.serologyBloodGroup = serologyBloodGroup;
    }
    public char getPregnencyTest() {
        return this.pregnencyTest;
    }
    
    public void setPregnencyTest(char pregnencyTest) {
        this.pregnencyTest = pregnencyTest;
    }
    public Date getLmpdate() {
        return this.lmpdate;
    }
    
    public void setLmpdate(Date lmpdate) {
        this.lmpdate = lmpdate;
    }
    public String getChestXray() {
        return this.chestXray;
    }
    
    public void setChestXray(String chestXray) {
        this.chestXray = chestXray;
    }




}


