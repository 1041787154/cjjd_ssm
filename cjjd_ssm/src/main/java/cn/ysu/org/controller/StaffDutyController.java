package cn.ysu.org.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.org.service.StaffDutyService;

@Controller
@RequestMapping("/org/staffDuty")
public class StaffDutyController {
	
	@Resource
	private StaffDutyService staffDutyService;
	
}
