/*
 * Created on 2006-1-21
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.mmxbb.bookstore.dao.BookinfoDao;
import org.mmxbb.bookstore.model.Bookinfo;
import org.mmxbb.bookstore.model.ShopCartInfo;
import org.mmxbb.bookstore.service.BookinfoService;


/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class BookinfoServiceImpl implements BookinfoService {
	  
			
	
	   private BookinfoDao bookinfoDao;
    
	   //set Dao   在业务逻辑实现的地方要set一下用到的dao
	   public void setBookinfoDao(BookinfoDao bookinfoDao){
	        this.bookinfoDao = bookinfoDao;
	    }
		    
	   public List getAllBookinfo() {
		       return bookinfoDao.findAll();
		    }
	   
       public List getSpecBookinfo(String query){
       		   return bookinfoDao.find(query);
       }
	
	    public Bookinfo getBookinfo(Integer id) {
		        return bookinfoDao.load(id);
		    }
		    
	    public void updateBookinfo(Bookinfo bookinfo) {
	      
	    	bookinfoDao.update(bookinfo);
		    }
        public void deleteBookinfo(Integer id) {
        	    bookinfoDao.delete(id);
            }
        public void createBookinfo(Bookinfo bookinfo) {
		  //SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		  //String regdate=sdf.format(new Date());
        	    bookinfo.setRegdate(new Date());
		    	bookinfoDao.save(bookinfo);
		    }
        public boolean hasTheBookinfo(ArrayList ls,Integer id) {
  		    Iterator it=ls.iterator();
  		    while(it.hasNext()){
  		    ShopCartInfo sci=(ShopCartInfo)it.next();	
  		    if(sci.getId().equals(id))return true;
  		    else continue;
  		    }
  		    
            return false;   	
        	
  		    }
        public List findSpecBook(Bookinfo bookinfo){
        	
        return 	bookinfoDao.findSpecBook(bookinfo);
        }
		 
	}
