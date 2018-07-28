package cn.ysu.metadata.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.metadata.dao.DeviceDao;
import cn.ysu.metadata.service.DeviceService;

@Service("deviceService")
public class DeviceServiceImpl implements DeviceService{

	@Resource
	private DeviceDao deviceDao;
	
}
