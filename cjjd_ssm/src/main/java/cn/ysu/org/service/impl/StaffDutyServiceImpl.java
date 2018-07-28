package cn.ysu.org.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.org.dao.StaffDutyDao;
import cn.ysu.org.service.StaffDutyService;

@Service("staffDutyService")
public class StaffDutyServiceImpl implements StaffDutyService{

	@Resource
	private StaffDutyDao staffDutyDao;
}
