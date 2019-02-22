/*
 * Created on 2006-1-22
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.mmxbb.bookstore.dao.hibernate;

import java.util.List;

import net.sf.hibernate.Hibernate;
import net.sf.hibernate.type.Type;

import org.mmxbb.bookstore.dao.BookinfoDao;
import org.mmxbb.bookstore.model.Bookinfo;

import org.springframework.orm.hibernate.HibernateObjectRetrievalFailureException;
import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * @author mmx
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class BookinfoDaoHibernate extends HibernateDaoSupport implements BookinfoDao {

	public Bookinfo load(Integer id){
		  Bookinfo bookinfo;
	        try{
	        	bookinfo = (Bookinfo)getHibernateTemplate().load(Bookinfo.class,id);
	        }catch(HibernateObjectRetrievalFailureException e){
	        	bookinfo = null;
	        }
	        return bookinfo;	
	
	}
    
    public void save(Bookinfo bookinfo){
	       
    	getHibernateTemplate().save(bookinfo);
    }
    public void update(Bookinfo bookinfo){
        getHibernateTemplate().update(bookinfo);
    }
    public void delete(Integer id){
        getHibernateTemplate().delete(load(id));
    }
    public List find(String query){
        return getHibernateTemplate().find(query);
    }
    public List findAll(){
	    
    	return getHibernateTemplate().find("from Bookinfo b order by b.regdate desc");
    }
    
    public List findSpecBook(Bookinfo bookinfo){
	    
    	System.out.println(bookinfo.getName());
    	String[] args=new String[]{bookinfo.getName(),bookinfo.getAuthor(),bookinfo.getPress()};
    	for(int i=0;i<args.length;i++){
    		if(args[i]==null)args[i]="";
    	}
    	Type[] types=new Type[]{Hibernate.STRING,Hibernate.STRING,Hibernate.STRING};
    	return getHibernateTemplate().find("from Bookinfo b where b.name like '%"+bookinfo.getName()+"%' and b.author like '%"+bookinfo.getAuthor()+"%' and b.press like '%"+bookinfo.getPress()+"%' order by b.regdate desc");
    }
    
}
