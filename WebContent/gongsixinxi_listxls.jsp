<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="gongsixinxihsgb" scope="page" class="com.bean.GongsixinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=gongsixinxi.xls");
%>
<html>
  <head>
    <title>��˾��Ϣ</title>
  </head>

  <body >
 <%
			String sql="select * from gongsixinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>��˾���</td>    <td align='center'>����</td>    <td align='center'>����</td>    <td align='center'>��˾����</td>    <td align='center'>����</td>    <td align='center'>��ҵ</td>    <td align='center'>��ģ</td>        
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=gongsixinxihsgb.getAllGongsixinxi(10);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.gongsibianhao}</td>    <td>${u.mima}</td>    <td>${u.youxiang}</td>    <td>${u.gongsimingcheng}</td>    <td>${u.leixing}</td>    <td>${u.xingye}</td>    <td>${u.guimo}</td>        
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

