package cn.ysu.system.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.system.dao.DataOperationDao;
import cn.ysu.system.service.DataOperationService;

@Service("dataOperationService")
public class DataOperationServiceImpl implements DataOperationService{
	
	@Resource
	private DataOperationDao dataOperationDao;
}
