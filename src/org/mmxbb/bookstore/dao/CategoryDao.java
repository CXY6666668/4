/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao;

import java.util.List;

import org.mmxbb.bookstore.model.Category;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface CategoryDao {
    
	public Category load(Integer id);
    
    public void save(Category category);
    
    public void update(Category category);
    
    public void delete(Integer id);
    
    public List findAll();
    
   
     

}
