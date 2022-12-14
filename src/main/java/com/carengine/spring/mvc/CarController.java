package com.carengine.spring.mvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/car")
public class CarController {
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		Car car = new Car();
		model.addAttribute("car", car);
		
		return "app";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("car") Car theCar,
			BindingResult theResult) {
	
		System.out.println("Binding result: " + theResult);
		if(theResult.hasErrors()) {
			return "app";
		}
		else {
			return "car-confirmation";
		}
		
	}
	
	// to trim blank spaces from beggining and end of String
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
}
