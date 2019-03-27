package com.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dao.UserDao;
import com.evry.User;
import com.uitl.HibernateUtil;

public class UserDaoImpl implements UserDao {
	
	Session ses = HibernateUtil.getSessionFactory().openSession();

	public void saveUser(User user) {

          
          Transaction tx=ses.beginTransaction();
          ses.save(user);
          tx.commit();
		
	}

	public List<User> showUsers() {
		List<User> userList = new ArrayList();
        Query query = ses.createQuery("From User");
        userList = query.list();
        return userList;
	}

	
}
