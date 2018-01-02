package com.qhit.lh.g4.jay.exam.kmgl.bean;

import java.util.HashSet;
import java.util.Set;

import com.qhit.lh.g4.jay.exam.tkgl.bean.MachineTest;
import com.qhit.lh.g4.jay.exam.tkgl.bean.WrittenTest;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable {

	// Fields

	private Integer csId;
	private String csName;
	private String stage;
	private String major;
	
	//1-n
	private Set<WrittenTest> writtenTests = new HashSet<>();
	private Set<MachineTest> machineTests = new HashSet<>();
	
	// Constructors

	public Set<WrittenTest> getWrittenTests() {
		return writtenTests;
	}
	
	public void setWrittenTests(Set<WrittenTest> writtenTests) {
		this.writtenTests = writtenTests;
	}

	public Set<MachineTest> getMachineTests() {
		return machineTests;
	}

	public void setMachineTests(Set<MachineTest> machineTests) {
		this.machineTests = machineTests;
	}

	/** default constructor */
	public Course() {
	}

	/** full constructor */
	public Course(String csName, String stage) {
		this.csName = csName;
		this.stage = stage;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Course(Integer csId, String csName, String stage, String major) {
		super();
		this.csId = csId;
		this.csName = csName;
		this.stage = stage;
		this.major = major;
	}

	// Property accessors

	public Integer getCsId() {
		return this.csId;
	}

	public void setCsId(Integer csId) {
		this.csId = csId;
	}

	public String getCsName() {
		return this.csName;
	}

	public void setCsName(String csName) {
		this.csName = csName;
	}

	public String getStage() {
		return this.stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

}