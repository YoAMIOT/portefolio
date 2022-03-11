package fr.yoannamiot.portefolio.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Project {
		
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(unique = true, nullable = false)
	private String name;

	@Column(nullable = false)
	private String desciption;
	
	@Column(nullable = false)
	private String mainPicture;
	
	@Column
	private String detailedPicture;
	
	@Column
	private String techs;
	
	@Column
	private String githubLink;
	
	
	
	//Constructors
	public Project() {
		super();
	}

	public Project(int id, String name, String desciption, String mainPicture, String detailedPicture, String techs,
			String githubLink) {
		super();
		this.id = id;
		this.name = name;
		this.desciption = desciption;
		this.mainPicture = mainPicture;
		this.detailedPicture = detailedPicture;
		this.techs = techs;
		this.githubLink = githubLink;
	}



	//To-String
	@Override
	public String toString() {
		return "Project [id=" + id + ", name=" + name + ", desciption=" + desciption + ", mainPicture=" + mainPicture
				+ ", detailedPicture=" + detailedPicture + ", techs=" + techs + ", githubLink=" + githubLink + "]";
	}
	

	
	
	//Getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesciption() {
		return desciption;
	}

	public void setDesciption(String desciption) {
		this.desciption = desciption;
	}

	public String getMainPicture() {
		return mainPicture;
	}

	public void setMainPicture(String mainPicture) {
		this.mainPicture = mainPicture;
	}

	public String getTechs() {
		return techs;
	}

	public void setTechs(String techs) {
		this.techs = techs;
	}
	
	public String getGithubLink() {
		return githubLink;
	}

	public void setGithubLink(String githubLink) {
		this.githubLink = githubLink;
	}

	public String getDetailedPicture() {
		return detailedPicture;
	}

	public void setDetailedPicture(String detailedPicture) {
		this.detailedPicture = detailedPicture;
	}
}
