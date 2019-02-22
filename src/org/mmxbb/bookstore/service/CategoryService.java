/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service;

import java.util.List;

import org.mmxbb.bookstore.model.Category;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface CategoryService {

	 public List getAllCategory(); 
	    
	 public void updateCategory(Category category);
	    
	 public void deleteCategory(Integer id);
	    
	 public void createCategory(Category category);
	    
	public Category getCategory(Integer id);
}
