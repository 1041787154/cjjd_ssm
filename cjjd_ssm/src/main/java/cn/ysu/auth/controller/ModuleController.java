package cn.ysu.auth.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ysu.auth.model.ModuleModel;
import cn.ysu.auth.service.ModuleService;
import cn.ysu.common.json.PagerJson;

@Controller
@RequestMapping("/auth/module")
public class ModuleController {
	
	@Resource
	private ModuleService moduleService;
	
	@RequestMapping("")
	public String index() {
		return "auth/module/module";
	}
	
	@ResponseBody
	@RequestMapping(value="list", produces = "application/json")
	public Object list(@RequestParam(value="pageIndex", required=true) Integer pageIndex, 
			@RequestParam(value="pageSize", required=true) Integer pageSize) {
		PagerJson pager = moduleService.findModulePager(pageIndex, pageSize);
		return pager;
	}
	
	@ResponseBody
	@RequestMapping(value="combo", produces = "application/json")
	public Object combo() {
		return moduleService.findModuleCombo();
	}
	
	@ResponseBody
	@RequestMapping(value="add", produces = "application/json")
	public Object add(ModuleModel module) {
		return moduleService.createModule(module);
	}
	
	@ResponseBody
	@RequestMapping(value="del", produces = "application/json")
	public Object del(@RequestParam(value="id", required=true) Integer id) {
		return moduleService.removeById(id);
	}
	
	@ResponseBody
	@RequestMapping(value="get", produces = "application/json")
	public Object get(@RequestParam(value="id", required=true) Integer id) {
		return moduleService.findById(id);
	}
	
	@ResponseBody
	@RequestMapping(value="save", produces = "application/json")
	public Object save(ModuleModel module) {
		return moduleService.changeModule(module);
	}
}
