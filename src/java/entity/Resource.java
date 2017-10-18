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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "resource")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Resource.findAll", query = "SELECT r FROM Resource r")
    , @NamedQuery(name = "Resource.findByResourceindex", query = "SELECT r FROM Resource r WHERE r.resourceindex = :resourceindex")
    , @NamedQuery(name = "Resource.findByResource", query = "SELECT r FROM Resource r WHERE r.resource = :resource")
    , @NamedQuery(name = "Resource.findByResourceDesc", query = "SELECT r FROM Resource r WHERE r.resourceDesc = :resourceDesc")
    , @NamedQuery(name = "Resource.findByMimeType", query = "SELECT r FROM Resource r WHERE r.mimeType = :mimeType")
    , @NamedQuery(name = "Resource.findBySize", query = "SELECT r FROM Resource r WHERE r.size = :size")
    , @NamedQuery(name = "Resource.findByUri", query = "SELECT r FROM Resource r WHERE r.uri = :uri")
    , @NamedQuery(name = "Resource.findByDerefUri", query = "SELECT r FROM Resource r WHERE r.derefUri = :derefUri")
    , @NamedQuery(name = "Resource.findByDigest", query = "SELECT r FROM Resource r WHERE r.digest = :digest")
    , @NamedQuery(name = "Resource.findByInfoInfo", query = "SELECT r FROM Resource r WHERE r.infoInfo = :infoInfo")
    , @NamedQuery(name = "Resource.findByInfoAlertIdentifier", query = "SELECT r FROM Resource r WHERE r.infoAlertIdentifier = :infoAlertIdentifier")})
public class Resource implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "resourceindex")
    private Integer resourceindex;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "resource")
    private String resource;
    @Size(max = 300)
    @Column(name = "resourceDesc")
    private String resourceDesc;
    @Size(max = 100)
    @Column(name = "mimeType")
    private String mimeType;
    @Column(name = "size")
    private Integer size;
    @Size(max = 150)
    @Column(name = "uri")
    private String uri;
    @Size(max = 150)
    @Column(name = "derefUri")
    private String derefUri;
    @Size(max = 50)
    @Column(name = "digest")
    private String digest;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "info_info")
    private String infoInfo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "info_alert_identifier")
    private String infoAlertIdentifier;
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Category categoryId;

    public Resource() {
    }

    public Resource(Integer resourceindex) {
        this.resourceindex = resourceindex;
    }

    public Resource(Integer resourceindex, String resource, String infoInfo, String infoAlertIdentifier) {
        this.resourceindex = resourceindex;
        this.resource = resource;
        this.infoInfo = infoInfo;
        this.infoAlertIdentifier = infoAlertIdentifier;
    }

    public Integer getResourceindex() {
        return resourceindex;
    }

    public void setResourceindex(Integer resourceindex) {
        this.resourceindex = resourceindex;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    public String getResourceDesc() {
        return resourceDesc;
    }

    public void setResourceDesc(String resourceDesc) {
        this.resourceDesc = resourceDesc;
    }

    public String getMimeType() {
        return mimeType;
    }

    public void setMimeType(String mimeType) {
        this.mimeType = mimeType;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public String getDerefUri() {
        return derefUri;
    }

    public void setDerefUri(String derefUri) {
        this.derefUri = derefUri;
    }

    public String getDigest() {
        return digest;
    }

    public void setDigest(String digest) {
        this.digest = digest;
    }

    public String getInfoInfo() {
        return infoInfo;
    }

    public void setInfoInfo(String infoInfo) {
        this.infoInfo = infoInfo;
    }

    public String getInfoAlertIdentifier() {
        return infoAlertIdentifier;
    }

    public void setInfoAlertIdentifier(String infoAlertIdentifier) {
        this.infoAlertIdentifier = infoAlertIdentifier;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (resourceindex != null ? resourceindex.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Resource)) {
            return false;
        }
        Resource other = (Resource) object;
        if ((this.resourceindex == null && other.resourceindex != null) || (this.resourceindex != null && !this.resourceindex.equals(other.resourceindex))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Resource[ resourceindex=" + resourceindex + " ]";
    }
    
}
