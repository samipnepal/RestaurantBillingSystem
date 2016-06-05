package com.restaurant.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

import com.restaurant.bean.User;
import com.restaurant.service.UserService;

@Controller
public class UserRegistration {
	UserService userService = new UserService();
	

	@RequestMapping(value="/userRegistration", method = RequestMethod.POST, consumes = {"application/json;charset=UTF-8"}, produces={"application/json;charset=UTF-8"})
	public ResponseEntity<Void> createUser(@RequestBody User user, UriComponentsBuilder ucBuilder){
		
		User getUser= userService.saveUser(user);
		if(getUser!=null){
			System.out.println(user.getUsername());
			return new ResponseEntity<Void>(HttpStatus.OK);
		}
		return new ResponseEntity<Void>(HttpStatus.CREATED);
		
	}

}
