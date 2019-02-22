/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service;

import java.util.List;

import org.mmxbb.bookstore.model.User;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface UserService {

	 public List getAllUsers(); 
	    
	 public User getUser(Integer id);
	    
	 public void updateUser(User user);
	    
	 public void deleteUser(Integer id);
	    
	 public void createUser(User user);
	    
	 public User loginUser(User user);
	 
	 public boolean isUser(User user);
}
