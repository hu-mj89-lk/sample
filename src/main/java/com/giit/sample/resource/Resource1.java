package com.giit.sample.resource;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/r1")
public class Resource1 {

	@RequestMapping(path = "handler1",method = RequestMethod.GET,produces = MediaType.TEXT_PLAIN_VALUE)
	public Object handler1() {
		
		System.out.println("Handler 1 reached");
		
		return "Hey ! I'm resource 1";
	}
}
