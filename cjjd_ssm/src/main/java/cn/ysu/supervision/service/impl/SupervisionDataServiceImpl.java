package cn.ysu.supervision.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.supervision.dao.SupervisionDataDao;
import cn.ysu.supervision.service.SupervisionDataService;

@Service("supervisionDataService")
public class SupervisionDataServiceImpl implements SupervisionDataService{

	@Resource
	private SupervisionDataDao supervisionDataDao;
}
