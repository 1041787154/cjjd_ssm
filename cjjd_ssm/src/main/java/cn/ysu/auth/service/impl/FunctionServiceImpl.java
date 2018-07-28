package cn.ysu.auth.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ysu.auth.dao.FunctionDao;
import cn.ysu.auth.model.FunctionModel;
import cn.ysu.auth.service.FunctionService;
import cn.ysu.common.json.PagerJson;
import cn.ysu.common.structure.Combo;

@Service("functionService")
public class FunctionServiceImpl implements FunctionService{

	@Resource
	private FunctionDao functionDao;

	public PagerJson findFunctionPager(Integer pageIndex, Integer pageSize, Map<String, Object> paramMap) {
		/* Parameters:pageNum--页码，pageSize--每页显示数量，count--是否进行count查询  */
	    PageHelper.startPage(pageIndex + 1, pageSize, true);
		PageInfo<FunctionModel> pageInfo = new PageInfo<FunctionModel>(functionDao.selectFunctionList(paramMap));
		return new PagerJson(pageInfo.getTotal(), pageInfo.getList());
	}

	public FunctionModel findById(Integer id) {
		return functionDao.selectById(id);
	}

	public List<Combo> findFunctionCombo() {
		return functionDao.selectFunctionCombo();
	}

	public Integer createFunction(FunctionModel function) {
		return functionDao.insert(function);
	}

	public Integer removeById(Integer id) {
		return functionDao.deleteById(id);
	}

	public Integer changeFunction(FunctionModel function) {
		return functionDao.update(function);
	}
	

}
