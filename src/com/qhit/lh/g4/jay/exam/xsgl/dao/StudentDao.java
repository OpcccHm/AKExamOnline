/**
 * 
 */
package com.qhit.lh.g4.jay.exam.xsgl.dao;

import java.util.List;

import com.qhit.lh.g4.jay.exam.common.bean.User;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;
import com.qhit.lh.g4.jay.exam.xsgl.bean.Student;

/**
 * @author jayli
 *
 */
public interface StudentDao {
	/**
	 * @return
	 */
	public Student getStudent(User user);
}
