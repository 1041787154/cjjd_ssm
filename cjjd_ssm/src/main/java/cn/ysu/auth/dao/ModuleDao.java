package cn.ysu.auth.dao;

import java.util.List;

import cn.ysu.auth.model.ModuleModel;
import cn.ysu.common.structure.Combo;

public interface ModuleDao {
	
	public List<ModuleModel> selectModuleList();
	
	public List<Combo> selectModuleCombo();
	
	public ModuleModel selectById(Integer id);
	
	public Integer insert(ModuleModel module);
	
	public Integer deleteById(Integer id);
	
	public Integer update(ModuleModel module);
	
}
