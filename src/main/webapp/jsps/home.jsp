<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-GB">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<title>Home</title>
	</head>
	
	
	
	<body>
		<div id="mainContainer">
			<div id="sideBar">
				<nav id="navBar">
					<a href="#home" class="lightColor">.home()</a>
					<a href="#about" class="lightColor">.about()</a>
					<a href="#work" class="lightColor">.work()</a>
					<a href="#contact" class="lightColor">.contact()</a>
				</nav>
				<a href="https://github.com/YoAMIOT" id="githubLink"><img alt="GitHub Logo" src="${pageContext.request.contextPath}/img/githubLogo.png"/></a>
			</div>
			
			
			
			<div id="main">
				<div id="centered">
					<div id="home" class="scrollAlignCenter">
						<span class="fakeStartTag fakeTag">greetings</span>
						<div id="greetings">
							<h1 class="flashColor">Hi, I am</h1>
							<h2 class="lightColor">Yoann Amiot <img alt="" src="${pageContext.request.contextPath}/img/FR-flag.png" id="frenchFlag">.</h2>
							<p class="darkerLightColor">I'm a french junior web developer and hobbyist game developer.</p>
						</div>
						<span class="fakeEndTag fakeTag" id="greetingsEndTag">greetings</span>
					</div>
					
					
					
					<div id="about" class="scrollAlignCenter">
						<span class="fakeStartTag fakeTag">about</span>
						<div id="aboutWindow">
							<div id="aboutSideBar">
								<a href="#aboutMe" class="lightColor">.aboutMe()</a>
								<a href="#knownTech" class="lightColor">.knownTech()</a>
							</div>
							
							<div id="aboutMain">
								<div id="aboutMe" class="darkerLightColor">
									<div id="desc">
										<h2 class="lightColor">About Me:</h2>
										<br>
										<p>I'm Yoann AMIOT, a junior fullstack web developer and hobbyist game developer. Since I was a child, I've always been in love with computers and science!.</p>
										<br>
										<p>I started my coding journey in 2016, with a bit of C# on the Unity game engine, then 4 years later I followed a 5 month training	centered on Java Enterprise Edition including a 3 weeks traineeship, I am now looking for a job an furthermore I'm looking to work on exciting project with a large spectrum of technologies!</p>
										<br>
										<p>While looking for the perfect fit I'm actively coding video games projects and web projects also I'm frequently on game jams! Follow me on <a href="https://github.com/YoAMIOT" class="flashColor">Github</a>!</p>
									</div>
								</div>
								
								<div id="knownTech">
									<div id="softwares" class="techContainer darkerLightColor">
										<ul>
											<li><h3 class="lightColor">Software:</h3></li>
											<li>Eclipse IDE</li>
											<li>VSC</li>
											<li>Godot Engine</li>
											<li>Blender</li>
											<li>Photoshop</li>
											<li>Krita</li>
											<li>Aseprite</li>
										</ul>
									</div>
									
									<div id="languages" class="techContainer darkerLightColor">
										<ul>
											<li><h3 class="lightColor">Languages:</h3></li>
											<li>Java / JEE</li>
											<li>GDScript</li>
											<li>PHP (Beginner)</li>
											<li>C# (Beginner)</li>
											<li>SQL</li>
											<li>HTML</li>
											<li>CSS</li>
											<li>Javascript</li>
											<li>Typescript</li>
											<li>Bash</li>
										</ul>
									</div>
									
									<div id="environment" class="techContainer darkerLightColor">
										<ul>
											<li><h3 class="lightColor">Other:</h3></li>
											<li>Windows</li>
											<li>Linux</li>
											<li>MVC</li>
											<li>Spring-Boot</li>
											<li>Hibernate</li>
											<li>GIT</li>
											<li>Angular (Beginner)</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<span class="fakeEndTag fakeTag" id="aboutEndTag">about</span>
					</div>
					
					
					
					<div id="work" class="scrollAlignCenter">
						<span class="fakeStartTag fakeTag">work</span>
						<div id="projectsContainer">
							<c:if test="${anyProjectExists == true}">
								<c:forEach var="p" items="${Projects}" varStatus="status">
									<div class="projectContainer">							
										<a href="${pageContext.request.contextPath}/project/${p.getName()}"><img alt="${p.getName()}" src="${pageContext.request.contextPath}/img/projects/${p.getName()}/${p.getMainPicture()}" class="projectPic"></a>
										<c:choose>
											<c:when test="${status.count == 1 || status.count == 5 || status.count == 9 || status.count == 13}">
												<p class="projectText lightColor projectColumn1">${p.getName()}</p>
											</c:when>
											<c:when test="${status.count == 2 || status.count == 6 || status.count == 10 || status.count == 14}">
												<p class="projectText lightColor projectColumn2">${p.getName()}</p>
											</c:when>
											<c:when test="${status.count == 3 || status.count == 7 || status.count == 11 || status.count == 15}">
												<p class="projectText lightColor projectColumn3">${p.getName()}</p>
											</c:when>
											<c:when test="${status.count == 4 || status.count == 8 || status.count == 12 || status.count == 16}">
												<p class="projectText lightColor projectColumn4">${p.getName()}</p>
											</c:when>
										</c:choose>
									</div>
								</c:forEach>
							</c:if>
						</div>
						<span class="fakeEndTag fakeTag" id="workEndTag">work</span>
					</div>
					
					
					
					<div id="contact" class="scrollAlignCenter">
						<span class="fakeStartTag fakeTag">contact</span>
						<div id="socials">
							<h2 class="lightColor">Feel free to reach me!</h2>
							<div id="socialContainer">
								<a href="https://www.fb.me/msg/amiot.yoann"><img alt="Facebook logo" src="${pageContext.request.contextPath}/img/facebookLogo.png"/></a>
								<a href="https://www.linkedin.com/in/yoannamiot/"><img alt="LinkedIn logo" src="${pageContext.request.contextPath}/img/linkedInLogo.png"/></a>
								<a href="mailto:yoann.amiot.dev@gmail.com"><img alt="Mail logo" src="${pageContext.request.contextPath}/img/emailLogo.png"/></a>
							</div>
						</div>
						<span class="fakeEndTag fakeTag" id="contactEndTag">contact</span>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>