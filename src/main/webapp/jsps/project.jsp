<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-GB">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<title>${currentProject.getName()}</title>
	</head>
	
	
	
	<body>
		<nav>
			<a href="${pageContext.request.contextPath}" class="lightColor" id="backArrow">&lt--</a>		
		</nav>
		<div id="projectShowcase">
			<h1 class="lightColor">${currentProject.getName()}</h1>
			<div id="dataContainer">
				<div id="descriptionContainer">
					<div class="darkerLightColor" id="projectDescription"><p>${currentProject.getDesciption()}</p></div>
					<br>
					<p class="lightColor" id="projectTechs">${currentProject.getTechs()}</p>
					<c:if test="${currentProject.getGithubLink() != null}">		
						<a class="flashColor" id="projectGithubLink" href="${currentProject.getGithubLink()}"><img alt="GitHub Logo" src="${pageContext.request.contextPath}/img/githubLogo.png"/></a>
					</c:if>
				</div>
				<div id="projectPicturesContainer">
					<div id="pictures">
						<img id="mainPicture" alt="Project picture" src="${pageContext.request.contextPath}/img/projects/${currentProject.getName()}/${currentProject.getMainPicture()}">
						<c:if test="${currentProject.picture2 != null}">
							<img id="secondPicture" alt="Project picture2" src="${pageContext.request.contextPath}/img/projects/${currentProject.getName()}/${currentProject.getPicture2()}">
						</c:if>
						<c:if test="${currentProject.picture3 != null}">
							<img id="thirdPicture" alt="Project picture3" src="${pageContext.request.contextPath}/img/projects/${currentProject.getName()}/${currentProject.getPicture3()}">
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>