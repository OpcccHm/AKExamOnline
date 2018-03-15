package com.qhit.lh.g4.jay.exam.bjgl.service;

import java.util.List;

import com.qhit.lh.g4.jay.exam.bjgl.bean.ClassInfo;
import com.qhit.lh.g4.jay.exam.xsgl.bean.Student;

public interface ClazzService {

	/**
	 * @return
	 * 获取班级集合
	 */
	public List<ClassInfo> getClazzList();
	
	/**
	 * @param student
	 * @return
	 * 根据学生信息查询所属的班级信息
	 */
	public ClassInfo getClassInfo(Student student);
	
}
