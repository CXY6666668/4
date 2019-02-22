/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao;

import java.util.List;

import org.mmxbb.bookstore.model.User;
/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface UserDao {
    
	public User load(Integer id);
    
    public void save(User user);
    
    public void update(User user);
    
    public void delete(Integer id);
    
    public List find(String query);
    
    public List findAll();
    
    public User findLoginUser(String loginname,String password);
     
    public boolean isUser(String loginname);

}
