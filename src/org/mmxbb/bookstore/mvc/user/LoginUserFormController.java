 /*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.user;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;


import org.mmxbb.bookstore.model.User;
/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class LoginUserFormController extends AbstractUserFormController {

	    
	  
	    protected static Log log = LogFactory.getLog(LoginUserFormController.class);
	    
	    public LoginUserFormController() {
			// OK to start with a blank command object
			setCommandClass(User.class);
			// activate session form mode to allow for detection of duplicate submissions
			setSessionForm(true);
		}

		protected ModelAndView onSubmit(HttpServletRequest request,HttpServletResponse response,Object command,BindException ex) throws ServletException {
		    
		    User obj =(User)command;
			User u=getUserService().loginUser(obj);
						
			if(u==null){
			return new ModelAndView("web/user/loginFailed");
			}else
			
			{	
			
				request.getSession().setAttribute("realname",u.getRealname());
				request.getSession().setAttribute("id",u.getId());
				request.getSession().setAttribute("loginname",u.getLoginname());
				
//				Map result=new HashMap();
//				result.put("loginUser",u);
				return new ModelAndView("web/left");
			}
		}
}
		
	
