package cn.ysu.system.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.system.service.LogService;

@Controller
@RequestMapping("/system/log")
public class LogController {

	@Resource
	private LogService logService;
}
