package cn.ysu.main.dao;

import org.apache.ibatis.annotations.Param;

import cn.ysu.main.model.LoginUserModel;

public interface LoginUserDao {
	
	public LoginUserModel selectUserLogin(@Param("username")String username, @Param("password")String password);

}
