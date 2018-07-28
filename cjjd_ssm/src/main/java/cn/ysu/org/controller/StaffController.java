package cn.ysu.org.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.org.service.StaffService;

@Controller
@RequestMapping("/org/staff")
public class StaffController {
	
	@Resource
	private StaffService staffService;
	
}
