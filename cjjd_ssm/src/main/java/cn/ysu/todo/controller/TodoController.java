package cn.ysu.todo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.todo.service.TodoService;

@Controller
@RequestMapping("/todo")
public class TodoController {

	@Resource
	private TodoService todoService;
}
