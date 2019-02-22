/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao.hibernate;

import java.util.List;
import org.mmxbb.bookstore.dao.CategoryDao;
import org.mmxbb.bookstore.model.Category;
import org.springframework.orm.hibernate.HibernateObjectRetrievalFailureException;
import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class CategoryDaoHibernate extends HibernateDaoSupport implements CategoryDao {
	 public void save(Category category) {
	       getHibernateTemplate().save(category);
	    }
	    
    public Category load(Integer id) {
	        
    	Category category;
	        try{
	        	category = (Category)getHibernateTemplate().load(Category.class,id);
	        }catch(HibernateObjectRetrievalFailureException e){
	        	category = null;
	        }
	        return category;
	    }
	  
	    public void update(Category category) {
	        getHibernateTemplate().update(category);
	    }

	    
	    public void delete(Integer id) {
	        getHibernateTemplate().delete(load(id));
	    }

	    
	    
	    public List find(String query){
	        return getHibernateTemplate().find(query);
	    }

	    public List findAll(){
	    
	    	return getHibernateTemplate().find("from Category");
	    }
	    
	
}
