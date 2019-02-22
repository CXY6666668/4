/*
 * Created on 2006-2-9
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.order;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mmxbb.bookstore.model.Orderinfo;
import org.mmxbb.bookstore.service.OrderdetailService;
import org.mmxbb.bookstore.service.OrderinfoService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class OrderinfoController extends MultiActionController {

	private OrderinfoService orderinfoService;
	  
  public OrderinfoService getOrderinfoService() {
      return  orderinfoService;	
  }  

  public void setOrderinfoService(OrderinfoService orderinfoService){
  	this.orderinfoService=orderinfoService;   
  }
  
	private OrderdetailService orderdetailService;
	  
public OrderdetailService getOrderdetailService() {
    return  orderdetailService;	
}  

public void setOrderdetailService(OrderdetailService orderdetailService){
	this.orderdetailService=orderdetailService;   
}

  
  
	public ModelAndView myOrderHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	
		Integer user_id=(Integer)request.getSession().getAttribute("id");
		List ls=getOrderinfoService().getSpecOrderinfo("from Orderinfo o where o.userid="+user_id+" order by o.submittime desc");
    	HashMap result_map=new HashMap();
    	result_map.put("orderList",ls);
    	return new ModelAndView("web/order/listOrder",result_map);
    }
	
	public ModelAndView orderListHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	
		
		List ls=getOrderinfoService().getAllOrderinfo();
    	HashMap result_map=new HashMap();
    	result_map.put("orderList",ls);
    	return new ModelAndView("admin/order/list",result_map);
    }
	
	public ModelAndView detailOrderHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	
		String order_id=(String)request.getParameter("order_id");
		Orderinfo oi=getOrderinfoService().getOrderinfo(order_id);
		List ls=getOrderdetailService().getSpec(order_id);
    	HashMap result_map=new HashMap();
    	result_map.put("orderinfo",oi);
    	result_map.put("orderdetail",ls);
    	return new ModelAndView("admin/order/detail",result_map);
    }
	public ModelAndView updateOrderHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String order_id=(String)request.getParameter("order_id");
		Orderinfo oi=getOrderinfoService().getOrderinfo(order_id);
		getOrderinfoService().updateOrderinfo(oi);
		return new ModelAndView("admin/order/list");
    }
	
}
