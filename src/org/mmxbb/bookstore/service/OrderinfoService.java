/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service;

import java.util.List;

import org.mmxbb.bookstore.model.Orderinfo;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface OrderinfoService {

	 public List getAllOrderinfo(); 
	 
	 public List getSpecOrderinfo(String query);
	 
	 public Orderinfo getOrderinfo(String id);
	    
	 public void updateOrderinfo(Orderinfo orderinfo);
	    
	 public void deleteOrderinfo(String id);
	    
	 public void createOrderinfo(Orderinfo orderinfo);
	
}
