package cn.ysu.metadata.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.metadata.service.LoggingTeamService;

@Controller
@RequestMapping("/meta/loggingTeam")
public class LoggingTeamController {
	
	@Resource
	private LoggingTeamService loggingTeamService;
	
	
}
