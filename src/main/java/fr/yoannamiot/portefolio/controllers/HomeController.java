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
		
		//Insert Test Query
		//INSERT INTO project (id, complete_desciption, main_picture, name) VALUES (0, 'some desc', 'mainPic', 'Test1'),(1,'description','mainPic','Test2'), (2,'description','mainPic','Test3'), (3,'description','mainPic','Test4'), (4,'description','mainPic','Test5'), (5,'description','mainPic','Test6'), (6,'description','mainPic','Test7'), (7,'description','mainPic','Test8'), (8,'description','mainPic','Test9'),(9,'description','mainPic','Test10'), (10,'description','mainPic','Test11'), (11,'description','mainPic','Test12'), (12,'description','mainPic','Test13'), (13,'description','mainPic','Test14'), (14,'description','mainPic','Test15'), (15,'description','mainPic','Test16'), (16,'description','mainPic','Test17');
		
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
