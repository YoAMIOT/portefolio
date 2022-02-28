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
								<div id="aboutMe">

								</div>
								<div id="knownTech">
								
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