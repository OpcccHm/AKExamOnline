package com.qhit.lh.g4.jay.exam.sjgl.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.qhit.lh.g4.jay.exam.common.bean.PageBean;
import com.qhit.lh.g4.jay.exam.kmgl.bean.Course;
import com.qhit.lh.g4.jay.exam.sjgl.bean.Paper;
import com.qhit.lh.g4.jay.exam.sjgl.service.PaperService;
import com.qhit.lh.g4.jay.exam.sjgl.service.PaperServiceImpl;

public class PaperAction extends ActionSupport {
	private PaperService paperService = new PaperServiceImpl();
	private List<Course> listCourses = new ArrayList<>();
	private List<Paper> listPapers = new ArrayList<>();
	//试题列表分页数据
	private PageBean<Paper> pageBean = new PageBean<>();
	private int pageIndex = 1;//指定页,初始化为1
	//条件参数
	private int csId;
	private String pType;
	private String pState;

	public String getPaperList(){
		//设置参数
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("csId", csId);
		parameter.put("pType", pType);
		parameter.put("pState", pState);
		//查询题库列表数据
		//listPapers = paperService.getPaperList(parameter);
		pageBean = paperService.getPaperList(pageBean, parameter, pageIndex);
		return "listPaper";
	}
}
