package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.model.Lnd;
import com.atos.model.LndDao;


@Controller
public class LndController {
	@Autowired
	LndDao dao2;  // will inject dao from XML file

	/*
	 * "command" is a reserved request attribute
	 *  which is used to display object data into form
	 */
	@RequestMapping("/lnd")
	public String showform(Model m) {
		m.addAttribute("command", new Lnd());
		return "lnd";
	}

	
	@RequestMapping(value = "/save2", method = RequestMethod.POST)
	public String save(@ModelAttribute("l") Lnd l) {
		dao2.save(l);
		return "redirect:/viewLnd";
	}

	/* It provides list of employees in model object */
	@RequestMapping("/viewLnd")
	public String viewLnd(Model m) {
		List<Lnd> list = dao2.getLndValues();
		m.addAttribute("list", list);
		return "viewLnd";
	}

}
