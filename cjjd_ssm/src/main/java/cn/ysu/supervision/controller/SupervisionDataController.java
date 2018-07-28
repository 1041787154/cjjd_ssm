package cn.ysu.supervision.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.supervision.service.SupervisionDataService;

@Controller
@RequestMapping("/supervision/data")
public class SupervisionDataController {
	
	@Resource
	private SupervisionDataService supervisionDataService;
}
