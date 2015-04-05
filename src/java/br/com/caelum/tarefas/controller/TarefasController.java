/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.caelum.tarefas.controller;

import br.com.caelum.tarefas.dao.TarefaDao;
import br.com.caelum.tarefas.modelo.Tarefa;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author danieljr
 */
@Controller()
@Transactional
//habilita o gerenciamento de transações pelo spring
public class TarefasController {

    @Autowired
    TarefaDao dao;

    //diz para o spring injetar essa dependencia
    @RequestMapping("/")
    public String home() {
        return "redirect:listaTarefas";
    }

    @RequestMapping("olaMundoSpring")
    public String execute() {
        System.out.println("Execuntando a lógica com Spring MVC");
        return "ok";
    }

    @RequestMapping("novaTarefa")
    public String form() {
        return "tarefa/formulario";
    }

    @RequestMapping("adicionaTarefa")
    public String adiciona(@Valid Tarefa tarefa, BindingResult result) {
        if (result.hasFieldErrors("descricao")) {
            return "tarefa/formulario";
        }
        dao.adiciona(tarefa);
        return "tarefa/adicionada";
    }

    @RequestMapping("listaTarefas")
    public String lista(Model model) {
        model.addAttribute("tarefas", dao.lista());
        return "tarefa/lista";
    }

    @RequestMapping("removeTarefa")
    public String remove(Tarefa tarefa) {
        dao.remove(tarefa);
        return "redirect:listaTarefas";
    }

    @RequestMapping("mostraTarefa")
    public String mostra(Long id, Model model) {
        model.addAttribute("tarefa", dao.buscaPorId(id));
        return "tarefa/mostra";
    }

    @RequestMapping("alteraTarefa")
    public String altera(Tarefa tarefa) {
        dao.altera(tarefa);
        return "redirect:listaTarefas";
    }

    @RequestMapping("finalizaTarefa")
    public String finaliza(Long id, Model model) {
        dao.finaliza(id);
        model.addAttribute("tarefa", dao.buscaPorId(id));
        return "tarefa/finalizada";
    }

    @RequestMapping("excluirTarefa")
    public void excluir(Long id, HttpServletResponse resp) {
        dao.remove(dao.buscaPorId(id));
        resp.setStatus(200);
    }
}
