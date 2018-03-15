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
<script type="text/javascript">


function getCourses() {
	var url = "${basePath}course/course_getCourses2Json.action";
	var majorValue = $("#majorSelect").val();
	var stageValue = $("#stageSelect").val();
	 $.getJSON(url,
			 {
		 		'course.major':majorValue,
		 		'course.stage':stageValue
			 },
			 function(data){
		    	//alert(JSON.stringify(data));
		    	$("#csId").empty();
		    	$("#csId").append("<option value=''>请选择</option>");
		    	$.each(data, function(i,course){
		    		$("#csId").append("<option value='"+course.csId+"'>"+course.csName+"</option>");
		    	});
			}
	);
}
</script>
</head>
<body>
	<div class="center">
		<h3>考试完成试卷列表</h3>
	</div>
	<form action="score/score_getPaperList" method="post">
		方向:
		<s:select id="majorSelect" class="margRight"
			list="#{'':'请选择','SCME':'SCME','SCCE':'SCCE'}" name="majorSelect"
			onchange="getCourses()" />
		阶段:
		<s:select id="stageSelect" class="margRight"
			list="#{'':'请选择','G1':'G1','G2':'G2','G3':'G3'}" name="stageSelect"
			onchange="getCourses()" />
		考试科目:
		<s:select list="{}" name="course.csId" id="csId" class="margRight"
			listKey="csId" listValue="csName" headerKey="" headerValue="请选择" />
		考试类型:
		<s:select list="#{'':'请选择','笔试':'笔试','机试':'机试'}" name="paper.ptype"
			class="margRight"></s:select>
		<input type="submit" value="查询" class="margRight">
	</form>
	<br>
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
						<td>${paperInfo.ptype }</td>
						<td>[${paperInfo.course.major }&nbsp;${paperInfo.course.stage }]<br>${paperInfo.course.csName }</td>
						<td>${paperInfo.pname }</td>
						<td><s:iterator value="#paperInfo.paperClasses" var="paperClass">
								${paperClass.classInfo.cname }、
							</s:iterator></td>
						<td>${paperInfo.ptime }</td>
						<td>
							<a href="javascript:alert('同成绩管理！')">查看成绩</a>
							<a href="javascript:alert('同成绩管理！')">查看试卷</a>
						</td>
					</tr>
				</s:iterator>
			</table>

			<div align="right" id="marginTop">
				第${pageBean.currentIndex }页， 共${pageBean.totalPage }页&nbsp;&nbsp; <a
					href="paper/paper_getPaperList?course.csId=${course.csId }&paper.ptype=${paper.ptype}&paper.pstate=${paper.pstate }&pageIndex=1">首页</a>&nbsp;
				<a
					href="paper/paper_getPaperList?course.csId=${course.csId }&paper.ptype=${paper.ptype}&paper.pstate=${paper.pstate }&pageIndex=${pageBean.preIndex }">上一页</a>&nbsp;
				<a
					href="paper/paper_getPaperList?course.csId=${course.csId }&paper.ptype=${paper.ptype}&paper.pstate=${paper.pstate }&pageIndex=${pageBean.nextIndex }">下一页</a>&nbsp;
				<a
					href="paper/paper_getPaperList?course.csId=${course.csId }&paper.ptype=${paper.ptype}&paper.pstate=${paper.pstate }&pageIndex=${pageBean.totalPage }">末页</a>
			</div>
		</fieldset>
	</div>
</body>
</html>