<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="diaochaxuanxianghsgb" scope="page" class="com.bean.DiaochaxuanxiangBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=diaochaxuanxiang.xls");
%>
<html>
  <head>
    <title>����ѡ��</title>
  </head>

  <body >
 <%
			String sql="select * from diaochaxuanxiang  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>����</td>    <td align='center'>ѡ��A</td>    <td align='center'>ѡ��B</td>    <td align='center'>ѡ��C</td>    <td align='center'>��</td>    <td align='center'>������</td>    <td align='center'>��˾���</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=diaochaxuanxianghsgb.getAllDiaochaxuanxiang(9);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.biaoti}</td>    <td>${u.xuanxiangA}</td>    <td>${u.xuanxiangB}</td>    <td>${u.xuanxiangC}</td>    <td>${u.daan}</td>    <td>${u.diaochabianhao}</td>    <td>${u.gongsibianhao}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

