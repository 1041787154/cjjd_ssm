package cn.ysu.auth.model;

import java.util.Date;

public class FunctionModel {
	private Integer id;
	private String functionName;
	private Integer moduleId;
	private String moduleName;
	private Integer functionOrder;
	private String remark;
	private Integer canSign;
	private Date createAt;
	private Date updateAt;
	private String byzd1;
	private String byzd2;
	private String byzd3;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFunctionName() {
		return functionName;
	}

	public void setFunctionName(String functionName) {
		this.functionName = functionName;
	}

	public Integer getModuleId() {
		return moduleId;
	}

	public void setModuleId(Integer moduleId) {
		this.moduleId = moduleId;
	}

	public Integer getFunctionOrder() {
		return functionOrder;
	}

	public void setFunctionOrder(Integer functionOrder) {
		this.functionOrder = functionOrder;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getCanSign() {
		return canSign;
	}

	public void setCanSign(Integer canSign) {
		this.canSign = canSign;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getUpdateAt() {
		return updateAt;
	}

	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}

	public String getByzd1() {
		return byzd1;
	}

	public void setByzd1(String byzd1) {
		this.byzd1 = byzd1;
	}

	public String getByzd2() {
		return byzd2;
	}

	public void setByzd2(String byzd2) {
		this.byzd2 = byzd2;
	}

	public String getByzd3() {
		return byzd3;
	}

	public void setByzd3(String byzd3) {
		this.byzd3 = byzd3;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	
}
