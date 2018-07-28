package cn.ysu.supervision.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.supervision.service.SupervisionCheckService;

@Controller
@RequestMapping("/supervision/check")
public class SupervisionCheckController {
	
	@Resource
	private SupervisionCheckService supervisionCheckService;
}
