<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profession</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<body>
	<div class="container">


		<!-- Sidebar -->
		<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 10%">
			<h3 class="w3-bar-item">||</h3>
			<a href="/home" class="w3-bar-item w3-button">Home</a> <a
				href="/information" class="w3-bar-item w3-button">Add
				information</a> <a href="/rating" class="w3-bar-item w3-button">Rating</a> <a
				href="/faculty" class="w3-bar-item w3-button">Create faculty</a> <a
				href="/profession" class="w3-bar-item w3-button">Create
				profession</a> <a href="/apply" class="w3-bar-item w3-button">Apply</a>
			<a href="/newApp" class="w3-bar-item w3-button">New App</a>
			<a href="/status"class="w3-bar-item w3-button">My status</a>
		</div>


		<!-- Page Content -->
		<div style="margin-left: 10%">

			<!-- 	<div class="w3-container w3-teal">
				<h1>Rating</h1>
			</div> -->

			<div class="w3-container">

				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
					<h2>
						<a onclick="document.forms['logoutForm'].submit()">LogOut</a>
					</h2>
				</c:if>

				<div>
					<form:form method="POST" action="${contextPath}/addProf"
						modelAttribute="profession">

						<table>


							<tr>
								<td><form:label path="faculty">Faculty</form:label></td>
								<td><form:select path="faculty">

										<c:forEach items="${faculties}" var="curFaculty">
											<form:option value="${curFaculty.id} "> ${curFaculty.name}</form:option>
										</c:forEach>

									</form:select></td>
							</tr>

							<tr>
								<td><form:label path="name">Name</form:label></td>
								<td><form:input path="name" /></td>
							</tr>
							<tr>
								<td><form:label path="planOfStudent">Plan of student</form:label></td>
								<td><form:input path="planOfStudent" /></td>
							</tr>

							<tr>
								<td><input type="submit" value="Submit" /></td>
							</tr>
						</table>

						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form:form>


				</div>
			</div>

		</div>


	</div>
	<!-- /container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>