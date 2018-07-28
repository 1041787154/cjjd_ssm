package cn.ysu.system.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.system.service.DataOperationService;

@Controller
@RequestMapping("/system/dataOperation")
public class DataOperationController {

	@Resource
	private DataOperationService dataOperationService;
}
