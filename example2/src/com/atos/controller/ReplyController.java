package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.model.Employee;
import com.atos.model.EmployeeDao;
import com.atos.model.Reply;
import com.atos.model.ReplyDao;
@Controller
public class ReplyController {
	@Autowired
	ReplyDao dao;  // will inject dao from XML file

	/*
	 * "command" is a reserved request attribute
	 *  which is used to display object data into form
	 */
	@RequestMapping("/reply")
	public String showform(Model m) {
		m.addAttribute("command", new Reply());
		return "reply";
	}

	
	@RequestMapping(value = "/save4", method = RequestMethod.POST)
	public String save(@ModelAttribute("rep") Reply rep) {
		dao.save(rep);
		return "redirect:/viewrep";
	}

	/* It provides list of employees in model object */
	@RequestMapping("/viewrep")
	public String viewrep(Model m) {
		List<Reply> list = dao.getReplys();
		m.addAttribute("list", list);
		return "viewrep";
	}
}
