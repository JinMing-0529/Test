<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
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
    	request.setCharacterEncoding("utf-8");
 
    	String s=request.getParameter("username");
    	if(s!=null&&!s.equals("")){//如果地址和内容不为空
    	out.print("<center><table  border='1'>");
    	
    	out.println("<tr>");
    	out.println("<td>");
    	out.println("你好，"+s+"!");
    	out.println("</td>");
    	out.println("</tr>");
    	
    	out.print("</table></center>");
    	
		for(int i=1;i<=9;i++)
		{
			for(int j=1;j<=i;j++)
			{
				out.print(i+"*"+j+"="+i*j+"&nbsp&nbsp&nbsp&nbsp");
			}
			out.print("<br>");
		}
    	}else
    	{
    		out.println("请先登录");
    	}
     %>
  </body>
</html>
