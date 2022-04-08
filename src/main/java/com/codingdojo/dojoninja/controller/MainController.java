package com.codingdojo.dojoninja.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojoninja.models.Dojo;
import com.codingdojo.dojoninja.models.Ninja;
import com.codingdojo.dojoninja.repositories.DojoService;
import com.codingdojo.dojoninja.repositories.NinjaService;

@Controller
public class MainController{
	
	// Services
	@Autowired
	private DojoService dojoServices;
	
	@Autowired
	private NinjaService ninjaServices;
	
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("newDojo") Dojo dojo) {
		return "newdojo.jsp";
	}
	
	@PostMapping("/dojos")
	public String createDojo(@ModelAttribute("newDojo") Dojo dojo) {
		dojoServices.createDojo(dojo);
		
		return String.format("redirect:/dojos/%s",dojo.getId());
	}
	
	@GetMapping("/ninjas/new")
	public String newNinja(
			@ModelAttribute("newNinja") Ninja ninja, Model model) {
		model.addAttribute("dojos", dojoServices.getAllDojos());
		
		return "newninja.jsp";
	}
	
	@PostMapping("/ninjas")
	public String createNinja(
			@ModelAttribute("newNinja") Ninja ninja) {
		Ninja newNinja = ninjaServices.createNinja(ninja);
		
		return String.format("redirect:/dojos/%s", newNinja.getDojo().getId());
	}
	
	//Rendering GET for showing detail
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable Long id, Model dojoModel) {
		dojoModel.addAttribute("dojo", dojoServices.findDojo(id));
		
		return "show.jsp";
	}
}
