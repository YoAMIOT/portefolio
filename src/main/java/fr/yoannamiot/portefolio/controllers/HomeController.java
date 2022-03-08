package fr.yoannamiot.portefolio.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import fr.yoannamiot.portefolio.repositories.ProjectRepository;
import fr.yoannamiot.portefolio.entities.Project;

@Controller
public class HomeController {
	
	@Autowired
    private ProjectRepository ProjectRepository;
	
	//GET HOME PAGE//
	@GetMapping(path={"","/home"})
	public String showHome(HttpServletRequest request) {
		//List to store all the projects
		List <Project> Projects = new ArrayList<Project>();
		
		//Parse DB to find any existing project
		boolean anyProjectExists = ProjectRepository.anyProjectExists();

		//If a project exists
		if(anyProjectExists == true) {
			//Get all projects
			Projects = ProjectRepository.findAllProjects();
			//If there's more than 16 projects
			if(Projects.size() > 16) {
				//Truncate the oldest ones
				Projects = Projects.subList(0, 16);
			}
		}
		
		//Attributes to communicate to the JSP
		request.setAttribute("anyProjectExists", anyProjectExists);
		request.setAttribute("Projects", Projects);
		
		//Return the JSP
		return "home";
	}
}
