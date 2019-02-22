/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.admin;


import org.mmxbb.bookstore.service.AdminuserService;


import org.springframework.web.servlet.mvc.SimpleFormController;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AbstractAdminuserFormController extends SimpleFormController {


    private AdminuserService adminuserService;
    
    public void setAdminuserService(AdminuserService adminuserService){
        this.adminuserService = adminuserService;
    }
    
    public AdminuserService getAdminuserService(){
        return this.adminuserService;
    }
}
