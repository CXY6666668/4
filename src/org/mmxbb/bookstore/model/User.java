/*
 * Created Sat Jan 21 16:00:43 CST 2006 by MyEclipse Hibernate Tool.
 */
package org.mmxbb.bookstore.model;

import java.io.Serializable;

/**
 * A class that represents a row in the 'user' table. 
 * This class may be customized as it is never re-generated 
 * after being created.
 */
public class User
    extends AbstractUser
    implements Serializable
{
    /**
     * Simple constructor of User instances.
     */
    public User()
    {
    }

    /**
     * Constructor of User instances given a simple primary key.
     * @param id
     */
    public User(java.lang.Integer id)
    {
        super(id);
    }

    /* Add customized code below */

}
