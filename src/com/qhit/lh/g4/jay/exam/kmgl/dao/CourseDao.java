package com.qhit.lh.g4.jay.exam.kmgl.dao;

import java.util.List;
import java.util.Map;

import com.qhit.lh.g4.jay.exam.kmgl.bean.Course;

public interface CourseDao {
	/**
	 * @param course
	 * @return
	 */
	public List<Course> getCoursesList(Map<String, Object> parameter);
}
