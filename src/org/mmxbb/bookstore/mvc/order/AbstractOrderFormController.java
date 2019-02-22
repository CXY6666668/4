/*
 * Created on 2006-2-9
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.order;


import org.mmxbb.bookstore.service.OrderdetailService;
import org.mmxbb.bookstore.service.OrderinfoService;
import org.springframework.web.servlet.mvc.SimpleFormController;
/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AbstractOrderFormController extends SimpleFormController {
	  private OrderinfoService orderinfoService;
	  private OrderdetailService  orderdetailService;
	    public void setOrderinfoService(OrderinfoService orderinfoService){
	        this.orderinfoService = orderinfoService;
	    }
	    
	    public OrderinfoService getOrderinfoService(){
	        return this.orderinfoService;
	    }
	    
	    public void setOrderdetailService(OrderdetailService orderdetailService){
	        this.orderdetailService = orderdetailService;
	    }
	    
	    public OrderdetailService getOrderdetailService(){
	        return this.orderdetailService;
	    }
}
