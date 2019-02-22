/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.book;


import org.mmxbb.bookstore.service.BookinfoService;


import org.springframework.web.servlet.mvc.SimpleFormController;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AbstractBookinfoFormController extends SimpleFormController {


    private BookinfoService bookinfoService;
    
    public void setBookinfoService(BookinfoService bookinfoService){
        this.bookinfoService = bookinfoService;
    }
    
    public BookinfoService getBookinfoService(){
        return this.bookinfoService;
    }
}
