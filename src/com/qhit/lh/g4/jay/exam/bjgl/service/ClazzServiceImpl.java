package com.qhit.lh.g4.jay.exam.bjgl.service;

import java.util.List;

import com.qhit.lh.g4.jay.exam.bjgl.bean.ClassInfo;
import com.qhit.lh.g4.jay.exam.bjgl.dao.ClazzDao;
import com.qhit.lh.g4.jay.exam.bjgl.dao.ClazzDaoImpl;
import com.qhit.lh.g4.jay.exam.xsgl.bean.Student;

public class ClazzServiceImpl implements ClazzService {
	private ClazzDao clazzDao = new ClazzDaoImpl();

	@Override
	public List<ClassInfo> getClazzList() {
		return clazzDao.getClazzList();
	}

	@Override
	public ClassInfo getClassInfo(Student student) {
		// TODO Auto-generated method stub
		
		return clazzDao.getClassInfo(student);
	}

}
