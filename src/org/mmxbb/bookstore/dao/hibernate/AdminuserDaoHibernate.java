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

import org.mmxbb.bookstore.dao.AdminuserDao;
import org.mmxbb.bookstore.model.Adminuser;
import org.springframework.orm.hibernate.HibernateObjectRetrievalFailureException;
import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AdminuserDaoHibernate extends HibernateDaoSupport implements AdminuserDao {
	 public void save(Adminuser adminuser) {
	       getHibernateTemplate().save(adminuser);
	    }
	    
   public Adminuser load(String Adminuser) {
	        
   	      Adminuser adminuser;
	        try{
	        	adminuser = (Adminuser)getHibernateTemplate().load(Adminuser.class,Adminuser);
	        }catch(HibernateObjectRetrievalFailureException e){
	        	adminuser = null;
	        }
	        return adminuser;
	    }
	  
	    public void update(Adminuser adminuser) {
	        getHibernateTemplate().update(adminuser);
	    }

	 
	    public void delete(String adminuser) {
	        getHibernateTemplate().delete(load(adminuser));
	    }

	    
	    
	    public List find(String query){
	        return getHibernateTemplate().find(query);
	    }

	    public List findAll(){
	    
	    	return getHibernateTemplate().find("from Adminuser");
	    }
	    
	 
	    public Adminuser findLoginAdminuser(String adminuser,String adminpass){
	    	
	    	String[] args=new String[]{adminuser,adminpass};
	    	Type[] types=new Type[]{Hibernate.STRING,Hibernate.STRING,};
	    	
	    	
	    	List l=getHibernateTemplate().find("from Adminuser a where a.adminuser=? and a.adminpass=?",args,types);
	    	if(l.size()==1){
	    	return (Adminuser)l.get(0);
	    	}
	    	else return null;
	   
	    }
}
