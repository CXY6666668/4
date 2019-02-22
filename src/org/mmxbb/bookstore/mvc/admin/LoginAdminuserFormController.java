 /*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.admin;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;


import org.mmxbb.bookstore.model.Adminuser;
import org.mmxbb.bookstore.model.User;
/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class LoginAdminuserFormController extends AbstractAdminuserFormController{

	    
	  
	    protected static Log log = LogFactory.getLog(LoginAdminuserFormController.class);
	    
	    public LoginAdminuserFormController() {
			// OK to start with a blank command object
			setCommandClass(Adminuser.class);
			// activate session form mode to allow for detection of duplicate submissions
			setSessionForm(true);
		}

		protected ModelAndView onSubmit(HttpServletRequest request,HttpServletResponse response,Object command,BindException ex) throws ServletException {
		    
		    Adminuser obj =(Adminuser)command;
		    Adminuser u=getAdminuserService().loginAdminuser(obj);
						
			if(u==null){
			return new ModelAndView("admin/loginFailed");
			}else
			
			{	
			
				request.getSession().setAttribute("adminuser",u.getAdminuser());
				
				
//				Map result=new HashMap();
//				result.put("loginUser",u);
				return new ModelAndView(getSuccessView());
			}
		}
}
		
	
