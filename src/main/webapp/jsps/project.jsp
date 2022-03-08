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
			<div id="descriptionContainer">
				<p class="darkerLightColor">${currentProject.getDesciption()}</p>
				<br>
				<p class="lightColor">${currentProject.getTechs()}</p>
				<c:if test="${currentProject.getGithubLink() != null}">		
					<a class="flashColor" href="${currentProject.getGithubLink()}">Github</a>
				</c:if>
			</div>
			<div id="picturesContainer">
				<img alt="Project picture" src="${pageContext.request.contextPath}/img/projects/${currentProject.getName()}/${currentProject.getMainPicture()}">
			</div>
		</div>
	</body>
</html>