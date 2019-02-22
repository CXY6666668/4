/*
 * Created on 2006-1-22
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao.hibernate;

import java.util.List;

import net.sf.hibernate.Hibernate;

import org.mmxbb.bookstore.dao.OrderdetailDao;
import org.mmxbb.bookstore.model.Orderdetail;
import org.springframework.orm.hibernate.HibernateObjectRetrievalFailureException;
import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class OrderdetailDaoHibernate extends HibernateDaoSupport implements OrderdetailDao {

	
	public Orderdetail load(Integer id){
		Orderdetail orderdetail;
	        try{
	        	orderdetail = (Orderdetail)getHibernateTemplate().load(Orderdetail.class,id);
	        }catch(HibernateObjectRetrievalFailureException e){
	        	orderdetail = null;
	        }
	        return orderdetail;	
	
	}
    
    public void save(Orderdetail orderdetail){
	       
    	getHibernateTemplate().save(orderdetail);
    }
    public void update(Orderdetail orderdetail){
        getHibernateTemplate().update(orderdetail);
    }
    public void delete(Integer id){
        getHibernateTemplate().delete(load(id));
    }
    public List find(String query){
        return getHibernateTemplate().find(query);
    }
    public List findAll(){
	    
    	return getHibernateTemplate().find("from Orderdetail o");
    }
    public List findSpec(String id){
        return getHibernateTemplate().find("from Orderdetail o where o.orderid=?",id,Hibernate.STRING);
    }
    
}
