/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.controlador;

import com.sv.udb.modelo.Alumnos;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

/**
 *
 * @author Owner
 */
public class AlumnosCtrl {
    /**
     * Método para guardar un lugar de acceso en la base de datos
     * @param obje Alumnos objeto de tipo lugar de acceso
     * @return resp boolean true si ha sido guardado exitosamente
     */
    public boolean guar(Alumnos obje)
    {
        boolean resp = false;
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("PooPU");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        try
        {
            em.persist(obje);
            tx.commit();
            resp = true;
        }
        catch(Exception ex)
        {
            tx.rollback();
        }
        em.close();
        emf.close();
        return resp;
    }
    /**
     * Método para consultar todos los lugares de accesos en la base de datos
     * @return resp List lista de objetos de tipo Alumnos
     */
    
    public List<Alumnos>  ConsTodo()
    {
        List<Alumnos> resp = new ArrayList<>();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("PooPU");
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<Alumnos> query = em.createNamedQuery("Alumnos.findAll", Alumnos.class);
            resp = query.getResultList();
        } catch (Exception ex) {

        }
        return resp;
       
    }
    /**
     * Método para obtener un solo registro de la base de datos
     * @param empId Long llave primaria del registro que se desea obtener
     * @return resp Alumnos objeto de tipo lugar de acceso con todos los datos del registro
     */
     public Alumnos get(Long empId){
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("PooPU");
        EntityManager em = emf.createEntityManager();
        Alumnos resp = null;
        
        try{
            resp = em.find(Alumnos.class, empId);
            
        }catch(Exception e){
            e.printStackTrace();
        }                
        return resp;
    }
     
}
