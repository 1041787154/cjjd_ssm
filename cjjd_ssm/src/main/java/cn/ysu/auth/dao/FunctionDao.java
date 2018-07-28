package cn.ysu.auth.dao;

import java.util.List;
import java.util.Map;

import cn.ysu.auth.model.FunctionModel;
import cn.ysu.common.structure.Combo;

public interface FunctionDao {
	
	public List<FunctionModel> selectFunctionList(Map<String, Object> params);
	
	public List<Combo> selectFunctionCombo();
	
	public FunctionModel selectById(Integer id);
	
	public Integer insert(FunctionModel module);
	
	public Integer deleteById(Integer id);
	
	public Integer update(FunctionModel function);
}
