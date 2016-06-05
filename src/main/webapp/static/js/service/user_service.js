mainApp.factory("UserService", ["$http","$q", function($http,$q){
	return {
		addUser: function(user){
			console.log(user);
			return $http.post('http://localhost:8080/RestaurantBilling/userRegistration/', user)
				.then(
						function(response){
							alert("success");
							return response.data;
						},
						function(errResponse){
							return $q.reject(errResponse);
						}
					);
			
		}
	};
	
}]);