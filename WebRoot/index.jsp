<%@ page language="java" contentType="text/html; charset=gb2312"    pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>

<title>ognl表达式示例</title>
</head>
<body>
  <a href="ognl_test.action">ognl表达式示例</a>
  <s:form action="reg">
  	<s:textfield name="user.loginname"></s:textfield>
  	<s:submit></s:submit>
  </s:form>
  <s:property value="message"/>
</body>
</html>