package com.qhit.lh.g4.jay.exam.bjgl.dao;

import java.util.List;

import org.hibernate.Query;

import com.qhit.lh.g4.jay.exam.bjgl.bean.ClassInfo;
import com.qhit.lh.g4.jay.exam.common.dao.BaseDao;
import com.qhit.lh.g4.jay.exam.xsgl.bean.Student;

public class ClazzDaoImpl extends BaseDao implements ClazzDao {

	@Override
	public List<ClassInfo> getClazzList() {
		return getSession().createQuery("from ClassInfo").list();
	}

	@Override
	public ClassInfo getClassInfo(Student student) {
		String hql = "select classInfo from ClassInfo classInfo where classInfo.ccode = ?";
		Query query = getSession().createQuery(hql);
		query.setString(0, student.getCcode());
		return (ClassInfo) query.list().get(0);
	}

}
