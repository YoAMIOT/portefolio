<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<title>Home</title>
	</head>
	
	
	
	<body>
		<div id="mainContainer">
			<div id="sideBar">
				<nav id="navBar">
					<ul>
						<li><a href="#home" class="lightColor">.home()</a></li>
						<li><a href="#about" class="lightColor">.about()</a></li>
						<li><a href="#work" class="lightColor">.work()</a></li>
						<li><a href="#contact" class="lightColor">.contact()</a></li>
					</ul>
				</nav>
			</div>
			
			
			
			<div id="main">
				<div id="centered">
					<div id="home" class="scrollAlignCenter">
						<span class="fakeStartTag fakeTag">greetings</span>
						<div id="greetings">
							<h1 class="flashColor">Hi, I am</h1>
							<h2 class="lightColor">Yoann Amiot.</h2>
							<p class="darkerLightColor">I'm a french junior web developer and hobbyist game developer.</p>
						</div>
						<span class="fakeEndTag fakeTag" id="greetingsEndTag">greetings</span>
					</div>
					
					<div id="about" class="scrollAlignCenter">
						<span class="fakeStartTag fakeTag">about</span>
						<div id="aboutWindow">
							<div id="aboutSideBar">
								<ul>
									<li><a href="#aboutMe" class="lightColor">.aboutMe()</a></li>
									<li><a href="#knownTech" class="lightColor">.knownTech()</a></li>
								</ul>
							</div>
							
							<div id="aboutMain">
								<div id="aboutMe" class="darkerLightColor">
									<div id="glb">
										<h2 class="lightColor">About Me:</h2>
										<br>
										<p>I'm Yoann AMIOT, a junior fullstack web developer. Since I was a child, I've always been in love with computer technologies.</p>
										<br>
										<p>After a 5 month training	centered on Java Enterprise Edition and a 3 weeks traineeship I am now looking to work on exiting project with a large spectrum of technologies!</p>
										<br>
										<p>While looking for the perfect fit I'm actively coding video game projects and web projects! Follow me on <a href="https://github.com/YoAMIOT" class="flashColor">Github</a>!</p>
									</div>
								</div>
								<div id="knownTech">
									<div id="softwares" class="techContainer darkerLightColor">
										<ul>
											<li><h3>Software:</h3></li>
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
											<li><h3>Languages:</h3></li>
											<li>Java / JEE</li>
											<li>PHP (Beginner)</li>
											<li>C# (Beginner)</li>
											<li>SQL</li>
											<li>HTML</li>
											<li>CSS</li>
											<li>Javascript</li>
											<li>Typescript</li>
											<li>GDScript</li>
											<li>Bash</li>
										</ul>
									</div>
									<div id="environment" class="techContainer darkerLightColor">
										<ul>
											<li><h3>Other:</h3></li>
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
						<span class="fakeEndTag fakeTag" id="workEndTag">work</span>
					</div>
					
					<div id="contact" class="scrollAlignCenter">
						<span class="fakeStartTag fakeTag">contact</span>
						<span class="fakeEndTag fakeTag" id="contactEndTag">contact</span>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>