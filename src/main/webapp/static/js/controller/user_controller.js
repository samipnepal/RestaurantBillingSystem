mainApp.controller('UserController', ['$scope', 'UserService', function($scope, UserService){
	var self = this;
	self.user ={id:null, username:'', password:'', userType:'', status:null};
	
	self.createUser = function(user){
		UserService.addUser(user).then(
				function(d){
					self.user=d;
				},
				function(errResponse){
					alert("error");
				}
				);
		
	};
	
	self.submit = function(){
		self.createUser(self.user);
	};
}]);