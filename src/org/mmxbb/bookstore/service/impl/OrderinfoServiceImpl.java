/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service.impl;

import java.util.List;

import org.mmxbb.bookstore.dao.OrderinfoDao;
import org.mmxbb.bookstore.model.Orderinfo;
import org.mmxbb.bookstore.service.OrderinfoService;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class OrderinfoServiceImpl implements OrderinfoService {
	  
			
	
	   private OrderinfoDao orderinfoDao;
    
	   //set Dao   在业务逻辑实现的地方要set一下用到的dao
	   public void setOrderinfoDao(OrderinfoDao orderinfoDao){
	        this.orderinfoDao = orderinfoDao;
	    }
		    
	   public List getAllOrderinfo() {
		       return orderinfoDao.findAll();
		
	   }
	   
	   
       public List getSpecOrderinfo(String query){
       		   return orderinfoDao.find(query);
       }
	
	    public Orderinfo getOrderinfo(String id) {
		        return orderinfoDao.load(id);
		    }
		    
	    public void updateOrderinfo(Orderinfo orderinfo) {
	        orderinfo.setIsdeliver(new Integer(1));
	        orderinfo.setIspay(new Integer(1));
	    	orderinfoDao.update(orderinfo);
		    }
        public void deleteOrderinfo(String id) {
        	orderinfoDao.delete(id);
            }
        public void createOrderinfo(Orderinfo orderinfo) {
        	orderinfoDao.save(orderinfo);
		    }
		
	 
		 
	}
