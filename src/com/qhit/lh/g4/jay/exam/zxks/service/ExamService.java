/**
 * 
 */
package com.qhit.lh.g4.jay.exam.zxks.service;

import java.util.List;

import com.qhit.lh.g4.jay.exam.common.bean.User;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;
import com.qhit.lh.g4.jay.exam.sjgl.bean.PaperClass;

/**
 * @author jayli
 *
 */
public interface ExamService {
	
	/**
	 * @return
	 */
	public List<PaperClass> getExamList(User user);

}
