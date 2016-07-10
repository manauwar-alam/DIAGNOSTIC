/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manauwar.dcms.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.manauwar.dcms.pojo.hibernate.PersonalDetail;
import com.manauwar.dcms.pojo.hibernate.Users;
import com.manauwar.dcms.utils.HibernateUtil;

/**
 *
 * @author Mohd.Manauwar
 */
public class UsersDAO {
    
    
     public void save(Users user) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(user);
            tx.commit();
        } catch (RuntimeException re) {
            if (user != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void update(Users user) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(user);
            tx.commit();
        } catch (RuntimeException re) {
            if (user != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }

    public void delete(Users user) {
        Session session = HibernateUtil.getSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.delete(user);
            tx.commit();
        } catch (RuntimeException re) {
            if (user != null) {
                tx.rollback();
            }
            throw re;
        } finally {
            session.close();
        }
    }
    
    
    public Users findByUserId(Integer userId) {
        Session session = HibernateUtil.getSession();
        try {
            session.beginTransaction();
            Users users  = (Users) session.load(PersonalDetail.class , userId);
            
            return users;
        }
        finally {
            session.close();
            }
    }
    
    
    
    public Users findByUserName(String userName) {
        Session session = HibernateUtil.getSession();
        try {
            session.beginTransaction();
            List<Users> list  = session.createQuery("select u from Users u where u.userName =:userName").setParameter("userName", userName).list();
            
            return list.get(0);
        }
        finally {
            session.close();
            }
    }
    
    public List<Users> getAllUsers() {
        Session session = HibernateUtil.getSession();
        try {
            session.beginTransaction();
            List<Users> list  = session.createQuery("from Users").list();
            
            return list;
        }
        finally {
            session.close();
            }
    }
    
}
