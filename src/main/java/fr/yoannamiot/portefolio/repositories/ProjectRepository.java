package fr.yoannamiot.portefolio.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.yoannamiot.portefolio.entities.Project;
import java.util.List;

public interface ProjectRepository extends JpaRepository<Project, Integer>{
	//Parse DB searching for any existing project
	@Query(value = "SELECT IF (COUNT(*) > 0, 'true', 'false') FROM project", nativeQuery = true)
	boolean anyProjectExists();
	
	//Get all projects
	@Query(value = "SELECT * FROM project ORDER BY id DESC", nativeQuery = true)
	List<Project> findAllProjects();
	
	//Get one project by it's name//
	@Query(value = "SELECT * FROM project WHERE name = ?1", nativeQuery = true)
	Project getByName(String name);
}
