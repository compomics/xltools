package com.compomics.xltools.beans;

import com.compomics.xltools.PxltEntry;
import com.compomics.xltools.service.PxltEntryService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import java.util.List;

@ManagedBean
@SessionScoped
public class PxltEntryBean {

    @ManagedProperty("#{pxltEntryService}")
    private PxltEntryService pxltEntryService;

    private List<PxltEntry> pxltEntries;

    public PxltEntryService getPxltEntryService() {
        return pxltEntryService;
    }

    public void setPxltEntryService(PxltEntryService pxltEntryService) {
        this.pxltEntryService = pxltEntryService;
    }

    public List<PxltEntry> getPxltEntries() {
        return pxltEntries;
    }

    public void setPxltEntries(List<PxltEntry> pxltEntries) {
        this.pxltEntries = pxltEntries;
    }

    public List<PxltEntry> getItems() {
        if (pxltEntries == null) {
            pxltEntries = pxltEntryService.findAll();
        }
        return pxltEntries;
    }
}
