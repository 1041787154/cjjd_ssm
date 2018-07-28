package cn.ysu.org.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.org.dao.DutyDao;
import cn.ysu.org.service.DutyService;

@Service("dutyService")
public class DutyServiceImpl implements DutyService{

	@Resource
	private DutyDao dutyDao;
}
