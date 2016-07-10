

package com.manauwar.dcms.utils;

//import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Session;

public class HibernateUtil {

    private static   SessionFactory sessionFactory;

    public static void createSessionFactory() {
        sessionFactory = new Configuration().configure().buildSessionFactory();
    }

    public static Session getSession() {
//        return new Configuration().configure().buildSessionFactory().openSession();
        return sessionFactory.openSession();
    }

}

