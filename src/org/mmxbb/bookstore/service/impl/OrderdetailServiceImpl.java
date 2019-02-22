/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service.impl;

import java.util.List;

import org.mmxbb.bookstore.dao.OrderdetailDao;
import org.mmxbb.bookstore.model.Orderdetail;
import org.mmxbb.bookstore.service.OrderdetailService;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class OrderdetailServiceImpl implements OrderdetailService {
	  
			
	
	   private OrderdetailDao orderdetailDao;
    
	   //set Dao   在业务逻辑实现的地方要set一下用到的dao
	   public void setOrderdetailDao(OrderdetailDao orderdetailDao){
	        this.orderdetailDao = orderdetailDao;
	    }
		    
	   public List getAllOrderdetail() {
		       return orderdetailDao.findAll();
		    }
	   
       public List getSpecOrderdetail(String query){
       		   return orderdetailDao.find(query);
       }
	
	    public Orderdetail getOrderdetail(Integer id) {
		        return orderdetailDao.load(id);
		    }
		    
	    public void updateOrderdetail(Orderdetail orderdetail) {
	      
	    	orderdetailDao.update(orderdetail);
		    }
        public void deleteOrderdetail(Integer id) {
        	    orderdetailDao.delete(id);
            }
        public void createOrderdetail(Orderdetail orderdetail) {
		   	orderdetailDao.save(orderdetail);
		    }
		
        public List getSpec(String id){
    		   return orderdetailDao.findSpec(id);
    }
		 
	}
