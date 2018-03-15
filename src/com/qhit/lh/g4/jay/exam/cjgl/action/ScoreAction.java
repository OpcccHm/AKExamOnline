/**
 * 
 */
package com.qhit.lh.g4.jay.exam.cjgl.action;

import java.util.HashMap;
import java.util.Map;

import com.qhit.lh.g4.jay.exam.cjgl.service.ScoreService;
import com.qhit.lh.g4.jay.exam.cjgl.service.ScoreServiceImpl;
import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.kmgl.bean.Course;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;

/**
 * @author jayli
 *
 */
public class ScoreAction {
	private ScoreService scoreService = new ScoreServiceImpl();
	//试题列表分页数据
	private PageBean<Paper> pageBean = new PageBean<>();
	private int pageIndex = 1;//指定页,初始化为1
	//条件参数
	private Course course;
	private Paper paper;


	public String getPaperList() {
		//设置参数
		Map<String, Object> parameter = new HashMap<>();
		if(course != null){
			parameter.put("csId", course.getCsId());
		}
		if(paper != null){
			parameter.put("pType", paper.getPtype());
		}
		//查询题库列表数据
		pageBean = scoreService.getPaperList(pageBean, parameter, pageIndex);
		System.out.println(pageBean.getItems().size());

		return "getPaperList";
	}




	/**
	 * @return the pageBean
	 */
	public PageBean<Paper> getPageBean() {
		return pageBean;
	}
	/**
	 * @param pageBean the pageBean to set
	 */
	public void setPageBean(PageBean<Paper> pageBean) {
		this.pageBean = pageBean;
	}
	/**
	 * @return the pageIndex
	 */
	public int getPageIndex() {
		return pageIndex;
	}
	/**
	 * @param pageIndex the pageIndex to set
	 */
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	/**
	 * @return the course
	 */
	public Course getCourse() {
		return course;
	}
	/**
	 * @param course the course to set
	 */
	public void setCourse(Course course) {
		this.course = course;
	}
	/**
	 * @return the paper
	 */
	public Paper getPaper() {
		return paper;
	}
	/**
	 * @param paper the paper to set
	 */
	public void setPaper(Paper paper) {
		this.paper = paper;
	}
}
