package cn.ysu.main.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ysu.common.json.KVJson;
import cn.ysu.main.model.LoginUserModel;
import cn.ysu.main.service.MainService;

@Controller
@RequestMapping("")
public class MainController {
	
	@Resource
	private MainService mainService;
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("")
	public String index(HttpSession session){
		/* 获取登录用户  */
		LoginUserModel loginUser = (LoginUserModel) session.getAttribute("login_user");
		/* 加载用户菜单权限 */
		String userMenuPrivilegeJson = mainService.findMenuPrivilegeJson(loginUser);
		session.setAttribute("userMenuPrivilegeJson", userMenuPrivilegeJson);
		return "index";
	}
	
	@RequestMapping("overview")
	public String overview(){
		return "overview";
	}
	
	@ResponseBody
	@RequestMapping(value="loginCheck", produces = "application/json")
	public Object loginCheck(@RequestParam(value="username", required=true) String username, 
			@RequestParam(value="password", required=true) String password,
			HttpSession session) {
		System.out.println(username + "," + password);
		/* 查询用户信息 */
		Object object = mainService.findUserLogin(username, password);
		System.out.println(object);
		/* 根据查询返回结果类型，判断用户登陆是否成功 */
		if(object instanceof LoginUserModel) {
			if(object != null) {
				object = (LoginUserModel)object;
				session.setAttribute("login_user", object);
				return KVJson.map("status", "logined");
			}
		}else if(object instanceof String) {
			if(object.equals("locked")) {
				return "locked";
			}
		}
		return "failed";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.setAttribute("login_user", null);
		session.invalidate();
		return "redirect:/";
	}
}
