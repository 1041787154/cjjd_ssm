package cn.ysu.metadata.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.metadata.service.CheckItemService;

@Controller
@RequestMapping("/meta/checkItem")
public class CheckItemController {
	
	@Resource
	private CheckItemService checkItemService;
	
	
}
