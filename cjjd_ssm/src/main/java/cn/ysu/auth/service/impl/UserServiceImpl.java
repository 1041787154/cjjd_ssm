package cn.ysu.auth.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.auth.dao.UserDao;
import cn.ysu.auth.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;
	
}
