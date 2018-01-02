package com.qhit.lh.g4.jay.exam.tkgl.bean;

import com.qhit.lh.g4.jay.exam.kmgl.bean.Course;

/**
 * MachineTest entity. @author MyEclipse Persistence Tools
 */

public class MachineTest implements java.io.Serializable {

	// Fields

	private Integer qid;
	private String qtitle;
	private String degree;
	private Integer qsId;
	private String chapter;
	
	//n-1
	private Course course;

	// Constructors

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	/** default constructor */
	public MachineTest() {
	}

	/** minimal constructor */
	public MachineTest(String qtitle, String degree, Integer qsId) {
		this.qtitle = qtitle;
		this.degree = degree;
		this.qsId = qsId;
	}

	/** full constructor */
	public MachineTest(String qtitle, String degree, Integer qsId,
			String chapter) {
		this.qtitle = qtitle;
		this.degree = degree;
		this.qsId = qsId;
		this.chapter = chapter;
	}

	// Property accessors

	public Integer getQid() {
		return this.qid;
	}

	public void setQid(Integer qid) {
		this.qid = qid;
	}

	public String getQtitle() {
		return this.qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getDegree() {
		return this.degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public Integer getQsId() {
		return this.qsId;
	}

	public void setQsId(Integer qsId) {
		this.qsId = qsId;
	}

	public String getChapter() {
		return this.chapter;
	}

	public void setChapter(String chapter) {
		this.chapter = chapter;
	}

}