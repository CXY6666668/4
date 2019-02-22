/*
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized
 * by MyEclipse Hibernate tool integration.
 *
 * Created Sat Jan 21 16:06:36 CST 2006 by MyEclipse Hibernate Tool.
 */
package org.mmxbb.bookstore.model;

import java.io.Serializable;

/**
 * A class that represents a row in the bookinfo table. 
 * You can customize the behavior of this class by editing the class, {@link Bookinfo()}.
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized * by MyEclipse Hibernate tool integration.
 */
public abstract class AbstractBookinfo 
    implements Serializable
{
    /** The cached hash code value for this instance.  Settting to 0 triggers re-calculation. */
    private int hashValue = 0;

    /** The composite primary key value. */
    private java.lang.Integer id;

    /** The value of the category association. */
    private java.lang.Integer categoryid;

    /** The value of the simple name property. */
    private java.lang.String name;

    /** The value of the simple price property. */
    private java.lang.Float price;

    /** The value of the simple saleprice property. */
    private java.lang.Float saleprice;

    /** The value of the simple press property. */
    private java.lang.String press;

    /** The value of the simple author property. */
    private java.lang.String author;

    /** The value of the simple content property. */
    private java.lang.String content;

    /** The value of the simple descript property. */
    private java.lang.String descript;

    /** The value of the simple regdate property. */
    private java.util.Date regdate;

    /**
     * Simple constructor of AbstractBookinfo instances.
     */
    public AbstractBookinfo()
    {
    }

    /**
     * Constructor of AbstractBookinfo instances given a simple primary key.
     * @param id
     */
    public AbstractBookinfo(java.lang.Integer id)
    {
        this.setId(id);
    }

    /**
     * Return the simple primary key value that identifies this object.
     * @return java.lang.Integer
     */
    public java.lang.Integer getId()
    {
        return id;
    }

    /**
     * Set the simple primary key value that identifies this object.
     * @param id
     */
    public void setId(java.lang.Integer id)
    {
        this.hashValue = 0;
        this.id = id;
    }

    /**
     * Return the value of the categoryid column.
     * @return Integer
     */
    public Integer getCategoryid()
    {
        return this.categoryid;
    }

    /**
     * Set the value of the categoryid column.
     * @param Integer
     */
    public void setCategoryid(Integer categoryid)
    {
        this.categoryid = categoryid;
    }

    /**
     * Return the value of the name column.
     * @return java.lang.String
     */
    public java.lang.String getName()
    {
        return this.name;
    }

    /**
     * Set the value of the name column.
     * @param name
     */
    public void setName(java.lang.String name)
    {
        this.name = name;
    }

    /**
     * Return the value of the price column.
     * @return java.lang.Float
     */
    public java.lang.Float getPrice()
    {
        return this.price;
    }

    /**
     * Set the value of the price column.
     * @param price
     */
    public void setPrice(java.lang.Float price)
    {
        this.price = price;
    }

    /**
     * Return the value of the saleprice column.
     * @return java.lang.Float
     */
    public java.lang.Float getSaleprice()
    {
        return this.saleprice;
    }

    /**
     * Set the value of the saleprice column.
     * @param saleprice
     */
    public void setSaleprice(java.lang.Float saleprice)
    {
        this.saleprice = saleprice;
    }

    /**
     * Return the value of the press column.
     * @return java.lang.String
     */
    public java.lang.String getPress()
    {
        return this.press;
    }

    /**
     * Set the value of the press column.
     * @param press
     */
    public void setPress(java.lang.String press)
    {
        this.press = press;
    }

    /**
     * Return the value of the author column.
     * @return java.lang.String
     */
    public java.lang.String getAuthor()
    {
        return this.author;
    }

    /**
     * Set the value of the author column.
     * @param author
     */
    public void setAuthor(java.lang.String author)
    {
        this.author = author;
    }

    /**
     * Return the value of the content column.
     * @return java.lang.String
     */
    public java.lang.String getContent()
    {
        return this.content;
    }

    /**
     * Set the value of the content column.
     * @param content
     */
    public void setContent(java.lang.String content)
    {
        this.content = content;
    }

    /**
     * Return the value of the descript column.
     * @return java.lang.String
     */
    public java.lang.String getDescript()
    {
        return this.descript;
    }

    /**
     * Set the value of the descript column.
     * @param descript
     */
    public void setDescript(java.lang.String descript)
    {
        this.descript = descript;
    }

    /**
     * Return the value of the regdate column.
     * @return java.util.Date
     */
    public java.util.Date getRegdate()
    {
        return this.regdate;
    }

    /**
     * Set the value of the regdate column.
     * @param regdate
     */
    public void setRegdate(java.util.Date regdate)
    {
        this.regdate = regdate;
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
        if (! (rhs instanceof Bookinfo))
            return false;
        Bookinfo that = (Bookinfo) rhs;
        if (this.getId() != null && that.getId() != null)
        {
            if (! this.getId().equals(that.getId()))
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
            int idValue = this.getId() == null ? 0 : this.getId().hashCode();
            result = result * 37 + idValue;
            this.hashValue = result;
        }
        return this.hashValue;
    }
}
