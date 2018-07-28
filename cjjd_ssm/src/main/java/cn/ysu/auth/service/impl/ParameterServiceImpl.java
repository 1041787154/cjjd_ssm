package cn.ysu.auth.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.auth.dao.ParameterDao;
import cn.ysu.auth.service.ParameterService;

@Service("parameterService")
public class ParameterServiceImpl implements ParameterService{

	@Resource
	private ParameterDao parameterDao;
	
}
