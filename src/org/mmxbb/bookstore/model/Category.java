/*
 * Created Sat Jan 21 16:06:10 CST 2006 by MyEclipse Hibernate Tool.
 */
package org.mmxbb.bookstore.model;

import java.io.Serializable;

/**
 * A class that represents a row in the 'category' table. 
 * This class may be customized as it is never re-generated 
 * after being created.
 */
public class Category
    extends AbstractCategory
    implements Serializable
{
    /**
     * Simple constructor of Category instances.
     */
    public Category()
    {
    }

    /**
     * Constructor of Category instances given a simple primary key.
     * @param id
     */
    public Category(java.lang.Integer id)
    {
        super(id);
    }

    /* Add customized code below */

}
