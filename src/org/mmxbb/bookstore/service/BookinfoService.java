/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service;

import java.util.ArrayList;
import java.util.List;

import org.mmxbb.bookstore.model.Bookinfo;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public interface BookinfoService {

	 public List getAllBookinfo(); 
	 
	 public List getSpecBookinfo(String query);
	 
	 public Bookinfo getBookinfo(Integer id);
	    
	 public void updateBookinfo(Bookinfo bookinfo);
	    
	 public void deleteBookinfo(Integer id);
	    
	 public void createBookinfo(Bookinfo bookinfo);
	 public boolean hasTheBookinfo(ArrayList ls,Integer id);
	 
	 public List findSpecBook(Bookinfo bookinfo);
}
