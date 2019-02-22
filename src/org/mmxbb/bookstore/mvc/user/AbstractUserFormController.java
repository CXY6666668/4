/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.user;


import org.mmxbb.bookstore.service.UserService;

import org.springframework.web.servlet.mvc.SimpleFormController;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AbstractUserFormController extends SimpleFormController {


    private UserService userService;
    
    public void setUserService(UserService userService){
        this.userService = userService;
    }
    
    public UserService getUserService(){
        return this.userService;
    }
}
