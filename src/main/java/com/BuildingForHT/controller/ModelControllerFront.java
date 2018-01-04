package com.BuildingForHT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BuildingForHT.service.ModelServiceFront;

@Controller
@RequestMapping("/ModelF")
public class ModelControllerFront {

	@Autowired
	private ModelServiceFront modelInstance;
}
