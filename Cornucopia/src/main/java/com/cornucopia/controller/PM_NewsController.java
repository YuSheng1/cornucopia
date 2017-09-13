package com.cornucopia.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.bean.News;
import com.cornucopia.service.PM_NewsService;

@Controller
@RequestMapping("BgNews")
public class PM_NewsController {

	@Resource(name="PM_NewsServiceImpl")
	private PM_NewsService newsServiceImpl;
	
	//后台学院管理咨询管理
		@RequestMapping("BgTration")
		public String BgTration(Model model,News news){
			List<News> list=newsServiceImpl.ListAll();
			model.addAttribute("list",list);
			return "BgTration";
		}
}