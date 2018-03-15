/**
 * 
 */
package com.qhit.lh.g4.jay.exam.cjgl.service;

import java.util.Map;

import com.qhit.lh.g4.jay.exam.cjgl.dao.ScoreDao;
import com.qhit.lh.g4.jay.exam.cjgl.dao.ScoreDaoImpl;
import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;

/**
 * @author jayli
 *
 */
public class ScoreServiceImpl implements ScoreService {
	private ScoreDao scoreDao = new ScoreDaoImpl();

	@Override
	public PageBean<Paper> getPaperList(PageBean<Paper> pageBean, Map<String, Object> parameter, int pageIndex) {
		// TODO Auto-generated method stub
		return scoreDao.getPaperList(pageBean, parameter, pageIndex);
	}

}
