package cn.ysu.auth.service;

import java.util.List;
import java.util.Map;

import cn.ysu.auth.model.FunctionModel;
import cn.ysu.common.json.PagerJson;
import cn.ysu.common.structure.Combo;

public interface FunctionService {
	
	public FunctionModel findById(Integer id);
	
	public PagerJson findFunctionPager(Integer pageIndex, Integer pageSize, Map<String, Object> paramMap);
	
	public List<Combo> findFunctionCombo();
	
	public Integer createFunction(FunctionModel function);
	
	public Integer removeById(Integer id);
	
	public Integer changeFunction(FunctionModel function);
}
