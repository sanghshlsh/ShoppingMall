package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("main")
public class MainController {
	
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public void mainIndex2() {
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void mainIndex() {
	}

}
