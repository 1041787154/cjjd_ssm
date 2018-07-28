package cn.ysu.system.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.system.dao.LogDao;
import cn.ysu.system.service.LogService;

@Service("logService")
public class LogServiceImpl implements LogService{
	
	@Resource
	private LogDao logDao;
}
