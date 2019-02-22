/*
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized
 * by MyEclipse Hibernate tool integration.
 *
 * Created Sat Jan 21 16:06:59 CST 2006 by MyEclipse Hibernate Tool.
 */
package org.mmxbb.bookstore.model;

import java.io.Serializable;

/**
 * A class that represents a row in the adminuser table. 
 * You can customize the behavior of this class by editing the class, {@link Adminuser()}.
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized * by MyEclipse Hibernate tool integration.
 */
public abstract class AbstractAdminuser 
    implements Serializable
{
    /** The cached hash code value for this instance.  Settting to 0 triggers re-calculation. */
    private int hashValue = 0;

    /** The composite primary key value. */
    private java.lang.String adminuser;

    /** The value of the simple adminpass property. */
    private java.lang.String adminpass;

    /**
     * Simple constructor of AbstractAdminuser instances.
     */
    public AbstractAdminuser()
    {
    }

    /**
     * Constructor of AbstractAdminuser instances given a simple primary key.
     * @param adminuser
     */
    public AbstractAdminuser(java.lang.String adminuser)
    {
        this.setAdminuser(adminuser);
    }

    /**
     * Return the simple primary key value that identifies this object.
     * @return java.lang.String
     */
    public java.lang.String getAdminuser()
    {
        return adminuser;
    }

    /**
     * Set the simple primary key value that identifies this object.
     * @param adminuser
     */
    public void setAdminuser(java.lang.String adminuser)
    {
        this.hashValue = 0;
        this.adminuser = adminuser;
    }

    /**
     * Return the value of the adminpass column.
     * @return java.lang.String
     */
    public java.lang.String getAdminpass()
    {
        return this.adminpass;
    }

    /**
     * Set the value of the adminpass column.
     * @param adminpass
     */
    public void setAdminpass(java.lang.String adminpass)
    {
        this.adminpass = adminpass;
    }

    /**
     * Implementation of the equals comparison on the basis of equality of the primary key values.
     * @param rhs
     * @return boolean
     */
    public boolean equals(Object rhs)
    {
        if (rhs == null)
            return false;
        if (! (rhs instanceof Adminuser))
            return false;
        Adminuser that = (Adminuser) rhs;
        if (this.getAdminuser() != null && that.getAdminuser() != null)
        {
            if (! this.getAdminuser().equals(that.getAdminuser()))
            {
                return false;
            }
        }
        return true;
    }

    /**
     * Implementation of the hashCode method conforming to the Bloch pattern with
     * the exception of array properties (these are very unlikely primary key types).
     * @return int
     */
    public int hashCode()
    {
        if (this.hashValue == 0)
        {
            int result = 17;
            int adminuserValue = this.getAdminuser() == null ? 0 : this.getAdminuser().hashCode();
            result = result * 37 + adminuserValue;
            this.hashValue = result;
        }
        return this.hashValue;
    }
}