package cn.ysu.supervision.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.supervision.dao.SupervisionTaskDao;
import cn.ysu.supervision.service.SupervisionTaskService;

@Service("supervisionTaskService")
public class SupervisionTaskServiceImpl implements SupervisionTaskService{

	@Resource
	private SupervisionTaskDao supervisionTaskDao;
}
