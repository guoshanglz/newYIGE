package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController01 {
	@RequestMapping("/check.form")
	public String printWelcome() {
		return "check01";
	}
}