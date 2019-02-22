/*
 * Created on 2006-1-22
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao.hibernate;

import java.util.Date;
import java.util.List;
import org.mmxbb.bookstore.dao.OrderinfoDao;
import org.mmxbb.bookstore.model.Orderinfo;
import org.springframework.orm.hibernate.HibernateObjectRetrievalFailureException;
import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class OrderinfoDaoHibernate extends HibernateDaoSupport implements OrderinfoDao {

	public Orderinfo load(String id){
		Orderinfo orderinfo;
	        try{
	        	orderinfo = (Orderinfo)getHibernateTemplate().load(Orderinfo.class,id);
	        }catch(HibernateObjectRetrievalFailureException e){
	        	orderinfo = null;
	        }
	        return orderinfo;	
	
	}
	
   
    public void save(Orderinfo orderinfo){
	    orderinfo.setIsdeliver(new Integer(0));
	    orderinfo.setIspay(new Integer(0));
	    orderinfo.setSubmittime(new Date());
	    
    	getHibernateTemplate().save(orderinfo);
    }
    public void update(Orderinfo orderinfo){
        getHibernateTemplate().update(orderinfo);
    }
    public void delete(String id){
        getHibernateTemplate().delete(load(id));
    }
    public List find(String query){
        return getHibernateTemplate().find(query);
    }
    public List findAll(){
	    
    	return getHibernateTemplate().find("from Orderinfo o");
    }
    
}
