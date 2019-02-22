/*
 * Created on 2006-1-22
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao;

import java.util.List;

import org.mmxbb.bookstore.model.Bookinfo;



/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface BookinfoDao {
	public Bookinfo load(Integer id);
    
    public void save(Bookinfo bookinfo);
    
    public void update(Bookinfo bookinfo);
    
    public void delete(Integer id);
    
    public List find(String query);
    
    public List findAll();
    
    public List findSpecBook(Bookinfo bookinfo);
   
}
