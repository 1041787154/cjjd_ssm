package cn.ysu.org.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.org.dao.DepartmentDao;
import cn.ysu.org.service.DepartmentService;

@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService{

	@Resource
	private DepartmentDao depertmentDao;
}
