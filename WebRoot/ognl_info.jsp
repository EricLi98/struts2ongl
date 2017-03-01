<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>OGNL的使用</title>
	</head>
	<body>
		<h3>
			OGNL的使用
		</h3>
		<hr />
		访问Action中的普通属性:
		<s:property value="loginname" />
		
		<br />
		访问Action中的对象属性:
		<s:property value="user.birthday" />
		<br />
		访问Action中的Set属性:
		<s:property value="courseSet.toArray()[0]" />
		<br />
		访问Action中的List属性:
		<s:property value="list[0]" />
		<br />
		访问Action中的Map属性的键:
		<s:property value="map.keys.toArray()[1]" />
		<br />
		访问Action中的Map属性的值:
		<s:property value="map.values.toArray()[1]" />
		<br />
		访问Action中的Map属性的指定键对应的值:
		<s:property value="map['z']" />
		<br />
		访问Action中的Map属性的大小:
		<s:property value="map.size" />
		<br />
		<hr />
		访问ActionContext中的普通属性：
		<s:property value="#inte" />
		<br />
		访问ActionContext中的对象属性：
		<s:property value="#user2.loginname" />
		<br />
		<hr />
		访问Action中的普通方法：
		<s:property value="getAppName()" />
		<br />
		访问ActionContext中的某个对象上的普通方法：
		<s:property value="#user2.info()" />
		<br />
		<hr />
		访问静态属性：
		<s:property value="@java.lang.Math@PI" />
		<br />
		访问静态方法：
		<s:property value="@java.lang.Math@floor(44.56)" />
		<br />
		访问Math类中的静态方法：
		<s:property value="@@floor(44.56)" />
		<br />
		<hr />
		调用java.util.Date的构造方法：
		<s:date name="new java.util.Date()" format="yyyy-MM-dd HH:mm:ss" />
		<br />
		调用java.util.Date的构造方法创建对象，再调用它的方法：
		<s:property value="new java.util.Date().getTime()" />
		<br />
		<hr />
		投影查询：获取userList中所有loginname的列表:
		<s:property value="userList.{loginname}" />
		<br />
		选择查询：获取userList中所有score大于60的loginname列表：
		<s:property value="userList.{?#this.score>60.0}.{loginname}" />
		<br />
		选择查询：获取userList中所有score大于60并且gender为true的loginname列表：
		<s:property
			value="userList.{?(#this.score>60.0 && #this.gender)}.{loginname}" />
		<br />
		选择查询：获取userList中所有score大于60并且gender为true的第一个元素的loginname：
		<s:property
			value="userList.{^(#this.score>60.0 && #this.gender)}.{loginname}" />
		<br />
		选择查询：获取userList中所有score大于60并且gender为true的最后一个元素的loginname：
		<s:property
			value="userList.{$(#this.score>60.0 && #this.gender)}.{loginname}" />
		<br />
		<hr />
		访问名为xxx的请求参数对应的第一个值：
		<s:property value="#parameters.xxx[0]" />
		<br />
		访问通过ActionContext中放入Request中的属性：
		<s:property value="#request.reqAtt" />
		<br />
		访问通过ServletActionContext中放入Request中的属性：
		<s:property value="#request.reqAtt2" />
		<br />

		访问通过ActionContext中放入Session中的属性：
		<s:property value="#session.sesAtt" />
		<br />
		访问通过ServletActionContext中放入Session中的属性：
		<s:property value="#session.sesAtt2" />
		<br />
		访问通过ActionContext中放入ServletContext中的属性：
		<s:property value="#application.appAtt" />
		<br />
		访问通过ServletActionContext中放入ServletContext中的属性：
		<s:property value="#application.appAtt2" />
		<br />

		直接访问属性域中指定名称的属性对应的值：
		<s:property value="#attr.sesAtt2" />
		<br />
		<br />
		<br />
		<hr />
		<s:iterator value="userList" status="vs">
			<s:if test="%{#vs.odd}">
				<span style="color: red"> <s:property value="#vs.index" />: <s:property
						value="loginname" />,<s:date name="birthday"
						format="yyyy-MM-dd HH:mm:ss" />
					<br /> </span>
			</s:if>
			<s:else>
				<span style="color: blue"> <s:property value="#vs.index" />:
					<s:property value="loginname" />,<s:date name="birthday"
						format="yyyy-MM-dd HH:mm:ss" />
					<br /> </span>
			</s:else>
		</s:iterator>

		<hr />
		<s:debug />
	</body>
</html>

