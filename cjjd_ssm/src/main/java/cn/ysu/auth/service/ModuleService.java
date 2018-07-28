package cn.ysu.auth.service;

import java.util.List;

import cn.ysu.auth.model.ModuleModel;
import cn.ysu.common.json.PagerJson;
import cn.ysu.common.structure.Combo;

public interface ModuleService {
	
	public ModuleModel findById(Integer id);
	
	public PagerJson findModulePager(Integer pageIndex, Integer pageSize);
	
	public List<Combo> findModuleCombo();
	
	public Integer createModule(ModuleModel module);
	
	public Integer removeById(Integer id);
	
	public Integer changeModule(ModuleModel module);
}
