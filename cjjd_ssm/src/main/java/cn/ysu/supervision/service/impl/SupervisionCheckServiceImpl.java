package cn.ysu.supervision.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.supervision.dao.SupervisionCheckDao;
import cn.ysu.supervision.service.SupervisionCheckService;

@Service("supervisionCheckService")
public class SupervisionCheckServiceImpl implements SupervisionCheckService{

	@Resource
	private SupervisionCheckDao supervisionCheckDao;
}
