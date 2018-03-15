/**
 * 
 */
package com.qhit.lh.g4.jay.exam.zxks.service;

import java.util.ArrayList;
import java.util.List;

import com.qhit.lh.g4.jay.exam.bjgl.bean.ClassInfo;
import com.qhit.lh.g4.jay.exam.bjgl.dao.ClazzDao;
import com.qhit.lh.g4.jay.exam.bjgl.dao.ClazzDaoImpl;
import com.qhit.lh.g4.jay.exam.common.bean.User;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;
import com.qhit.lh.g4.jay.exam.sjgl.bean.PaperClass;
import com.qhit.lh.g4.jay.exam.sjgl.dao.PaperDao;
import com.qhit.lh.g4.jay.exam.sjgl.dao.PaperDaoImpl;
import com.qhit.lh.g4.jay.exam.xsgl.bean.Student;
import com.qhit.lh.g4.jay.exam.xsgl.dao.StudentDao;
import com.qhit.lh.g4.jay.exam.xsgl.dao.StudentDaoImpl;
import com.qhit.lh.g4.jay.exam.zxks.dao.ExamDao;
import com.qhit.lh.g4.jay.exam.zxks.dao.ExamDaoImpl;

/**
 * @author jayli
 *
 */
public class ExamServiceImpl implements ExamService {
	private ExamDao examDao = new ExamDaoImpl();
	private StudentDao studentDao = new StudentDaoImpl();
	private ClazzDao clazzDao = new ClazzDaoImpl();
	private PaperDao paperDao = new PaperDaoImpl(); 

	@Override
	public List<PaperClass> getExamList(User user) {
		//查询学生信息
		Student student = studentDao.getStudent(user);
		//查询班级信息
		ClassInfo classInfo = clazzDao.getClassInfo(student);
		//查询班级相关的试卷
		List<PaperClass> paperClass = paperDao.getPaper(classInfo);
//		List<PaperClass> paperClass = new ArrayList<>(classInfo.getPaperClasses());
		return paperClass;
	}

}
