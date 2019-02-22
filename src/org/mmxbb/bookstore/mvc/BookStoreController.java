/*
 * Created on 2005-4-8
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import org.mmxbb.bookstore.service.UserService;

/**
 * @author gzkou gzkou@yahoo.com.cn
 *
 */
public class BookStoreController extends MultiActionController{
    
	private UserService userService;
		  
	public UserService getUserService() {
	     return  userService;	
	}  
	
	public void setUserService(UserService userService){
	 this.userService=userService;   
	}

    public ModelAndView regSuccessHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
	//	HashMap result=(HashMap)request.getAttribute("userinfo");
    	return new ModelAndView("web/user/regSuccess");
	}
       
    public ModelAndView umHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		List usersList=new ArrayList();
		usersList=getUserService().getAllUsers();
        return new ModelAndView("usersManagement","usersList",usersList);
	}
    public ModelAndView indexHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("web/main");
	}
  
    public ModelAndView webleftHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/web/left");
	}
   
    public ModelAndView webheadHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/web/head");
	}
    
    public ModelAndView searchHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/web/search/search");
	}
    public ModelAndView bottomHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/include/frame_bottom");
	}
    public ModelAndView logoutHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		request.getSession().invalidate();
    	return new ModelAndView("/web/user/login");
	}
    public ModelAndView showCartHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
    	
		return new ModelAndView("/web/order/shopCart");
	}
    public ModelAndView adminleftHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/admin/left");
	}
    public ModelAndView adminrightHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/admin/right");
	}
    public ModelAndView adminheadHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/admin/head");
	}
    public ModelAndView adminindexHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		return new ModelAndView("/admin/main");
	}
    
    
}
