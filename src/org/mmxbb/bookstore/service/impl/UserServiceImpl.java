/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service.impl;

import java.util.Date;
import java.util.List;

import org.mmxbb.bookstore.dao.UserDao;
import org.mmxbb.bookstore.model.User;
import org.mmxbb.bookstore.service.UserService;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class UserServiceImpl implements UserService {
	   private UserDao userDao;
    
	   //set UsersDao   在业务逻辑实现的地方要set一下用到的dao
	   public void setUserDao(UserDao userDao){
	        this.userDao = userDao;
	    }
		    
	   public List getAllUsers() {
		       return userDao.findAll();
		    }

	
	    public User getUser(Integer id) {
		        return userDao.load(id);
		    }
		    
	    public void updateUser(User user) {
		    	userDao.update(user);
		    }
        public void deleteUser(Integer id) {
		    	userDao.delete(id);
            }
        public void createUser(User user) {
		  //SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		  //String regdate=sdf.format(new Date());
		    	user.setRegtime(new Date());
		    	userDao.save(user);
		    }
		  
	   public User loginUser(User user){
		 
	   	        User u=userDao.findLoginUser(user.getLoginname(),user.getPassword());
		   	    if(u!=null){
		      	   return u; 	
		   	    }else return null;
		   	  }
	   
	   
	   public boolean isUser(User user){
	    if(userDao.isUser(user.getLoginname()))
	    return true;
	    else return false;
	   	  
	   	
	   }
	   
	}
