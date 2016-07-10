/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manauwar.dcms.dao;

import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.manauwar.dcms.pojo.hibernate.MedicalExamination;
import com.manauwar.dcms.pojo.hibernate.PersonalDetail;
import com.manauwar.dcms.utils.HibernateUtil;

/**
 *
 * @author Mohammad Manauwar Alam
 */
public class MedicalExaminationDAO {
    
     public void save(MedicalExamination medEx) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(medEx);
            tx.commit();
        } catch (RuntimeException re) {
            if (medEx != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void update(MedicalExamination medEx) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(medEx);
            tx.commit();
        } catch (RuntimeException re) {
            if (medEx != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void delete(MedicalExamination medEx) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.delete(medEx);
            tx.commit();
        } catch (RuntimeException re) {
            if (medEx != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }
    
    
    
     public MedicalExamination findByPerDetId(Integer perDetId) {
        Session session = HibernateUtil.getSession();

        try {

            session.beginTransaction();
            List<MedicalExamination> list = session.createQuery("Select u from MedicalExamination u where u.personalDetail.personalDetailId = :perDetId").setParameter("perDetId", perDetId).list();
            
                Hibernate.initialize(list.get(0).getPersonalDetail());

           return list.get(0);

        } finally {
            session.close();
        }
    }
    
}
