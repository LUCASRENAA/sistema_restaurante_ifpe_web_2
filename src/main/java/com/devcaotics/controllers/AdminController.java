package com.devcaotics.controllers;

import java.net.http.HttpRequest;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devcaotics.model.entities.Carro;
import com.devcaotics.model.repository.Facade;

@Controller
public class AdminController {

	@RequestMapping("/admin/")
	public String admin(Model m) {
		
		return "/admin/admin";
		
	}
	@RequestMapping("/admin/admin_cadastrar_formas_pagamento")
	public String admin_cadastrar_formas_pagamento(Model m) {
		
		return "/admin/admin_cadastrar_formas_pagamento";
		
	}
	
	@RequestMapping("/admin/admin_cadastrar_pratos")
	public String admin_cadastrar_pratos(Model m) {
		
		return "/admin/admin_cadastrar_pratos";
		
	}
	
	@RequestMapping("/admin/admin_visualizar_clientes")
	public String admin_visualizar_clientes(Model m) {
		
		return "/admin/admin_visualizar_clientes";
		
	}
	
	@RequestMapping("/admin/admin_visualizar_pedidos")
	public String admin_visualizar_pedidos(Model m) {
		
		return "/admin/admin_visualizar_pedidos";
		
	}
	

}
