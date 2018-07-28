package cn.ysu.metadata.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.metadata.dao.LoggingTeamDao;
import cn.ysu.metadata.service.LoggingTeamService;

@Service("loggingTeamService")
public class LoggingTeamServiceImpl implements LoggingTeamService{
	
	@Resource
	private LoggingTeamDao loggingTeamDao;
}
