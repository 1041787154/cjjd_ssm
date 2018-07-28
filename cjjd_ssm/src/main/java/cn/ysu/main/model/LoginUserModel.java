package cn.ysu.main.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias(value="LoginUserModel")
public class LoginUserModel {
	private Integer userId;
	private String username;
	private Integer status;
	private Integer loginFailed;
	private Date loginTime;
	private String remark;
	private String byzd1;
	private String byzd2;
	private String byzd3;

	private Integer roleId;
	private String roleName;

	private Integer staffId;
	private String staffName;
	private Integer staffType;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getLoginFailed() {
		return loginFailed;
	}

	public void setLoginFailed(Integer loginFailed) {
		this.loginFailed = loginFailed;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getStaffId() {
		return staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public Integer getStaffType() {
		return staffType;
	}

	public void setStaffType(Integer staffType) {
		this.staffType = staffType;
	}

}
