/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Rex Brooks
 */
@Entity
@Table(name = "info")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Info.findAll", query = "SELECT i FROM Info i")
    , @NamedQuery(name = "Info.findByInfoindex", query = "SELECT i FROM Info i WHERE i.infoindex = :infoindex")
    , @NamedQuery(name = "Info.findByInfo", query = "SELECT i FROM Info i WHERE i.info = :info")
    , @NamedQuery(name = "Info.findByLanguage", query = "SELECT i FROM Info i WHERE i.language = :language")
    , @NamedQuery(name = "Info.findByCategory", query = "SELECT i FROM Info i WHERE i.category = :category")
    , @NamedQuery(name = "Info.findByEvent", query = "SELECT i FROM Info i WHERE i.event = :event")
    , @NamedQuery(name = "Info.findByResponseType", query = "SELECT i FROM Info i WHERE i.responseType = :responseType")
    , @NamedQuery(name = "Info.findByUrgency", query = "SELECT i FROM Info i WHERE i.urgency = :urgency")
    , @NamedQuery(name = "Info.findBySeverity", query = "SELECT i FROM Info i WHERE i.severity = :severity")
    , @NamedQuery(name = "Info.findByCertainty", query = "SELECT i FROM Info i WHERE i.certainty = :certainty")
    , @NamedQuery(name = "Info.findByAudience", query = "SELECT i FROM Info i WHERE i.audience = :audience")
    , @NamedQuery(name = "Info.findByEventCode", query = "SELECT i FROM Info i WHERE i.eventCode = :eventCode")
    , @NamedQuery(name = "Info.findByEffective", query = "SELECT i FROM Info i WHERE i.effective = :effective")
    , @NamedQuery(name = "Info.findByOnset", query = "SELECT i FROM Info i WHERE i.onset = :onset")
    , @NamedQuery(name = "Info.findByExpires", query = "SELECT i FROM Info i WHERE i.expires = :expires")
    , @NamedQuery(name = "Info.findBySenderName", query = "SELECT i FROM Info i WHERE i.senderName = :senderName")
    , @NamedQuery(name = "Info.findByHeadline", query = "SELECT i FROM Info i WHERE i.headline = :headline")
    , @NamedQuery(name = "Info.findByDescription", query = "SELECT i FROM Info i WHERE i.description = :description")
    , @NamedQuery(name = "Info.findByInstruction", query = "SELECT i FROM Info i WHERE i.instruction = :instruction")
    , @NamedQuery(name = "Info.findByWeb", query = "SELECT i FROM Info i WHERE i.web = :web")
    , @NamedQuery(name = "Info.findByContact", query = "SELECT i FROM Info i WHERE i.contact = :contact")
    , @NamedQuery(name = "Info.findByParameter", query = "SELECT i FROM Info i WHERE i.parameter = :parameter")
    , @NamedQuery(name = "Info.findByResource", query = "SELECT i FROM Info i WHERE i.resource = :resource")
    , @NamedQuery(name = "Info.findByArea", query = "SELECT i FROM Info i WHERE i.area = :area")
    , @NamedQuery(name = "Info.findByAlertIdentifier", query = "SELECT i FROM Info i WHERE i.alertIdentifier = :alertIdentifier")
    , @NamedQuery(name = "Info.findByCategoryId", query = "SELECT i FROM Info i WHERE i.categoryId = :categoryId")})
public class Info implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "infoindex")
    private Integer infoindex;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "info")
    private String info;
    @Size(max = 50)
    @Column(name = "language")
    private String language;
    @Size(max = 50)
    @Column(name = "category")
    private String category;
    @Size(max = 50)
    @Column(name = "event")
    private String event;
    @Size(max = 8)
    @Column(name = "responseType")
    private String responseType;
    @Size(max = 10)
    @Column(name = "urgency")
    private String urgency;
    @Size(max = 8)
    @Column(name = "severity")
    private String severity;
    @Size(max = 9)
    @Column(name = "certainty")
    private String certainty;
    @Size(max = 50)
    @Column(name = "audience")
    private String audience;
    @Size(max = 50)
    @Column(name = "eventCode")
    private String eventCode;
    @Column(name = "effective")
    @Temporal(TemporalType.TIMESTAMP)
    private Date effective;
    @Column(name = "onset")
    @Temporal(TemporalType.TIMESTAMP)
    private Date onset;
    @Column(name = "expires")
    @Temporal(TemporalType.TIMESTAMP)
    private Date expires;
    @Size(max = 50)
    @Column(name = "senderName")
    private String senderName;
    @Size(max = 160)
    @Column(name = "headline")
    private String headline;
    @Size(max = 1500)
    @Column(name = "description")
    private String description;
    @Size(max = 1500)
    @Column(name = "instruction")
    private String instruction;
    @Size(max = 150)
    @Column(name = "web")
    private String web;
    @Size(max = 250)
    @Column(name = "contact")
    private String contact;
    @Size(max = 150)
    @Column(name = "parameter")
    private String parameter;
    @Size(max = 150)
    @Column(name = "resource")
    private String resource;
    @Size(max = 150)
    @Column(name = "area")
    private String area;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "alert_identifier")
    private String alertIdentifier;
    @Basic(optional = false)
    @NotNull
    @Column(name = "category_id")
    private int categoryId;

    public Info() {
    }

    public Info(Integer infoindex) {
        this.infoindex = infoindex;
    }

    public Info(Integer infoindex, String info, String alertIdentifier, int categoryId) {
        this.infoindex = infoindex;
        this.info = info;
        this.alertIdentifier = alertIdentifier;
        this.categoryId = categoryId;
    }

    public Integer getInfoindex() {
        return infoindex;
    }

    public void setInfoindex(Integer infoindex) {
        this.infoindex = infoindex;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getResponseType() {
        return responseType;
    }

    public void setResponseType(String responseType) {
        this.responseType = responseType;
    }

    public String getUrgency() {
        return urgency;
    }

    public void setUrgency(String urgency) {
        this.urgency = urgency;
    }

    public String getSeverity() {
        return severity;
    }

    public void setSeverity(String severity) {
        this.severity = severity;
    }

    public String getCertainty() {
        return certainty;
    }

    public void setCertainty(String certainty) {
        this.certainty = certainty;
    }

    public String getAudience() {
        return audience;
    }

    public void setAudience(String audience) {
        this.audience = audience;
    }

    public String getEventCode() {
        return eventCode;
    }

    public void setEventCode(String eventCode) {
        this.eventCode = eventCode;
    }

    public Date getEffective() {
        return effective;
    }

    public void setEffective(Date effective) {
        this.effective = effective;
    }

    public Date getOnset() {
        return onset;
    }

    public void setOnset(Date onset) {
        this.onset = onset;
    }

    public Date getExpires() {
        return expires;
    }

    public void setExpires(Date expires) {
        this.expires = expires;
    }

    public String getSenderName() {
        return senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getParameter() {
        return parameter;
    }

    public void setParameter(String parameter) {
        this.parameter = parameter;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getAlertIdentifier() {
        return alertIdentifier;
    }

    public void setAlertIdentifier(String alertIdentifier) {
        this.alertIdentifier = alertIdentifier;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (infoindex != null ? infoindex.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Info)) {
            return false;
        }
        Info other = (Info) object;
        if ((this.infoindex == null && other.infoindex != null) || (this.infoindex != null && !this.infoindex.equals(other.infoindex))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Info[ infoindex=" + infoindex + " ]";
    }
    
}
