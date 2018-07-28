package cn.ysu.auth.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ysu.auth.model.FunctionModel;
import cn.ysu.auth.service.FunctionService;
import cn.ysu.common.json.PagerJson;
import cn.ysu.common.structure.ParamMap;

@Controller
@RequestMapping("/auth/function")
public class FunctionController {
	
	@Resource
	private FunctionService functionService;
	
	@ResponseBody
	@RequestMapping(value="list", produces = "application/json")
	public Object list(@RequestParam(value="pageIndex", required=true) Integer pageIndex, 
			@RequestParam(value="pageSize", required=true) Integer pageSize,
			@RequestParam(value="moduleId", required=false) Integer moduleId,
			@RequestParam(value="functionName", required=false) String functionName) {
		/* 封装参数 */
		Map<String, Object> paramMap = new ParamMap().append("moduleId", moduleId)
				.append("functionName", functionName).map();
		/* 执行查询 */
		PagerJson pager = functionService.findFunctionPager(pageIndex, pageSize, paramMap);
		return pager;
	}
	
	@ResponseBody
	@RequestMapping(value="combo", produces = "application/json")
	public Object combo() {
		return functionService.findFunctionCombo();
	}
	
	@ResponseBody
	@RequestMapping(value="add", produces = "application/json")
	public Object add(FunctionModel function) {
		return functionService.createFunction(function);
	}
	
	@ResponseBody
	@RequestMapping(value="del", produces = "application/json")
	public Object del(@RequestParam(value="id", required=true) Integer id) {
		return functionService.removeById(id);
	}
	
	@ResponseBody
	@RequestMapping(value="get", produces = "application/json")
	public Object get(@RequestParam(value="id", required=true) Integer id) {
		return functionService.findById(id);
	}
	
	@ResponseBody
	@RequestMapping(value="save", produces = "application/json")
	public Object save(FunctionModel function) {
		return functionService.changeFunction(function);
	}
	
}
