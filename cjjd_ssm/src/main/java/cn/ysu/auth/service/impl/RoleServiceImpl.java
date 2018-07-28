package cn.ysu.auth.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.auth.dao.RoleDao;
import cn.ysu.auth.service.RoleService;

@Service("roleService")
public class RoleServiceImpl implements RoleService{

	@Resource
	private RoleDao roleDao;
	

}
