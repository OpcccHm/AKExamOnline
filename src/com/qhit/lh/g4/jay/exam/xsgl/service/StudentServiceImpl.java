/**
 * 
 */
package com.qhit.lh.g4.jay.exam.xsgl.service;

import com.qhit.lh.g4.jay.exam.common.bean.User;
import com.qhit.lh.g4.jay.exam.xsgl.bean.Student;
import com.qhit.lh.g4.jay.exam.xsgl.dao.StudentDao;
import com.qhit.lh.g4.jay.exam.xsgl.dao.StudentDaoImpl;

/**
 * @author jayli
 *
 */
public class StudentServiceImpl implements StudentService {
	private StudentDao studentDao = new StudentDaoImpl();

	@Override
	public Student getStudent(User user) {
		// TODO Auto-generated method stub
		return studentDao.getStudent(user);
	}

}
