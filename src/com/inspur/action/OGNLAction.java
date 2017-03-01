package com.inspur.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import com.inspur.po.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OGNLAction extends ActionSupport {
	private static final long serialVersionUID = -2554018432709689579L;
	private String loginname;
	private String pwd;
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	private User user;
	private Set<String> courseSet;
	private List<String> list;
	private Map<String, String> map;
	private List<User> userList;
	
	public String reg(){
		message="user.loginname:"+user.getLoginname();
		return SUCCESS;
	}
	@Override
	public String execute() throws Exception {
		this.loginname = "������";
		this.user = new User(123, "������", 88.9, true, 'B', new Date());
		this.courseSet = new LinkedHashSet<String>();
		this.courseSet.add("corejava");
		this.courseSet.add("JSP/Servlet");
		this.courseSet.add("S2SH");

		this.list = new ArrayList<String>(this.courseSet);
		this.map = new HashMap<String, String>();
		this.map.put("x", "xxx");
		this.map.put("y", "yyy");
		this.map.put("z", "zzz");

		ActionContext context = ActionContext.getContext();
		context.put("uname", "�����");
		context.put("inte", Integer.valueOf(888888));
		context
				.put("user2",
						new User(123, "����ɴ", 99.1, false, 'B', new Date()));

		this.userList = new ArrayList<User>();
		this.userList.add(new User(1, "zs", 48.9, true, 'D', new Date()));
		this.userList.add(new User(2, "ls", 68.1, true, 'C', new Date()));
		this.userList.add(new User(3, "ww", 78.2, false, 'B', new Date()));
		this.userList.add(new User(4, "zl", 88.3, true, 'A', new Date()));

		// -----------------------------------------------------------------   
		// �Ƽ���ʽ:�����Servlet API���   
		context.put("reqAtt", "��ActionContext��put������");
		context.getSession()
				.put("sesAtt", "��ActionContext.getSession()��put������");
		context.getApplication().put("appAtt",
				"��ActionContext.getApplication()��put������");

		ServletActionContext.getRequest().setAttribute("reqAtt2",
				"Request�������е�����");
		ServletActionContext.getRequest().getSession().setAttribute("sesAtt2",
				"Session�������е�����");
		ServletActionContext.getServletContext().setAttribute("appAtt2",
				"Application�������е�����");
		return SUCCESS;

	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<String> getCourseSet() {
		return courseSet;
	}

	public void setCourseSet(Set<String> courseSet) {
		this.courseSet = courseSet;
	}

	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}

	public Map<String, String> getMap() {
		return map;
	}

	public void setMap(Map<String, String> map) {
		this.map = map;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	

}
