/*
 * Created on 2006-1-25
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao;

import java.util.List;

import org.mmxbb.bookstore.model.Orderinfo;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface OrderinfoDao {
	public Orderinfo load(String id);
    
    public void save(Orderinfo orderinfo);
    
    public void update(Orderinfo orderinfo);
    
    public void delete(String id);
    
    public List find(String query);
    
    public List findAll();
    
  
    
     
}
