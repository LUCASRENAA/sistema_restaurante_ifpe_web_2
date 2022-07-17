/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.devcaotics.model.repository;

import com.devcaotics.model.entities.Carro;
import com.devcaotics.model.entities.Motorista;
import java.util.List;

/**
 *
 * @author ALUNO
 */
public class Facade {
    
    private static Facade myself = null;
    
    private GenericRepository<Carro, String> rCarro = null; 
    
    private Facade(){
        
        this.rCarro = new CarroRepository();
        
    }
    
    public static Facade getCurrentInstance(){
        
        if(myself == null){
            myself = new Facade();
        }
        
        return myself;
        
    }
    
    public void create(Carro c){
        this.rCarro.create(c);
    }
    
    public void update(Carro c){
        this.rCarro.update(c);
    }
    
    public Carro readCarro(String placa){
    	
       return this.rCarro.read(placa);
    }
    
    public void deleteCarro(String placa){
        this.rCarro.delete(placa);
    }
    
    public List<Carro> readAllCarro(){
        return this.rCarro.readAll();
    }
    
    
    
}
