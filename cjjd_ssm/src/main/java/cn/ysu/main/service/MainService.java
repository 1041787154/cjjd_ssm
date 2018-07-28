package cn.ysu.main.service;


import cn.ysu.main.model.LoginUserModel;

public interface MainService {
	
	public Object findUserLogin(String username, String password);
	
	public String findMenuPrivilegeJson(LoginUserModel loginUser);

}
