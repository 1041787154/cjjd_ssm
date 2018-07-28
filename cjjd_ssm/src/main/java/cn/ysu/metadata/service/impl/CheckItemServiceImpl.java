package cn.ysu.metadata.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.metadata.dao.CheckItemDao;
import cn.ysu.metadata.service.CheckItemService;

@Service("checkItemService")
public class CheckItemServiceImpl implements CheckItemService{

	@Resource
	private CheckItemDao checkItemDao;
	
}
