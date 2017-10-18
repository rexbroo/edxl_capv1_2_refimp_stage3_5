/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Rex Brooks
 */
@Entity
@Table(name = "element")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Element.findAll", query = "SELECT e FROM Element e")
    , @NamedQuery(name = "Element.findById", query = "SELECT e FROM Element e WHERE e.id = :id")
    , @NamedQuery(name = "Element.findByName", query = "SELECT e FROM Element e WHERE e.name = :name")
    , @NamedQuery(name = "Element.findByRequired", query = "SELECT e FROM Element e WHERE e.required = :required")
    , @NamedQuery(name = "Element.findByConditional", query = "SELECT e FROM Element e WHERE e.conditional = :conditional")
    , @NamedQuery(name = "Element.findByRepeatable", query = "SELECT e FROM Element e WHERE e.repeatable = :repeatable")
    , @NamedQuery(name = "Element.findByCategoryId", query = "SELECT e FROM Element e WHERE e.categoryId = :categoryId")
    , @NamedQuery(name = "Element.findByDatatype", query = "SELECT e FROM Element e WHERE e.datatype = :datatype")
    , @NamedQuery(name = "Element.findByDatatypeSize", query = "SELECT e FROM Element e WHERE e.datatypeSize = :datatypeSize")})
public class Element implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @Column(name = "required")
    private Short required;
    @Column(name = "conditional")
    private Short conditional;
    @Column(name = "repeatable")
    private Short repeatable;
    @Basic(optional = false)
    @NotNull
    @Column(name = "category_id")
    private int categoryId;
    @Size(max = 150)
    @Column(name = "datatype")
    private String datatype;
    @Column(name = "datatype_size")
    private Integer datatypeSize;

    public Element() {
    }

    public Element(Integer id) {
        this.id = id;
    }

    public Element(Integer id, int categoryId) {
        this.id = id;
        this.categoryId = categoryId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Short getRequired() {
        return required;
    }

    public void setRequired(Short required) {
        this.required = required;
    }

    public Short getConditional() {
        return conditional;
    }

    public void setConditional(Short conditional) {
        this.conditional = conditional;
    }

    public Short getRepeatable() {
        return repeatable;
    }

    public void setRepeatable(Short repeatable) {
        this.repeatable = repeatable;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getDatatype() {
        return datatype;
    }

    public void setDatatype(String datatype) {
        this.datatype = datatype;
    }

    public Integer getDatatypeSize() {
        return datatypeSize;
    }

    public void setDatatypeSize(Integer datatypeSize) {
        this.datatypeSize = datatypeSize;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Element)) {
            return false;
        }
        Element other = (Element) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Element[ id=" + id + " ]";
    }
    
}
