package com.shoping.mavenproject7.Dao;

import com.shoping.mavenproject7.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query; 

public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }

    // Get user by email and password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        Session session = null; 
        try {
            session = this.factory.openSession(); // Open session
            String hql = "FROM User WHERE userEmail = :e AND userPassword = :p"; 
            Query<User> q = session.createQuery(hql, User.class); 
            q.setParameter("e", email);
            q.setParameter("p", password);
            user = q.uniqueResult(); 
            
        } catch (Exception e) {
            e.printStackTrace(); 
        } finally {
            if (session != null) {
                session.close(); 
            }
        }
        return user; 
    }
}
