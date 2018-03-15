/**
 * 
 */
package com.qhit.lh.g4.jay.exam.cjgl.service;

import java.util.Map;

import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;

/**
 * @author jayli
 *
 */
public interface ScoreService {

	/**
	 * @param pageBean
	 * @param parameter
	 * @param pageIndex
	 * @return
	 */
	PageBean<Paper> getPaperList(PageBean<Paper> pageBean, Map<String, Object> parameter, int pageIndex);

}
