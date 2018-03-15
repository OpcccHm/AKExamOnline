/**
 * 
 */
package com.qhit.lh.g4.jay.exam.cjgl.dao;

import java.util.Map;

import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;

/**
 * @author jayli
 *
 */
public interface ScoreDao {
	/**
	 * @param pageBean
	 * @param parameter
	 * @param pageIndex
	 * @return
	 */
	PageBean<Paper> getPaperList(PageBean<Paper> pageBean, Map<String, Object> parameter, int pageIndex);
}
