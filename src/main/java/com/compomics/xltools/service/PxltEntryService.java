package com.compomics.xltools.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.compomics.xltools.PxltEntry;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PxltEntryService {

    @PersistenceContext
    private EntityManager entityManager;

    public EntityManager getEntityManager() {
        return entityManager;
    }

    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public List<PxltEntry> findAll() {
        return entityManager.createQuery("Select t from " + PxltEntry.class.getSimpleName() + " t").getResultList();
    }

}
