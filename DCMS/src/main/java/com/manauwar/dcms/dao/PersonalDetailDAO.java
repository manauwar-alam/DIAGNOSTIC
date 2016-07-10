/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manauwar.dcms.dao;

import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.manauwar.dcms.pojo.hibernate.PersonalDetail;
import com.manauwar.dcms.utils.HibernateUtil;

/**
 *
 * @author Mohd.Manauwar
 */
public class PersonalDetailDAO {

    public void save(PersonalDetail pd) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(pd);
            tx.commit();
        } catch (RuntimeException re) {
            if (pd != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void update(PersonalDetail pd) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(pd);
            tx.commit();
        } catch (RuntimeException re) {
            if (pd != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void delete(PersonalDetail pd) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.delete(pd);
            tx.commit();
        } catch (RuntimeException re) {
            if (pd != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public PersonalDetail findByPerDetId(Integer perDetId) {
        Session session = HibernateUtil.getSession();
        try {
            session.beginTransaction();
            PersonalDetail perDet = (PersonalDetail) session.load(PersonalDetail.class, perDetId);
//            Hibernate.initialize(perDet.getLaboratoryInvestigations());
//            Hibernate.initialize(perDet.getMedicalExaminations());
            Hibernate.initialize(perDet.getUsers());
            return perDet;
        } finally {
            session.close();
        }
    }

//    public PersonalDetail findByPerDetId(Integer perDetId) {
//        Session session = HibernateUtil.getSession();
//        try {
//            session.beginTransaction();
//            List<PersonalDetail> list = session.createQuery("Select u from PersonalDetail  u where u.personalDetailId = :perDetId").setParameter("perDetId", perDetId).list();
//            for (int index = 0; index < list.size(); ++index) {
//                Hibernate.initialize(list.get(index).getLaboratoryInvestigations());
//                Hibernate.initialize(list.get(index).getMedicalExaminations());
//            }
//
//            return list.get(0);
//        } finally {
//            session.close();
//        }
//    }
    public List<PersonalDetail> findByMedExamId(Integer medExamId) {
        Session session = HibernateUtil.getSession();
        try {
            session.beginTransaction();
            List<PersonalDetail> list = session.createQuery("Select u from PersonalDetail  u where u.medicalExaminations.medicalExaminationId = :medExamId").setParameter("medExamId", medExamId).list();
            for (int index = 0; index < list.size(); ++index) {
//                Hibernate.initialize(list.get(index).getLaboratoryInvestigations());
//                Hibernate.initialize(list.get(index).getMedicalExaminations());
                Hibernate.initialize(list.get(index).getUsers());
            }
            return list;
        } finally {
            session.close();
        }
    }

    public Integer findLastCertNo() {
        Session session = HibernateUtil.getSession();

        try {

            session.beginTransaction();
            String list = session.createQuery("Select COALESCE(max(cast(u.certificateNo as int)),0) from PersonalDetail u").uniqueResult().toString();

            Hibernate.initialize(list);

            return Integer.parseInt(list);

        } finally {
            session.close();
        }
    }

    public Boolean findByPassportNo(String passNo) {
        Session session = HibernateUtil.getSession();

        try {

            session.beginTransaction();
            List<PersonalDetail> list = session.createQuery("Select u from PersonalDetail u where u.passportNo = :passNo").setParameter("passNo", passNo).list();
            for (int index = 0; index < list.size(); ++index) {
                Hibernate.initialize(list.get(index).getLaboratoryInvestigations());
                Hibernate.initialize(list.get(index).getMedicalExaminations());
                Hibernate.initialize(list.get(index).getUsers());
            }

            if (list.isEmpty() == true) {
                return false;
            } else {
                return true;
            }

        } finally {
            session.close();
        }
    }
    
    public List<PersonalDetail> getListByPassportNo(String passNo) {
        Session session = HibernateUtil.getSession();

        try {

            session.beginTransaction();
            List<PersonalDetail> list = session.createQuery("Select u from PersonalDetail u where u.passportNo = :passNo").setParameter("passNo", passNo).list();
            for (int index = 0; index < list.size(); ++index) {
                Hibernate.initialize(list.get(index).getLaboratoryInvestigations());
                Hibernate.initialize(list.get(index).getMedicalExaminations());
                Hibernate.initialize(list.get(index).getUsers());
            }

           return list;

        } finally {
            session.close();
        }
    }
    
     public List<PersonalDetail> getListByCandiName(String candName) {
        Session session = HibernateUtil.getSession();

        try {

            session.beginTransaction();
            List<PersonalDetail> list = session.createQuery("Select u from PersonalDetail u where lower(u.nameOfCandidate) LIKE  :candName").setParameter("candName", "%" +candName +"%").list();
            for (int index = 0; index < list.size(); ++index) {
                Hibernate.initialize(list.get(index).getLaboratoryInvestigations());
                Hibernate.initialize(list.get(index).getMedicalExaminations());
                Hibernate.initialize(list.get(index).getUsers());
            }

           return list;

        } finally {
            session.close();
        }
    }
}
