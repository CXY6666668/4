/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao.hibernate;

import java.util.List;

import net.sf.hibernate.Hibernate;
import net.sf.hibernate.type.Type;

import org.mmxbb.bookstore.dao.UserDao;
import org.mmxbb.bookstore.model.User;
import org.springframework.orm.hibernate.HibernateObjectRetrievalFailureException;
import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class UserDaoHibernate extends HibernateDaoSupport implements UserDao {
	 public void save(User user) {
	       getHibernateTemplate().save(user);
	    }
	    
   public User load(Integer id) {
	        
	        User user;
	        try{
	            user = (User)getHibernateTemplate().load(User.class,id);
	        }catch(HibernateObjectRetrievalFailureException e){
	            user = null;
	        }
	        return user;
	    }
	  
	    public void update(User user) {
	        getHibernateTemplate().update(user);
	    }

	  
	    public void delete(Integer id) {
	        getHibernateTemplate().delete(load(id));
	    }

	    
	    
	    public List find(String query){
	        return getHibernateTemplate().find(query);
	    }

	    public List findAll(){
	    
	    	return getHibernateTemplate().find("from User u order by u.id");
	    }
	    
	 
	    public User findLoginUser(String loginname,String password){
	    		    	
	    	String[] args=new String[]{loginname,password};
	    	Type[] types=new Type[]{Hibernate.STRING,Hibernate.STRING,};
	    	List l=getHibernateTemplate().find("from User u where u.loginname=? and u.password=?",args,types);
	    	
	    	if(l.size()==1){
	    	return (User)l.get(0);
	    	}
	    	else return null;
	   
	    }
	    
	    public boolean isUser(String loginname){
	     	List l=getHibernateTemplate().find("from User u where u.loginname=?",loginname,Hibernate.STRING);
	        if(l.size()==0){
	        return false;	
	        }else return true;
	    }
}
