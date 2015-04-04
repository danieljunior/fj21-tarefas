/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.caelum.tarefas.jpa;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author danieljunior
 */
public class GeraTabelas {

    public static void main(String[] args) {
//        utiliza o arquivo persistence.xml para manusear a tabela tarefas
        EntityManagerFactory factory = Persistence.
                createEntityManagerFactory("tarefas");

        factory.close();
    }
}
