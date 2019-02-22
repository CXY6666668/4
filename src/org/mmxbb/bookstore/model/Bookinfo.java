/*
 * Created Sat Jan 21 16:06:37 CST 2006 by MyEclipse Hibernate Tool.
 */
package org.mmxbb.bookstore.model;

import java.io.Serializable;

/**
 * A class that represents a row in the 'bookinfo' table. 
 * This class may be customized as it is never re-generated 
 * after being created.
 */
public class Bookinfo
    extends AbstractBookinfo
    implements Serializable
{
    /**
     * Simple constructor of Bookinfo instances.
     */
    public Bookinfo()
    {
    }

    /**
     * Constructor of Bookinfo instances given a simple primary key.
     * @param id
     */
    public Bookinfo(java.lang.Integer id)
    {
        super(id);
    }

    /* Add customized code below */

}
