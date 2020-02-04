package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.model.Trm;
import com.atos.model.TrmDao;


@Controller
public class TrmController {
	@Autowired
	TrmDao dao3;  // will inject dao from XML file

	/*
	 * "command" is a reserved request attribute
	 *  which is used to display object data into form
	 */
	@RequestMapping("/trm")
	public String showform(Model m) {
		m.addAttribute("command", new Trm());
		return "trm";
	}

	
	@RequestMapping(value = "/save3", method = RequestMethod.POST)
	public String save(@ModelAttribute("t") Trm t) {
		dao3.save(t);
		return "redirect:/viewTrm";
	}

	/* It provides list of employees in model object */
	@RequestMapping("/viewTrm")
	public String viewTrm(Model m) {
		List<Trm> list = dao3.getTrmValues();
		m.addAttribute("list", list);
		return "viewTrm";
	}
}
