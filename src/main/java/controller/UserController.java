package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;

	@GetMapping("/list")
	public ModelAndView findAll() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("users", service.findAllUsers());
		mv.setViewName("user/list");
		return mv;
	}
}
