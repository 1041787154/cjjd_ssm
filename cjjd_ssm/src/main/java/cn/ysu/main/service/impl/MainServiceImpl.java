package cn.ysu.main.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.main.dao.LoginUserDao;
import cn.ysu.main.dao.MenuPrivilegeDao;
import cn.ysu.main.model.LoginUserModel;
import cn.ysu.main.model.MenuPrivilegeModel;
import cn.ysu.main.service.MainService;

@Service("mainService")
public class MainServiceImpl implements MainService{
	
	@Resource
	private LoginUserDao loginUserDao;
	@Resource
	private MenuPrivilegeDao menuPrivilegeDao;

	public String findMenuPrivilegeJson(LoginUserModel loginUser) {
		List<MenuPrivilegeModel> mpList = null;
		
		if(loginUser.getStaffType() == 0){// 超级管理员用户查询全部
			mpList = menuPrivilegeDao.selectAdminMenuPrivilege();
		}else{// 其他用户按角色和用户权限查询
			mpList = menuPrivilegeDao.selectUserMenuPrivilege(loginUser.getRoleId(), loginUser.getUserId());
		}
		
		/* 装换成json格式字符串 */
		StringBuilder sb = new StringBuilder();
		Map<String, String> moduleMap = new LinkedHashMap<String, String>();
		
		for(MenuPrivilegeModel mp: mpList){
			String module = mp.getModuleName();
			if(!moduleMap.containsKey(module)){
				moduleMap.put(module, "module_" + mp.getModuleId());
				sb.append("{id:'").append(moduleMap.get(module)).append("', text:'")
					.append(module).append("', iconCls:'icon-folder'},");
			}
			sb.append("{id:'privilege_").append(mp.getPrivilegeId()).append("', pid:'")
				.append(moduleMap.get(module)).append("', text:'").append(mp.getPrivilegeName())
				.append("', iconCls:'icon-expand', url:'").append(mp.getUrl()).append("'},");
		}
		
		return sb.toString();
	}

	public Object findUserLogin(String username, String password) {
		return loginUserDao.selectUserLogin(username, password);
	}

}
