/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service.impl;


import java.util.List;
import org.mmxbb.bookstore.dao.CategoryDao;
import org.mmxbb.bookstore.model.Category;
import org.mmxbb.bookstore.service.CategoryService;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class CategoryServiceImpl implements CategoryService {
	   private CategoryDao categoryDao;
    
	   //set UsersDao   在业务逻辑实现的地方要set一下用到的dao
	   public void setCategoryDao(CategoryDao categoryDao){
	        this.categoryDao = categoryDao;
	    }
		    
	   public List getAllCategory() {
		       return categoryDao.findAll();
		    }

	
	  
	    public void updateCategory(Category category) {
	    	    categoryDao.update(category);
		    }
        public void deleteCategory(Integer id) {
        	    categoryDao.delete(id);
            }
        public void createCategory(Category category) {
		  
        	  categoryDao.save(category);
		    }
		  
	    public Category getCategory(Integer id){
	         return  categoryDao.load(id);
	    	
	    }
		 
	}
