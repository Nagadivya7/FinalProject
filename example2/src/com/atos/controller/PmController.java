package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.model.Pm;
import com.atos.model.PmDao;
@Controller
public class PmController {
	@Autowired
	PmDao dao1;  // will inject dao from XML file

	/*
	 * "command" is a reserved request attribute
	 *  which is used to display object data into form
	 */
	@RequestMapping("/pm")
	public String showform(Model m) {
		m.addAttribute("command", new Pm());
		return "pm";
	}

	
	@RequestMapping(value = "/save1", method = RequestMethod.POST)
	public String save(@ModelAttribute("p") Pm p) {
		dao1.save(p);
		return "redirect:/viewpm";
	}

	/* It provides list of employees in model object */
	@RequestMapping("/viewpm")
	public String viewpm(Model m) {
		List<Pm> list = dao1.getPmValues();
		m.addAttribute("list", list);
		return "viewpm";
	}
}
