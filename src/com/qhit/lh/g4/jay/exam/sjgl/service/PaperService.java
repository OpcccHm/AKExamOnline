package com.qhit.lh.g4.jay.exam.sjgl.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.qhit.lh.g4.jay.exam.bjgl.bean.ClassInfo;
import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;
import com.qhit.lh.g4.jay.exam.sjgl.bean.PaperClass;

public interface PaperService {
	/**
	 * @param classInfo
	 * @return
	 * 查询可以考试的试卷
	 */
	public List<PaperClass> getPaper(ClassInfo classInfo);
	
	/**
	 * @param paper
	 */
	public void createByChoose(Paper paper);
	
	/**
	 * @param paperClasses
	 */
	public void startExam(List<PaperClass> paperClasses,Paper paper);
	
	/**
	 * @param paper
	 * 结束考试
	 */
	public void endExam(Paper paper);
	
	/**
	 * @param paper
	 * 随机组卷
	 */
	public void createPaperRandom(Paper paper);

	/**
	 * @param parameter
	 * @return
	 * 查询试卷列表
	 */
	public PageBean<Paper> getPaperList(PageBean<Paper> pageBean, Map<String, Object> parameter, int pageIndex);
}
