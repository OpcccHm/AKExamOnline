package com.qhit.lh.g4.jay.exam.tkgl.dao;

import java.util.List;
import java.util.Map;

import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.kmgl.bean.Course;
import com.qhit.lh.g4.jay.exam.tkgl.bean.WrittenQuestion;

public interface QuestionDao {
	/**
	 * 题库管理
	 * @param mjId
	 * @param stage
	 * @return
	 * 题库列表
	 */
	public List<Course> getCourseInfo(Map parameter);
	
	/**
	 * @param pageBean
	 * @return
	 * 笔试题列表分页数据
	 */
	public PageBean<WrittenQuestion> getWrittenList(
			PageBean<WrittenQuestion> pageBean, 
			Course course,
			int pageIndex);
	
	/**
	 * @param writtenQuestion
	 * 添加笔试题
	 */
	public void addWrittenQuestion(WrittenQuestion writtenQuestion);
	
	/**
	 * @param writtenQuestion
	 * @return
	 * 根据id查询试题
	 */
	public WrittenQuestion getWrittenQuestionById(WrittenQuestion writtenQuestion);
	
	/**
	 * @param writtenQuestion
	 * 更新数据
	 */
	public void updateWrittenQuestion(WrittenQuestion writtenQuestion);
}
