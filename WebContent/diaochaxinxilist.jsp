﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>调查信息</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>

<%

%>

<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">调查信息</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					
<form action="dcxxList.do" name="myform" method="post" style="width:100%">
									查询   调查编号：<input name="diaochabianhao" type="text" id="diaochabianhao" style='border:solid 1px #000000; color:#666666' size="12" /> 话题名称：<select name='huatimingcheng' id='huatimingcheng' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><%=connDbBean.hsggetoption("huatixinxi","huatimingcheng")%></select>  调查名称：<input name="diaochamingcheng" type="text" id="diaochamingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  参与人数：<input name="canyurenshu" type="text" id="canyurenshu" style='border:solid 1px #000000; color:#666666' size="12" />  公司编号：<input name="gongsibianhao" type="text" id="gongsibianhao" style='border:solid 1px #000000; color:#666666' size="12" />
									<input type="submit" value="查询" /> 
								</form>	

	
<br />
<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">序号</td>
                            <td bgcolor='#ebf0f7'>调查编号</td>    <td bgcolor='#ebf0f7'>话题名称</td>    <td bgcolor='#ebf0f7'>调查名称</td>    <td bgcolor='#ebf0f7'>参与人数</td>    <td bgcolor='#ebf0f7'>调查值</td>    <td bgcolor='#ebf0f7'>总值</td>    <td bgcolor='#ebf0f7'>公司编号</td>    
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 添加时间 </td>
                            <td align="center" bgcolor="#ebf0f7" width="50px"> 操作 </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list}" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <td>${u.diaochabianhao}</td>    <td>${u.huatimingcheng}</td>    <td>${u.diaochamingcheng}</td>    <td>${u.canyurenshu}</td>    <td>${u.diaochazhi}</td>    <td>${u.zongzhi}</td>    <td>${u.gongsibianhao}</td>    
                              <td align="center"> ${u.addtime} </td>
                              <td align="center"><a href="diaochaxinxilistdetail.jsp?diaochabianhao=${u.diaochabianhao}">填写问卷</a></td>
                            </tr>
                          </c:forEach>
                        </table>
<br>

<p align="center"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="dcxxList.do?page=1" >首页</a>
             <a href="dcxxList.do?page=${page.page-1 }"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="dcxxList.do?page=${page.page+1 }">下一页</a>
			<a href="dcxxList.do?page=${page.totalPage }">末页</a>		    </c:if>		
	</c:if>
	</p>




					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

