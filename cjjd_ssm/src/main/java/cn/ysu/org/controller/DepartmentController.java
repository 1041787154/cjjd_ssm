package cn.ysu.org.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.org.service.DepartmentService;

@Controller
@RequestMapping("/org/depart")
public class DepartmentController {
	
	@Resource
	private DepartmentService departmentService;
	
}
