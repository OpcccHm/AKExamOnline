package com.qhit.lh.g4.jay.exam;

import org.junit.Test;

import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.kmgl.bean.Course;
import com.qhit.lh.g4.jay.exam.tkgl.bean.WrittenQuestion;
import com.qhit.lh.g4.jay.exam.tkgl.service.QuestionService;
import com.qhit.lh.g4.jay.exam.tkgl.service.QuestionServiceImpl;

public class WrittenQuestionTest {
	private QuestionService questionService = new QuestionServiceImpl();

	@Test
	public void pageBeanTest(){
		PageBean<WrittenQuestion> pageBean = new PageBean<>();
		Course course = new Course();
		course.setCsId(1);
		
		pageBean = questionService.getWrittenList(pageBean, course, 1);
		
		System.out.println(pageBean.getItems().get(0).getQtitle());;
	}
}
