/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.cate;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.springframework.web.servlet.view.RedirectView;

import org.mmxbb.bookstore.model.Category;
import org.mmxbb.bookstore.service.CategoryService;


/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class CategoryController extends MultiActionController {

	  	    
	private CategoryService categoryService;
	  
    public CategoryService getCategoryService() {
        return  categoryService;	
    }  

    public void setCategoryService(CategoryService categoryService){
    	this.categoryService=categoryService;   
    }

    public ModelAndView cateListHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	List ls=getCategoryService().getAllCategory();
    	HashMap result_map=new HashMap();
    	result_map.put("cateList",ls);
    	return new ModelAndView("admin/book/categoryList",result_map);
    }

    public ModelAndView delCateHandler(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        Integer cate_id =Integer.valueOf(request.getParameter("cate_id"));
        
        getCategoryService().deleteCategory(cate_id);
          
        return new ModelAndView(new RedirectView("/bookStore/categoryList.do"));
    }
    
    public ModelAndView showUpdateCateHandler(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        Integer cate_id =Integer.valueOf(request.getParameter("cate_id"));
        
        Category cate=getCategoryService().getCategory(cate_id);
        
        return new ModelAndView("admin/book/updateCategory","cate",cate);
    }
}
		
		
		
	

