package cn.ysu.metadata.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.metadata.service.DeviceService;

@Controller
@RequestMapping("/meta/device")
public class DeviceController {
	
	@Resource
	private DeviceService deviceService;
	
	
}
