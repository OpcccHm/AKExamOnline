/**
 * 
 */
package com.qhit.lh.g4.jay.exam.zxks.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.qhit.lh.g4.jay.exam.common.bean.User;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;
import com.qhit.lh.g4.jay.exam.sjgl.bean.PaperClass;
import com.qhit.lh.g4.jay.exam.zxks.service.ExamService;
import com.qhit.lh.g4.jay.exam.zxks.service.ExamServiceImpl;

/**
 * @author jayli
 *
 */
public class ExamAction {
	private ExamService examService = new ExamServiceImpl();
	private List<Paper> papers;
	private List<PaperClass> paperClass;

	/**
	 * @return 
	 * 当前学生所在班级
	 * 当前时间<结束时间
	 */
	public String getExamList() {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		
		paperClass = examService.getExamList(user);
		return "getExamList";
	}

	
	
	/**
	 * @return the papers
	 */
	public List<Paper> getPapers() {
		return papers;
	}

	/**
	 * @param papers the papers to set
	 */
	public void setPapers(List<Paper> papers) {
		this.papers = papers;
	}



	/**
	 * @return the paperClass
	 */
	public List<PaperClass> getPaperClass() {
		return paperClass;
	}



	/**
	 * @param paperClass the paperClass to set
	 */
	public void setPaperClass(List<PaperClass> paperClass) {
		this.paperClass = paperClass;
	}
}
