package cn.ysu.todo.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.todo.dao.TodoDao;
import cn.ysu.todo.service.TodoService;

@Service("todoService")
public class TodoServiceImpl implements TodoService{
	
	@Resource
	private TodoDao todoDao;
}
