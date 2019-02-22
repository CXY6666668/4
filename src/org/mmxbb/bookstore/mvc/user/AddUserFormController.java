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
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;


import org.mmxbb.bookstore.model.User;

/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AddUserFormController extends AbstractUserFormController {

	  	    
	    protected static Log log = LogFactory.getLog(AddUserFormController.class);
	    
	    public AddUserFormController() {
			// OK to start with a blank command object
			setCommandClass(User.class);
			// activate session form mode to allow for detection of duplicate submissions
			setSessionForm(true);
		}

		protected ModelAndView onSubmit(Object command) throws ServletException {
		    log.info("onSubmit is called");
		    User obj =(User)command;
		   //	 System.out.println(getUserService().isUser(obj).getLoginname());  
		    if(getUserService().isUser(obj)){
		    	return new ModelAndView("web/user/regFailed");

		    }
		    else{
		    	
		    	getUserService().createUser(obj);
				log.info("redirect to " + getSuccessView());
				HashMap result=new HashMap();
				result.put("userinfo",obj);
				List ls=(List)getUserService().getAllUsers();
				result.put("userlist",ls);
				//System.out.println(getUserService().isUser(obj).getLoginname());
				return new ModelAndView(getSuccessView(),result);
			    
		   }
   	
		    	
}
		
	
		
		
		
	
}
