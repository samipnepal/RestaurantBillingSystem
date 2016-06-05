<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS $http Example</title>  
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/style.css' />" rel="stylesheet"></link>
  </head>
  <body ng-app="mainApp">
  
  <div class="login-page" ng-controller="UserController as ctrl">
		<div class="form">
			<form class="login-form" ng-submit="ctrl.submit()" name="loginForm">
			
			
			<div ng-class="{ 'has-error' : userForm.name.$invalid && !userForm.name.$pristine }">
				<input type="text" placeholder="username" ng-model="ctrl.user.username" name="username" required ng-minlength="5" ng-maxlength="8" /> 
				<p ng-show="loginForm.username.$error.minlength" class="help-block">Username is too short.</p>
           		<p ng-show="c.username.$error.maxlength" class="help-block">Username is too long.</p>
			
				
				<input type="password"	placeholder="password" />
				</div>
				
				
				
				<button ng-disabled="loginForm.$invalid">login</button>
				
				
				
				
				
				
			</form>
		</div>
	</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
        <script src="<c:url value='/static/js/userForm.js' />"></script>
  
  
  </body>
  </html>