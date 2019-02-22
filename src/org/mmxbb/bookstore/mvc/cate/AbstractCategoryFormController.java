/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.cate;


import org.mmxbb.bookstore.service.CategoryService;

import org.springframework.web.servlet.mvc.SimpleFormController;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AbstractCategoryFormController extends SimpleFormController {


    private CategoryService categoryService;
    
    public void setCategoryService(CategoryService categoryService){
        this.categoryService = categoryService;
    }
    
    public CategoryService getCategoryService(){
        return this.categoryService;
    }
}
