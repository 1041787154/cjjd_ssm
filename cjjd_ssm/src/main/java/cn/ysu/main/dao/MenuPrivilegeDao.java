package cn.ysu.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ysu.main.model.MenuPrivilegeModel;

public interface MenuPrivilegeDao {
	
	public List<MenuPrivilegeModel> selectAdminMenuPrivilege();
	
	public List<MenuPrivilegeModel> selectUserMenuPrivilege(@Param("roleId") Integer roleId, @Param("userId") Integer userId);
}
