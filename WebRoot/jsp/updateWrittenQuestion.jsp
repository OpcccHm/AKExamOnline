<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>添加试题</title>
<base target="_self" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<style type="text/css">
.marginLayout {
	margin: 10px;
}

input {
	margin: 5px;
}

td{
	margin: 5px;
	padding: 5px;
}

.textWidth {
	width: 200px;
}
</style>
<script type="text/javascript">
	var options = document.getElementsByName("writtenQuestion.answer");
	var answer = ${writtenQuestion.answer };
	
	function setDefaultType() {
		for(i=0;i<options.length;i++){
			options[i].setAttribute("type", "radio");
			/* if(answer.indexOf(options[i].value) > 0){
				options[i].checked = true;
			}else{
				options[i].checked = false;
			} */
		}
	}
	
	function setDefaultOption() {
		if(){
			
		}
	}

	function checkData() {
		var v1 = document.getElementById("optionA");
		var v2 = document.getElementById("optionB");
		var v3 = document.getElementById("optionC");
		var v4 = document.getElementById("optionD");
		var v6 = document.getElementById("chapter");
		if (v1.value != "" && v2.value != "" && v3.value != ""
				&& v4.value != "" && v6.value != "") {
			document.getElementById("formAddQuestion").submit();
		} else {
			alert("请填写完整!");
		}
	}
	
	function changeOptionType() {
		var qtype = document.getElementById("qtype").value;
		for(i=0;i<options.length;i++){
			if(qtype == "单选"){
				options[i].setAttribute("type", "radio");
			}else{
				options[i].setAttribute("type", "checkbox");
			}
		}
	}
	
	function closeDialog() {
		window.close();
		return true;
	}
	
</script>

</head>

<body onload="setDefaultType()">
	<div class="marginLayout">
		<form action="question/question_updateWrittenQuestion" method="post" name="formAddQuestion"
			id="formAddQuestion" onsubmit="closeDialog()">
			<input type="hidden" name="course.csId" value="${param.csId }">
			<input type="hidden" name="course.csName" value="${param.csName }">
			<input type="hidden" name="writtenQuestion.csId" value="${param.csId }">
			<table class="marginLayout">
				<tr>
					<td align="right"><font>科目名称:</font></td>
					<td> ${param.csName } </td>
				</tr>
				<tr>
					<td align="right"><font>题目类型:</font></td>
					<td>
						<select id="qtype" name="writtenQuestion.qtype" onchange="changeOptionType()">
							<s:if test="writtenQuestion.qtype == '单选'">
								<option value="单选" selected="selected">单选</option>
								<option value="多选">多选</option>
							</s:if>
							<s:else>
								<option value="单选">单选</option>
								<option value="多选" selected="selected">多选</option>
							</s:else>
						</select>
					</td>
				</tr>
				<tr>
					<td align="right"><font>题目内容:</font></td>
					<td>
						<textarea rows="3" cols="30" name="writtenQuestion.qtitle" id="qTitle">
							${writtenQuestion.qtitle }
						</textarea>
					</td>
				</tr>
				<tr>
					<td align="right"><font>题目选项:</font></td>
					<td>
						<s:checkbox cssClass="options" name="writtenQuestion.answer" value="A" fieldValue="A" theme="simple"/> A
						<input class="textWidth" type="text" name="writtenQuestion.optionA" id="optionA" value="${writtenQuestion.optionA }">
						<br />
						<s:checkbox cssClass="options" name="writtenQuestion.answer" value="B" fieldValue="B" theme="simple"/>B
						<input class="textWidth" type="text" name="writtenQuestion.optionB" id="optionB" value="${writtenQuestion.optionB }">
						<br />
						<s:checkbox cssClass="options" name="writtenQuestion.answer" value="C" fieldValue="C" theme="simple"/>C
						<input class="textWidth" type="text" name="writtenQuestion.optionC" id="optionC" value="${writtenQuestion.optionC }">
						<br />
						<s:checkbox cssClass="options" name="writtenQuestion.answer" value="D" fieldValue="D" theme="simple"/>D
						<input class="textWidth" type="text" name="writtenQuestion.optionD" id="optionD" value="${writtenQuestion.optionD }">
						<br />
					</td>
				</tr>
				<tr>
					<td align="right"><font>难易程度:</font></td>
					<td>
						<select name="writtenQuestion.degree">
							<s:if test="writtenQuestion.degree == '简单'">
								<option value="简单" selected="selected">简单</option>
								<option value="一般">一般</option>
								<option value="困难">困难</option>
							</s:if>
							<s:elseif test="writtenQuestion.degree == '一般'">
								<option value="简单">简单</option>
								<option value="一般" selected="selected">一般</option>
								<option value="困难">困难</option>
							</s:elseif>
							<s:else>
								<option value="简单">简单</option>
								<option value="一般">一般</option>
								<option value="困难" selected="selected">困难</option>
							</s:else>
						</select>
					</td>
				</tr>
				<tr>
					<td align="right"><font>对应章节:</font></td>
					<td>
						<input class="textWidth" type="text" name="writtenQuestion.chapter" id="chapter" value="${writtenQuestion.chapter }">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="更新" onclick="checkData()">
						<input type="reset" value="重置">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>