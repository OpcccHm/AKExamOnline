<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>开始考试</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
input {
	margin: 10px;
}
table{
	border: 1 solid black;
}
td{
	text-align: center;
}
</style>
</head>
<script type="text/javascript">
var obj = "" ;
function getClasses() {
	var xmlhttp;
	if (window.XMLHttpRequest) {
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {
		// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var str = xmlhttp.responseText;
			obj = eval("(" + str + ")");
		}
	};
	xmlhttp.open("POST", "paperManage?cmd=getClasses", true);
	xmlhttp.send();
}
function addTr() {
	var tab = document.getElementById("tab_exam");
	var rows = tab.rows.length;
	var row = tab.insertRow(rows);
	var trNo = row.rowIndex.toString();
	row.id="rid"+trNo;
	var cell = row.insertCell(0);
	cell.innerHTML = "<select name='classes' id='classes"+trNo+"'></select>";
	var cell = row.insertCell(1);
	//placeholder:属性值作为显示提示
	cell.innerHTML = "<input type='text' id='dateTime' name='dateTime' placeholder='yyyy-MM-dd HH:mm' />";
	var cell = row.insertCell(2);
	cell.innerHTML = "<input type='button' value='删除' onclick=\"deleteRow('rid"+trNo+"')\">";
	//设置select标签的数据
	var classes = document.getElementById("classes"+trNo);
	for (var i = 0; i < obj.length; i++) {
		var option = document.createElement("option");
		option.value = obj[i].cId;
		option.text = obj[i].cName;
		try{
			classes.add(option,null);
		}catch(ex){
			classes.add(option);
		}
	}
}
function deleteRow(rowId) {
	var tab = document.getElementById("tab_exam");
	var row = document.getElementById(rowId);
	var index = row.rowIndex;//rowIndex属性为tr的索引值，从0开始  
	tab.deleteRow(index);
}
//根据得到的行对象得到所在的行数
function getRowNo(trObj) {  
	var trArr = trObj.parentNode.children; 
	for(var trNo= 0; trNo < trArr.length; trNo++) {  
		if(trObj == trObj.parentNode.children[trNo]) {    
			return trNo; 
		} 
	}
}
</script>
<body onload="getClasses()">
	<%
	String pid = request.getParameter("pid");
	%>
	<form action="paperManage?cmd=startExam&pid=<%=pid%>" method="post">
		<div align="center">
			<input type="submit" value="开始考试"> <input type="reset"
				value="取消"> <br> <font>请选择参加考试的班级及开考时间</font>
		</div>
		<table id="tab_exam" align="center">
			<tr>
				<td>班级</td>
				<td>开考时间</td>
				<td><input type="button" value="添加" onclick="addTr();"></td>
			</tr>
		</table>
	</form>
</body>
</html>
