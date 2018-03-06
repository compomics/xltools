/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.compomics.xltools;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Genet
 */
@Entity
@Table(name = "pxlt_table")
@XmlRootElement
public class PxltEntry implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "pmid")
    private String pmid;
    @Size(max = 50)
    @Column(name = "tool_name")
    private String toolName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "tool_type")
    private String toolType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "interface")
    private String interface1;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "published_year")
    private String publishedYear;
    @Size(max = 100)
    @Column(name = "scoring_fun")
    private String scoringFun;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "mscleavable")
    private String mSCleavable;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "labeling")
    private String labeling;
    @Size(max = 50)
    @Column(name = "decoy")
    private String decoy;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "dev_language")
    private String devLanguage;
    @Size(max = 50)
    @Column(name = "availability")
    private String availability;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "web_address")
    private String webAddress;

    public PxltEntry() {
    }

    public PxltEntry(String pmid) {
        this.pmid = pmid;
    }

    public PxltEntry(String pmid, String toolType, String interface1, String publishedYear, String mSCleavable, String labeling, String devLanguage, String webAddress) {
        this.pmid = pmid;
        this.toolType = toolType;
        this.interface1 = interface1;
        this.publishedYear = publishedYear;
        this.mSCleavable = mSCleavable;
        this.labeling = labeling;
        this.devLanguage = devLanguage;
        this.webAddress = webAddress;
    }

    public String getPmid() {
        return pmid;
    }

    public void setPmid(String pmid) {
        this.pmid = pmid;
    }

    public String getToolName() {
        return toolName;
    }

    public void setToolName(String toolName) {
        this.toolName = toolName;
    }

    public String getToolType() {
        return toolType;
    }

    public void setToolType(String toolType) {
        this.toolType = toolType;
    }

    public String getInterface1() {
        return interface1;
    }

    public void setInterface1(String interface1) {
        this.interface1 = interface1;
    }

    public String getPublishedYear() {
        return publishedYear;
    }

    public void setPublishedYear(String publishedYear) {
        this.publishedYear = publishedYear;
    }

    public String getScoringFun() {
        return scoringFun;
    }

    public void setScoringFun(String scoringFun) {
        this.scoringFun = scoringFun;
    }

    public String getMSCleavable() {
        return mSCleavable;
    }

    public void setMSCleavable(String mSCleavable) {
        this.mSCleavable = mSCleavable;
    }

    public String getLabeling() {
        return labeling;
    }

    public void setLabeling(String labeling) {
        this.labeling = labeling;
    }

    public String getDecoy() {
        return decoy;
    }

    public void setDecoy(String decoy) {
        this.decoy = decoy;
    }

    public String getDevLanguage() {
        return devLanguage;
    }

    public void setDevLanguage(String devLanguage) {
        this.devLanguage = devLanguage;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public String getWebAddress() {
        return webAddress;
    }

    public void setWebAddress(String webAddress) {
        this.webAddress = webAddress;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pmid != null ? pmid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PxltEntry)) {
            return false;
        }
        PxltEntry other = (PxltEntry) object;
        if ((this.pmid == null && other.pmid != null) || (this.pmid != null && !this.pmid.equals(other.pmid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compomics.xltools_reference.PxltEntry[ pmid=" + pmid + " ]";
    }
    
}
