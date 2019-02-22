/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service.impl;

import org.mmxbb.bookstore.dao.AdminuserDao;
import org.mmxbb.bookstore.model.Adminuser;
import org.mmxbb.bookstore.service.AdminuserService;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AdminuserServiceImpl implements AdminuserService {
	   private AdminuserDao adminuserDao;
    
	   //set Dao   在业务逻辑实现的地方要set一下用到的dao
	   public void setAdminuserDao(AdminuserDao adminuserDao){
	        this.adminuserDao = adminuserDao;
	    }
		    
	  
		  
	   public Adminuser loginAdminuser(Adminuser adminuser){
		 
	   	     Adminuser u=adminuserDao.findLoginAdminuser(adminuser.getAdminuser(),adminuser.getAdminpass());
		   	    if(u!=null){
		      	   return u; 	
		   	    }else return null;
		   	  }
		 
	}
