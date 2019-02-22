/*
 * Created on 2006-1-25
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao;

import java.util.List;

import org.mmxbb.bookstore.model.Orderdetail;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface OrderdetailDao {
	public Orderdetail load(Integer id);
    
    public void save(Orderdetail orderdetail);
    
    public void update(Orderdetail orderdetail);
    
    public void delete(Integer id);
    
    public List find(String query);
    
    public List findAll();
    public List findSpec(String id);
}
