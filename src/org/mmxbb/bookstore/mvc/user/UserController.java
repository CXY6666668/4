/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.user;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import org.mmxbb.bookstore.service.UserService;

/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class UserController extends MultiActionController {

	  	    
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
 
    public ModelAndView userListHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	List userList=getUserService().getAllUsers();
    	HashMap result_map=new HashMap();
    	result_map.put("userlist",userList);
    	return new ModelAndView("admin/user/userList",result_map);
    }

}
		
		
		
	

