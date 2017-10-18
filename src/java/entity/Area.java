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
@Table(name = "area")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Area.findAll", query = "SELECT a FROM Area a")
    , @NamedQuery(name = "Area.findByAreaindex", query = "SELECT a FROM Area a WHERE a.areaindex = :areaindex")
    , @NamedQuery(name = "Area.findByArea", query = "SELECT a FROM Area a WHERE a.area = :area")
    , @NamedQuery(name = "Area.findByAreaDesc", query = "SELECT a FROM Area a WHERE a.areaDesc = :areaDesc")
    , @NamedQuery(name = "Area.findByPolygon", query = "SELECT a FROM Area a WHERE a.polygon = :polygon")
    , @NamedQuery(name = "Area.findByCircle", query = "SELECT a FROM Area a WHERE a.circle = :circle")
    , @NamedQuery(name = "Area.findByGeocode", query = "SELECT a FROM Area a WHERE a.geocode = :geocode")
    , @NamedQuery(name = "Area.findByAltitude", query = "SELECT a FROM Area a WHERE a.altitude = :altitude")
    , @NamedQuery(name = "Area.findByCeiling", query = "SELECT a FROM Area a WHERE a.ceiling = :ceiling")
    , @NamedQuery(name = "Area.findByInfoInfo", query = "SELECT a FROM Area a WHERE a.infoInfo = :infoInfo")
    , @NamedQuery(name = "Area.findByCategoryId", query = "SELECT a FROM Area a WHERE a.categoryId = :categoryId")})
public class Area implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "areaindex")
    private Integer areaindex;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "area")
    private String area;
    @Size(max = 350)
    @Column(name = "areaDesc")
    private String areaDesc;
    @Size(max = 350)
    @Column(name = "polygon")
    private String polygon;
    @Size(max = 50)
    @Column(name = "circle")
    private String circle;
    @Size(max = 50)
    @Column(name = "geocode")
    private String geocode;
    @Size(max = 50)
    @Column(name = "altitude")
    private String altitude;
    @Size(max = 50)
    @Column(name = "ceiling")
    private String ceiling;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "info_info")
    private String infoInfo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "category_id")
    private int categoryId;

    public Area() {
    }

    public Area(Integer areaindex) {
        this.areaindex = areaindex;
    }

    public Area(Integer areaindex, String area, String infoInfo, int categoryId) {
        this.areaindex = areaindex;
        this.area = area;
        this.infoInfo = infoInfo;
        this.categoryId = categoryId;
    }

    public Integer getAreaindex() {
        return areaindex;
    }

    public void setAreaindex(Integer areaindex) {
        this.areaindex = areaindex;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getAreaDesc() {
        return areaDesc;
    }

    public void setAreaDesc(String areaDesc) {
        this.areaDesc = areaDesc;
    }

    public String getPolygon() {
        return polygon;
    }

    public void setPolygon(String polygon) {
        this.polygon = polygon;
    }

    public String getCircle() {
        return circle;
    }

    public void setCircle(String circle) {
        this.circle = circle;
    }

    public String getGeocode() {
        return geocode;
    }

    public void setGeocode(String geocode) {
        this.geocode = geocode;
    }

    public String getAltitude() {
        return altitude;
    }

    public void setAltitude(String altitude) {
        this.altitude = altitude;
    }

    public String getCeiling() {
        return ceiling;
    }

    public void setCeiling(String ceiling) {
        this.ceiling = ceiling;
    }

    public String getInfoInfo() {
        return infoInfo;
    }

    public void setInfoInfo(String infoInfo) {
        this.infoInfo = infoInfo;
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
        hash += (areaindex != null ? areaindex.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Area)) {
            return false;
        }
        Area other = (Area) object;
        if ((this.areaindex == null && other.areaindex != null) || (this.areaindex != null && !this.areaindex.equals(other.areaindex))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Area[ areaindex=" + areaindex + " ]";
    }
    
}
