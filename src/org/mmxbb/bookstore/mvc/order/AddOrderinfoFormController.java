/*
 * Created on 2006-2-9
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.order;

import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mmxbb.bookstore.model.Orderdetail;
import org.mmxbb.bookstore.model.Orderinfo;
import org.mmxbb.bookstore.model.ShopCartInfo;
import org.mmxbb.bookstore.mvc.book.AddBookinfoFormController;
import org.mmxbb.bookstore.util.StaticData;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;


/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AddOrderinfoFormController extends AbstractOrderFormController {
    protected static Log log = LogFactory.getLog(AddBookinfoFormController.class);
    
    public AddOrderinfoFormController() {
		// OK to start with a blank command object
		setCommandClass(Orderinfo.class);
		// activate session form mode to allow for detection of duplicate submissions
		setSessionForm(true);
	}

	protected ModelAndView onSubmit(HttpServletRequest request,HttpServletResponse response,Object command,BindException ex) throws Exception {
	    log.info("onSubmit is called");
	    
	    Orderinfo obj =(Orderinfo)command;
	    getOrderinfoService().createOrderinfo(obj);
	    ArrayList shopCartList=(ArrayList)request.getSession().getAttribute(StaticData.SHOPCART_KEY);
	    Iterator it=shopCartList.iterator();
	    while(it.hasNext()){
	    	ShopCartInfo sci=(ShopCartInfo)it.next();
	        Orderdetail od=new Orderdetail();
	        od.setOrderid(obj.getId());
	        od.setBookid(sci.getId());
	        od.setAmout(sci.getAmount());
	    	getOrderdetailService().createOrderdetail(od);
	    
	    }
	    
	    request.getSession().setAttribute(StaticData.SHOPCART_KEY,null);
		return new ModelAndView(getSuccessView(),"orderinfo",obj);
	    
	}
	

}
