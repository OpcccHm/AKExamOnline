<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jQuery.js"></script>
<style type="text/css">
span {
	display: none;
}

th {
	background-color: #666;
	text-align: center;
	color: #fff;
}

td {
	text-align: center;
}

#marginTop {
	margin-top: 20px;
}

.margRight {
	margin-right: 10px;
}
</style>
</head>
<body>
	<div id="marginTop">
		<h3 align="center">请参加以下考试</h3>
	</div>
	<div>
		<fieldset id="marginTop">
			<table width="100%" align="center" id="marginTop" border="0.5"
				bordercolor="#eee" cellspacing="1">
				<tr>
					<th><font color="white">序号</font></th>
					<th><font color="white">类型</font></th>
					<th><font color="white">科目</font></th>
					<th><font color="white">标题</font></th>
					<th><font color="white">考试班级</font></th>
					<th><font color="white">考试时长(分钟)</font></th>
					<th><font color="white">操作</font></th>
				</tr>
				<s:iterator value="pageBean.Items" var="paperInfo" status="status">
					<tr>
						<td>${status.count }</td>
						<td>${paperClass.paper.ptype }</td>
						<td>[${paperClass.paper.course.major }&nbsp;${paperClass.paper.course.stage }]<br>${paperClass.paper.course.csName }</td>
						<td>${paperClass.paper.pname }</td>
						<td><s:iterator value="#paperInfo.paperClasses"
								var="paperClass">
								${paperClass.classInfo.cname }、
							</s:iterator></td>
						<td>${paperClass.paper.ptime }</td>
						<td>
							<a href="javascript:alert('。。。。')">开始考试</a> 
						</td>
					</tr>
				</s:iterator>
			</table>
		</fieldset>
	</div>
</body>
</html>