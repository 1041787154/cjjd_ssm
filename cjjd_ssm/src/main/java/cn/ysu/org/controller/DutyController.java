package cn.ysu.org.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.org.service.DutyService;

@Controller
@RequestMapping("/org/duty")
public class DutyController {
	
	@Resource
	private DutyService dutyService;
	
}
