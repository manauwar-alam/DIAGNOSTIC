/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manauwar.dcms.dao;

import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.manauwar.dcms.pojo.hibernate.LaboratoryInvestigation;
import com.manauwar.dcms.utils.HibernateUtil;

/**
 *
 * @author wml4
 */
public class LaboratoryInvestigationDAO {
    
     public void save(LaboratoryInvestigation labInves) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(labInves);
            tx.commit();
        } catch (RuntimeException re) {
            if (labInves != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void update(LaboratoryInvestigation labInves) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(labInves);
            tx.commit();
        } catch (RuntimeException re) {
            if (labInves != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void delete(LaboratoryInvestigation labInves) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.delete(labInves);
            tx.commit();
        } catch (RuntimeException re) {
            if (labInves != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public LaboratoryInvestigation findByPerDetId(Integer labInId) {
        Session session = HibernateUtil.getSession();
        try {
            session.beginTransaction();
            LaboratoryInvestigation labInv = (LaboratoryInvestigation) session.load(LaboratoryInvestigation.class, labInId);
            
            return labInv;
        } finally {
            session.close();
        }
    }
    
    public LaboratoryInvestigation findByPerDetailId(Integer perDetId) {
        Session session = HibernateUtil.getSession();

        try {

            session.beginTransaction();
            List<LaboratoryInvestigation> list = session.createQuery("Select u from LaboratoryInvestigation u where u.personalDetail.personalDetailId = :perDetId").setParameter("perDetId", perDetId).list();
            
                Hibernate.initialize(list.get(0).getPersonalDetail());

           return list.get(0);

        } finally {
            session.close();
        }
    }
    
}
