<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>AngularJS $http Example</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value='/static/css/style.css' />" rel="stylesheet"></link>
</head>
<body ng-app="mainApp">

	<div class="login-page" ng-controller="userController as ctrl">
		<div class="form">
			<form class="register-form" ng-submit="ctrl.submit()" name="userRegisterForm" >
				
				
				
				<input type="hidden" ng-model="ctrl.user.id" />
				
				 <input type="text"	placeholder="username" ng-model="ctrl.user.username" id="username" required ng-minlength="3"> 
				 <div class="has-error" ng-show="userRegisterForm.$dirty">
                                      <span ng-show="userRegisterForm.username.$error.required">This is a required field</span>
                                      <span ng-show="userRegisterForm.username.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="userRegisterForm.username.$invalid">This field is invalid </span>
                                  </div> 
				 
				 
				 
				 <input	type="password" placeholder="password" ng-model="ctr..user.password">
				 
				 <input	type="hidden" ng-model="ctr.user.userType">
				 
				 <input	type="hidden" ng-model="ctr.user.status">

				<button ng-disabled="userRegisterForm.$invalid">Register</button>
				
				
				
				
				
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form class="login-form">
				<input type="text" placeholder="username" /> <input type="password"
					placeholder="password" />
				<button>login</button>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/static/js/app.js' />"></script>
	<script src="<c:url value='/static/js/service/user_service.js' />"></script>
	<script
		src="<c:url value='/static/js/controller/user_controller.js' />"></script>
	<script src="<c:url value='/static/js/userForm.js' />"></script>


</body>
</html>