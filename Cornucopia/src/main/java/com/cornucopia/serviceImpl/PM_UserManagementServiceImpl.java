package com.cornucopia.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Member;
import com.cornucopia.dao.PM_UserManagemenDao;
import com.cornucopia.service.PM_UserManagementService;
@Component
public class PM_UserManagementServiceImpl implements PM_UserManagementService {
	@Autowired
	private PM_UserManagemenDao PM_UserManagemenDao;
	@Override
	public  List<Member> ListmemberList(String name,String mobile_Phone,String member_name,String invitationCode,String create_date) {
		List<Member> memberslist=PM_UserManagemenDao.ListmemberList(member_name, name, mobile_Phone, invitationCode, create_date);
		return memberslist;
	}

}
