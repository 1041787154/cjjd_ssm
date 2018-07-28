package cn.ysu.org.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.org.dao.StaffDao;
import cn.ysu.org.service.StaffService;

@Service("staffService")
public class StaffServiceImpl implements StaffService{

	@Resource
	private StaffDao staffDao;
	
}
