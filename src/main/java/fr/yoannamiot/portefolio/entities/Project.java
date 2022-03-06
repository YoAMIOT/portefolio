package fr.yoannamiot.portefolio.entities;

import java.util.ArrayList;

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
	
	@Column(nullable = false)
	private String name;
	
	@Column(nullable = false)
	private String shortDescription;
	
	@Column(nullable = false)
	private String mainPicture;
	
	@Column(nullable = false)
	private String completeDesciption;
	
	@Column
	private ArrayList<String> Techs = new ArrayList<String>();
	
	@Column
	private ArrayList<String> PicturesPath = new ArrayList<String>();

	
	
	//EmptyConstructor
	public Project() {
		super();
	}



	//Complete Constructor
	public Project(int id, String name, String shortDescription, String mainPicture, String completeDesciption,
			ArrayList<String> techs, ArrayList<String> picturesPath) {
		super();
		this.id = id;
		this.name = name;
		this.shortDescription = shortDescription;
		this.mainPicture = mainPicture;
		this.completeDesciption = completeDesciption;
		Techs = techs;
		PicturesPath = picturesPath;
	}



	//To String
	@Override
	public String toString() {
		return "Project [id=" + id + ", name=" + name + ", shortDescription=" + shortDescription + ", mainPicture="
				+ mainPicture + ", completeDesciption=" + completeDesciption + ", Techs=" + Techs + ", PicturesPath="
				+ PicturesPath + "]";
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

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getMainPicture() {
		return mainPicture;
	}

	public void setMainPicture(String mainPicture) {
		this.mainPicture = mainPicture;
	}

	public String getCompleteDesciption() {
		return completeDesciption;
	}

	public void setCompleteDesciption(String completeDesciption) {
		this.completeDesciption = completeDesciption;
	}

	public ArrayList<String> getTechs() {
		return Techs;
	}

	public void setTechs(ArrayList<String> techs) {
		Techs = techs;
	}

	public ArrayList<String> getPicturesPath() {
		return PicturesPath;
	}

	public void setPicturesPath(ArrayList<String> picturesPath) {
		PicturesPath = picturesPath;
	}
}
