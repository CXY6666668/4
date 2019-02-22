/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao;

import java.util.List;

import org.mmxbb.bookstore.model.Adminuser;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface AdminuserDao {
    
	public Adminuser load(String adminuser);
    
    public void save(Adminuser adminuser);
    
    public void update(Adminuser adminuser);
    
    public void delete(String adminuser);
    
    public List find(String query);
    
    public List findAll();
    
    public Adminuser findLoginAdminuser(String adminuser,String adminpass);
  
}
