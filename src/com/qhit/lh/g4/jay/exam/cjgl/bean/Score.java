/**
 * 
 */
package com.qhit.lh.g4.jay.exam.cjgl.bean;

import java.io.Serializable;

/**
 * @author jayli
 *
 */
public class Score implements Serializable {
	
	private int scid;
	private String sid;
	private int pid;
	private double score;
	
	
	/**
	 * @param scid
	 * @param sid
	 * @param pid
	 * @param score
	 */
	public Score(int scid, String sid, int pid, double score) {
		super();
		this.scid = scid;
		this.sid = sid;
		this.pid = pid;
		this.score = score;
	}
	/**
	 * 
	 */
	public Score() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the scid
	 */
	public int getScid() {
		return scid;
	}
	/**
	 * @param scid the scid to set
	 */
	public void setScid(int scid) {
		this.scid = scid;
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
	 * @return the score
	 */
	public double getScore() {
		return score;
	}
	/**
	 * @param score the score to set
	 */
	public void setScore(double score) {
		this.score = score;
	}
	
}
