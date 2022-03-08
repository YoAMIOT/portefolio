package fr.yoannamiot.portefolio.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import fr.yoannamiot.portefolio.entities.Project;
import fr.yoannamiot.portefolio.repositories.ProjectRepository;

@Controller
public class ProjectController {
	
	@Autowired
    private ProjectRepository ProjectRepository;
	
	//GET PROJECT PAGE//
	@GetMapping("/project/{name}")
	public String showProject(@PathVariable String name, HttpServletRequest request) {
		
		//Get the current project from name
		Project currentProject = ProjectRepository.getByName(name);
		
		//Attribute to communicate to the JSP
		request.setAttribute("currentProject", currentProject);
		
		//Return the JSP
		return "project";
	}
}
