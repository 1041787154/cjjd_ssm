package cn.ysu.supervision.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.supervision.service.SupervisionTaskService;

@Controller
@RequestMapping("/supervision/task")
public class SupervisionTaskController {
	
	@Resource
	private SupervisionTaskService supervisionTaskService;
}
