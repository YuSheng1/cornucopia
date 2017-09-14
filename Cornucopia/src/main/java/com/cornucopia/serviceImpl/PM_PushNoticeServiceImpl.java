package com.cornucopia.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.PushNotice;
import com.cornucopia.bean.Users;
import com.cornucopia.dao.PM_PushNoticeDao;
import com.cornucopia.service.PM_PushNoticeService;

//公告管理service
@Component
public class PM_PushNoticeServiceImpl<T> implements PM_PushNoticeService{

	@Autowired
	private PM_PushNoticeDao pushNoticeDao;

	//添加
	@Override
	public void save(Object... objects) {
		pushNoticeDao.save(objects);
	}

	//查询是否有该标题
	@Override
	public Boolean getByTitle(String title) {
		boolean boo=pushNoticeDao.getByTitle(title);
		return boo;
	}

	//查询
	@Override
	public List<PushNotice> ListAll(Object...objects) {
		List<PushNotice> plist=pushNoticeDao.ListAll(objects);
		return plist;
	}

	//根据ID查询公告内容
	@Override
	public PushNotice chakan(int id) {
		return pushNoticeDao.chakan(id);
	}

}
