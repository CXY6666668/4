/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.book;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;



import org.mmxbb.bookstore.model.Bookinfo;
import org.mmxbb.bookstore.service.CategoryService;



/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class SearchBookinfoFormController extends AbstractBookinfoFormController {

	   private CategoryService categoryService;
	    
	    public void setCategoryService(CategoryService categoryService){
	        this.categoryService = categoryService;
	    }
	    
	    public CategoryService getCategoryService(){
	        return this.categoryService;
	    }    
	    protected static Log log = LogFactory.getLog(AddBookinfoFormController.class);
	    
	    public SearchBookinfoFormController() {
			// OK to start with a blank command object
			setCommandClass(Bookinfo.class);
			// activate session form mode to allow for detection of duplicate submissions
			setSessionForm(true);
		}

		protected ModelAndView onSubmit(Object command) throws ServletException {
		    log.info("onSubmit is called");
		    
		    Bookinfo obj =(Bookinfo)command;
		    List booklist=getBookinfoService().findSpecBook(obj);
		    Integer count=new Integer(booklist.size());
	        Map result=new HashMap();
		    result.put("bookList",booklist);
		    result.put("count",count);
			return new ModelAndView("web/search/searchResult",result);
		    
		}
		
	
	
		
		
	
}
