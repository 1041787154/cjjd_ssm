package cn.ysu.auth.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ysu.auth.dao.ModuleDao;
import cn.ysu.auth.model.ModuleModel;
import cn.ysu.auth.service.ModuleService;
import cn.ysu.common.json.PagerJson;
import cn.ysu.common.structure.Combo;

@Service("moduleService")
public class ModuleServiceImpl implements ModuleService{

	@Resource
	private ModuleDao moduleDao;
	
	public ModuleModel findById(Integer id) {
		return moduleDao.selectById(id);
	}

	public PagerJson findModulePager(Integer pageIndex, Integer pageSize) {
		/* Parameters:pageNum--页码，pageSize--每页显示数量，count--是否进行count查询  */
	    PageHelper.startPage(pageIndex + 1, pageSize, true);  
		PageInfo<ModuleModel> pageInfo = new PageInfo<ModuleModel>(moduleDao.selectModuleList());
		return new PagerJson(pageInfo.getTotal(), pageInfo.getList());
	}

	public List<Combo> findModuleCombo() {
		return moduleDao.selectModuleCombo();
	}

	public Integer createModule(ModuleModel module) {
		Integer result = moduleDao.insert(module);
		if(result > 0){
			return module.getId();
		}
		return 0;
	}

	public Integer removeById(Integer id) {
		return moduleDao.deleteById(id);
	}

	public Integer changeModule(ModuleModel module) {
		return moduleDao.update(module);
	}

}
