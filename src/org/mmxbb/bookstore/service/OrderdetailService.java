/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service;

import java.util.List;

import org.mmxbb.bookstore.model.Orderdetail;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface OrderdetailService {

	 public List getAllOrderdetail(); 
	 
	 public List getSpecOrderdetail(String query);
	 
	 public Orderdetail getOrderdetail(Integer id);
	    
	 public void updateOrderdetail(Orderdetail orderdetail);
	    
	 public void deleteOrderdetail(Integer id);
	    
	 public void createOrderdetail(Orderdetail orderdetail);
	 
	 public List getSpec(String id);
	
}
