/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.caelum.tarefas.dao;

import br.com.caelum.tarefas.modelo.Tarefa;
import java.util.List;

/**
 *
 * @author danieljunior
 */
public interface TarefaDao {

    Tarefa buscaPorId(Long id);

    List<Tarefa> lista();

    void adiciona(Tarefa t);

    void altera(Tarefa t);

    void remove(Tarefa t);

    void finaliza(Long id);
}
