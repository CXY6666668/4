/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.cate;


import javax.servlet.ServletException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;


import org.mmxbb.bookstore.model.Category;


/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class UpdateCategoryFormController extends AbstractCategoryFormController {

	  	    
	    protected static Log log = LogFactory.getLog(UpdateCategoryFormController.class);
	    
	    public UpdateCategoryFormController() {
			// OK to start with a blank command object
			setCommandClass(Category.class);
			// activate session form mode to allow for detection of duplicate submissions
			setSessionForm(true);
		}

		protected ModelAndView onSubmit(Object command) throws ServletException {
		    log.info("onSubmit is called");
		    Category obj =(Category)command;
		    getCategoryService().updateCategory(obj);
			log.info("redirect to " + getSuccessView());
			return new ModelAndView(new RedirectView(getSuccessView()));
		    
		}
		
	
		
		
		
	
}
