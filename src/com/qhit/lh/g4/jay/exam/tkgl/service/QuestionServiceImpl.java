package com.qhit.lh.g4.jay.exam.tkgl.service;

import java.util.List;
import java.util.Map;

import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.kmgl.bean.Course;
import com.qhit.lh.g4.jay.exam.tkgl.bean.WrittenQuestion;
import com.qhit.lh.g4.jay.exam.tkgl.dao.QuestionDao;
import com.qhit.lh.g4.jay.exam.tkgl.dao.QuestionDaoImpl;

public class QuestionServiceImpl implements QuestionService {
	private QuestionDao questionDao = new QuestionDaoImpl();

	@Override
	public List<Course> getCourseInfo(Map parameter) {
		// TODO Auto-generated method stub
		return questionDao.getCourseInfo(parameter);
	}

	@Override
	public PageBean<WrittenQuestion> getWrittenList(PageBean<WrittenQuestion> pageBean, Course course) {
		// TODO Auto-generated method stub
		return questionDao.getWrittenList(pageBean, course);
	}

}
