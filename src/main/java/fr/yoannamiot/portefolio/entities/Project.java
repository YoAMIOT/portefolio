package fr.yoannamiot.portefolio.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Project {
	
	//An internal signing site made in 3 weeks during a traineeship, this project was made to be used by schools and training centers. The trainee can log in and sign to attest it's presence, the trainer can counter-sign at the end of the day, and the headmaster can check everything, modify and create other training or users. In 3 weeks I had to focus on back-end mainly, but i also tried to do a working and functionnal front-end
	
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
	private String picture2;
	
	@Column
	private String picture3;
	
	@Column
	private String techs;
	
	@Column
	private String githubLink;
	
	
	
	//EmptyConstructor
	public Project() {
		super();
	}
	
	public Project(int id, String name, String desciption, String mainPicture, String picture2, String picture3,
			String techs, String githubLink) {
		super();
		this.id = id;
		this.name = name;
		this.desciption = desciption;
		this.mainPicture = mainPicture;
		this.picture2 = picture2;
		this.picture3 = picture3;
		this.techs = techs;
		this.githubLink = githubLink;
	}



	//To-String
	@Override
	public String toString() {
		return "Project [id=" + id + ", name=" + name + ", desciption=" + desciption + ", mainPicture=" + mainPicture
				+ ", picture2=" + picture2 + ", picture3=" + picture3 + ", techs=" + techs + ", githubLink="
				+ githubLink + "]";
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

	public String getPicture2() {
		return picture2;
	}

	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}

	public String getPicture3() {
		return picture3;
	}

	public void setPicture3(String picture3) {
		this.picture3 = picture3;
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

}
