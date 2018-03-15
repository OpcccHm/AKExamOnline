/**
 * 
 */
package com.qhit.lh.g4.jay.exam.xsgl.dao;

import org.hibernate.Query;

import com.qhit.lh.g4.jay.exam.common.bean.User;
import com.qhit.lh.g4.jay.exam.common.dao.BaseDao;
import com.qhit.lh.g4.jay.exam.xsgl.bean.Student;

/**
 * @author jayli
 *
 */
public class StudentDaoImpl extends BaseDao implements StudentDao {

	@Override
	public Student getStudent(User user) {
		// TODO Auto-generated method stub
		String hql = "select stu from Student stu where stu.sid = ?";
		Query query = getSession().createQuery(hql);
		query.setString(0, user.getName());
		Student student = (Student) query.list().get(0);
		
		return student;
	}

}
