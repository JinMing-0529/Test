<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'B.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	//设置请求字符编码的值，解决中文乱码
    	request.setCharacterEncoding("utf-8");
    	//通过请求对象获取参数值
    	String s=request.getParameter("username");
    	out.print("<table  border='1'>");
    	
    	for(int i=0;i<10;i++){
    	out.println("<tr>");
    	out.println("<td>");
    	out.println("你好，"+s+"!");
    	out.println("</td>");
    	out.println("</tr>");
    	}
    	
    	out.print("</table>");
     %>
  </body>
</html>
