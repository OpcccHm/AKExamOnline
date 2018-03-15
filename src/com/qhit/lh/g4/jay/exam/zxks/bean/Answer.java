/**
 * 
 */
package com.qhit.lh.g4.jay.exam.zxks.bean;

import java.io.Serializable;

/**
 * @author jayli
 *
 */
public class Answer implements Serializable {

	private int aid;
	private String sid;
	private int pid;
	private String answer;
	
	
	/**
	 * @param aid
	 * @param sid
	 * @param pid
	 * @param answer
	 */
	public Answer(int aid, String sid, int pid, String answer) {
		super();
		this.aid = aid;
		this.sid = sid;
		this.pid = pid;
		this.answer = answer;
	}
	/**
	 * 
	 */
	public Answer() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the aid
	 */
	public int getAid() {
		return aid;
	}
	/**
	 * @param aid the aid to set
	 */
	public void setAid(int aid) {
		this.aid = aid;
	}
	/**
	 * @return the sid
	 */
	public String getSid() {
		return sid;
	}
	/**
	 * @param sid the sid to set
	 */
	public void setSid(String sid) {
		this.sid = sid;
	}
	/**
	 * @return the pid
	 */
	public int getPid() {
		return pid;
	}
	/**
	 * @param pid the pid to set
	 */
	public void setPid(int pid) {
		this.pid = pid;
	}
	/**
	 * @return the answer
	 */
	public String getAnswer() {
		return answer;
	}
	/**
	 * @param answer the answer to set
	 */
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
