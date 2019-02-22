/*
 * Created on 2005-10-15
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.mvc.book;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.springframework.web.servlet.view.RedirectView;

import org.mmxbb.bookstore.model.Bookinfo;
import org.mmxbb.bookstore.model.ShopCartInfo;

import org.mmxbb.bookstore.service.BookinfoService;
import org.mmxbb.bookstore.service.CategoryService;
import org.mmxbb.bookstore.util.StaticData;



/**
 * @author Administrator
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class BookinfoController extends MultiActionController {

	  	    
	private BookinfoService bookinfoService;
	  
    public BookinfoService getBookinfoService() {
        return  bookinfoService;	
    }  

    public void setBookinfoService(BookinfoService bookinfoService){
    	this.bookinfoService=bookinfoService;   
    }
    private CategoryService categoryService;
    
    public void setCategoryService(CategoryService categoryService){
        this.categoryService = categoryService;
    }
    
    public CategoryService getCategoryService(){
        return this.categoryService;
    }
    
    

    public ModelAndView bookListHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	List ls=getBookinfoService().getAllBookinfo();
    	HashMap result_map=new HashMap();
    	result_map.put("bookList",ls);
    	return new ModelAndView("admin/book/list",result_map);
    }
    public ModelAndView latestbookHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	List ls=getBookinfoService().getAllBookinfo();
    	HashMap result_map=new HashMap();
    	result_map.put("bookList",ls);
    	return new ModelAndView("web/book/latestbook",result_map);
    }
    
    public ModelAndView cateBookListHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    	Integer cate_id =Integer.valueOf(request.getParameter("cate_id"));
        String query="from Bookinfo b where b.categoryid="+cate_id+" order by b.regdate desc";
    	List ls =getBookinfoService().getSpecBookinfo(query);
    	
    	HashMap result_map=new HashMap();
    	result_map.put("bookList",ls);
    	return new ModelAndView("admin/book/list",result_map);
    }

    public ModelAndView delBookHandler(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        Integer book_id =Integer.valueOf(request.getParameter("book_id"));
        Bookinfo bookinfo = getBookinfoService().getBookinfo(book_id);
        Integer cate_id=bookinfo.getCategoryid();
        
        getBookinfoService().deleteBookinfo(book_id);
          
        return new ModelAndView(new RedirectView("cateBook.do?cate_id="+cate_id));
    }
    
    public ModelAndView showUpdateBookinfoHandler(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        Integer book_id =Integer.valueOf(request.getParameter("book_id"));
        
        Bookinfo book=getBookinfoService().getBookinfo(book_id);
        List ls=getCategoryService().getAllCategory();
        HashMap result=new HashMap();
        result.put("bookinfo",book);
        result.put("cate",ls);
        
        return new ModelAndView("admin/book/update",result);
    }
    
    public ModelAndView showAddBookinfoHandler(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        List ls=getCategoryService().getAllCategory();
    	        
        return new ModelAndView("admin/book/add","cate",ls);
    }
    
    public ModelAndView detailBookinfoHandler(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        Integer book_id=Integer.valueOf(request.getParameter("book_id"));
        Bookinfo book=getBookinfoService().getBookinfo(book_id);
            	        
        return new ModelAndView("admin/book/detail","bookinfo",book);
    }
    
    public ModelAndView buyBookHandler(HttpServletRequest request,
        HttpServletResponse response) throws Exception {
        Integer book_id=Integer.valueOf(request.getParameter("book_id"));
        ShopCartInfo shopCartInfo=new ShopCartInfo();
        ArrayList shopCartList=(ArrayList)request.getSession().getAttribute(StaticData.SHOPCART_KEY);
        if(shopCartList==null){
        	shopCartList=new ArrayList();
        	
        }
//        if(true){
//        	return new ModelAndView("web/order/addShopCartFailed");
//        }else 
        String  sessionloginname=(String)request.getSession().getAttribute("loginname");	
      if(sessionloginname==null){
      	return new ModelAndView("web/order/pleaseLogin");
      }else{
        
        if(!getBookinfoService().hasTheBookinfo(shopCartList,book_id))
        { Bookinfo tempbook=getBookinfoService().getBookinfo(book_id);
    	shopCartInfo.setId(tempbook.getId());
    	shopCartInfo.setName(tempbook.getName());
    	shopCartInfo.setAuthor(tempbook.getAuthor());
    	shopCartInfo.setPress(tempbook.getPress());
    	shopCartInfo.setPrice(tempbook.getPrice());
    	shopCartInfo.setSaleprice(tempbook.getSaleprice());
    	shopCartInfo.setAmount(new Integer(1));
    	shopCartList.add(shopCartInfo);
    	request.getSession().setAttribute(StaticData.SHOPCART_KEY,shopCartList);
        
    	return new ModelAndView("web/order/shopCart");
        }else return new ModelAndView("web/order/addShopCartFailed");
            	        
      }
    }
    public ModelAndView delShopCartHandler(HttpServletRequest request,
        HttpServletResponse response) throws Exception {
        Integer book_id=Integer.valueOf(request.getParameter("book_id"));
        ArrayList shopCartList=(ArrayList)request.getSession().getAttribute(StaticData.SHOPCART_KEY);   	        
    
        for(int i=shopCartList.size()-1;i>=0;i--){
        	ShopCartInfo sci=(ShopCartInfo)shopCartList.get(i);
        	if(sci.getId().intValue()==book_id.intValue()){
        		shopCartList.remove(i);
        	     break;
        	     }
        }
        request.getSession().setAttribute(StaticData.SHOPCART_KEY,shopCartList); 

        return new ModelAndView("/web/order/shopCart");
    }
    
}
		
		
		
	

