package cn.ysu.auth.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.auth.dao.AuthorityDao;
import cn.ysu.auth.service.AuthorityService;

@Service("authorityService")
public class AuthorityServiceImpl implements AuthorityService{

	@Resource
	private AuthorityDao authorityDao;
	
}
