package cn.ysu.auth.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.auth.dao.PrivilegeDao;
import cn.ysu.auth.service.PrivilegeService;

@Service("privilegeService")
public class PrivilegeServiceImpl implements PrivilegeService{

	@Resource
	private PrivilegeDao privilegeDao;
	

}
