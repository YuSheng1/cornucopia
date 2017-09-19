package com.cornucopia.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.AwardRecordsVo;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.MemberTradeRecord;
import com.cornucopia.bean.Resources;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.bean.UserRole;
import com.cornucopia.service.PM_UserManagementService;
import com.cornucopia.service.PM_UserService;
import com.cornucopia.service.ValidateService;

@Controller
@RequestMapping("BgItem")
public class BKjumpController {

	@Resource
	private PM_UserService PM_UserServiceImpl;

	@Resource
	private PM_UserService PM_UserRoleServiceImpl;

	@Resource
	private PM_UserService PM_UserRolesResources;
	@Resource
	private PM_UserManagementService PM_UserManagementServiceImpl;
	@Resource
	private com.cornucopia.service.AG_ProductService AG_ProductServiceImpl;
	@Resource
	private ValidateService ValidateImpl;

	// 后台主页
	@RequestMapping("BgMain")
	public String BgMain() {
		return "BgMain";
	}

	// // 后台提现
	// @RequestMapping("BgwithdrawDeposit")
	// public String BgwithdrawDeposit(HttpSession session) {
	// System.out.println("123");
	// //获取当前人角色
	// String roles="";
	//
	// return "redirect:/WithdrawDepositController/findTask?name="+roles;
	// }
	//
	// 后台默认主页
	@RequestMapping("BgIndex")
	public String BgIndex() {
		return "BgIndex";
	}

	// 后台会员中心
	@RequestMapping("BgAccountManagement")
	public String BgAccountManagement(Model model) {
		List<Member> memberslist = PM_UserManagementServiceImpl.ListmemberList();
		model.addAttribute("memberslist", memberslist);
		return "BgAccountManagement";
	}

	// 后台会员详细
	@RequestMapping("BgAMX")
	public String BgAMX(Model model, int memberId, String mname) {
		Member memberslist = ValidateImpl.member(mname);
		List<SubjectPurchaseRecord> subjectPurchaseRecorList = AG_ProductServiceImpl
				.GetSubjectPurchaseRecordByid(memberslist.getId());
		List<MemberDepositRecord> memberDepositRecord = AG_ProductServiceImpl
				.GetMemberDepositRecordByid(memberslist.getId());
		List<MembeWithdrawRecord> membeWithdrawRecord = AG_ProductServiceImpl
				.GetMembeWithdrawRecordByid(memberslist.getId());
		List<MemberTradeRecord> memberTradeRecord = AG_ProductServiceImpl.GetmemberTradeRecordByid(memberslist.getId());
		MemberAccount MAccount = AG_ProductServiceImpl.UpdateMemberAccount(memberslist.getId());
		List<AwardRecordsVo> AwardRecords = ValidateImpl.AwardRecordsListVo(memberId);
		model.addAttribute("AwardRecords", AwardRecords);
		model.addAttribute("memberslist", memberslist);
		model.addAttribute("MAccount", MAccount);
		model.addAttribute("subjectPurchaseRecorList", subjectPurchaseRecorList);
		model.addAttribute("membeWithdrawRecord", membeWithdrawRecord);
		model.addAttribute("memberDepositRecord", memberDepositRecord);
		model.addAttribute("memberTradeRecord", memberTradeRecord);
		return "BgAMController";
	}

	// 后台付息计划
	@RequestMapping("BgServicePlan")
	public String BgServicePlan(Model model) {
		List<Subject> subject = ValidateImpl.SubjectList();
		model.addAttribute("subject", subject);
		return "BgServicePlan";
	}
	// 后台充值信息计划
	@RequestMapping("BgRechargeRecord")
	public String BgRechargeRecord(Model model) {
		List<MemberDepositRecord> MemberDepositRecord = ValidateImpl.getMemberDepositRecord();
		model.addAttribute("MemberDepositRecord", MemberDepositRecord);
		return "BgRechargeRecord";
	}

	
	Date currentTime = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateString = formatter.format(currentTime);

	// 后台付息计划根据id
	@RequestMapping("BgServicePlanById")
	public String BgServicePlanById(Model model, int subjectId) {
		List<SubjectPurchaseRecord> SubjectPurchaseRecord = ValidateImpl.SubjectPurchaseRecordList(subjectId);
		model.addAttribute("SubjectPurchaseRecord", SubjectPurchaseRecord);
		model.addAttribute("dateString", dateString);
		return "BgServicePlanById";
	}

	// 后台付息计划根据id
	@RequestMapping("SubjectBbinPurchassRecordById")
	public String SubjectBbinPurchassRecord(Model model, int subjectId) {
		List<com.cornucopia.bean.SubjectBbinPurchassRecord> SubjectBbinPurchassRecord = ValidateImpl
				.SubjectBbinPurchassRecordList(subjectId);
		model.addAttribute("SubjectBbinPurchassRecord", SubjectBbinPurchassRecord);
		model.addAttribute("dateString", dateString);
		return "BgServicePlanByTyId";
	}

	// 后台左侧
	@RequestMapping("BgLeft")
	public String BgLeft() {
		return "BgLeft";
	}

	// 后台绑卡管理
	@RequestMapping("BgCardBinding")
	public String BgCardBinding(Model model) {
		List<MemberBankcards> mbl = ValidateImpl.MemberBankcardsList();
		model.addAttribute("mbl", mbl);
		return "BgCardBinding";
	}

	// 后台顶部
	@RequestMapping("BgTop")
	public String BgTop() {
		return "BgTop";
	}

	// 后台默认页面
	@RequestMapping("BgDefault")
	public String BgDefault() {
		return "BgDefault";
	}

	// 后台模块编辑
	@RequestMapping("BgImgList")
	public String BgImgList() {
		return "BgImgList";
	}

	// 后台模块表单
	@RequestMapping("BgImgTable")
	public String BgImgTable() {
		return "BgImgTable";
	}

	// 后台模块表单
	@RequestMapping("Bgnotice")
	public String Bgnotice() {
		return "Bgnotice";
	}

	// 后台模块表单
	@RequestMapping("Bgfeedback")
	public String Bgfeedback() {
		return "Bgfeedback";
	}

	// 后台登陆
	@RequestMapping("BgLogin")
	public String BgLogin() {
		return "BgLogin";
	}

	// 后台右侧
	@RequestMapping("BgRight")
	public String BgRight() {
		return "BgRight";
	}

	// 后台表格
	@RequestMapping("BgTab")
	public String BgTab() {
		return "BgTab";
	}

	// 后台功能
	@RequestMapping("BgTools")
	public String BgTools() {
		return "BgTools";
	}

	// 后台用户权限管理
	@RequestMapping("BgUserPermission")
	public String BgUserPermission(Model model) {
		List<UserRole> UserRoleList = PM_UserRoleServiceImpl.ListAll();
		List UsersList = PM_UserServiceImpl.ListAll();
		model.addAttribute("UsersList", UsersList);
		model.addAttribute("UserRole", UserRoleList);
		return "BgUserPermission";
	}

	// 后台查询角色
	//
	@RequestMapping("BgUserRoles")
	public String BgUserRoles(Model model) {
		List<UserRole> UserRoleList = PM_UserRoleServiceImpl.ListAll();
		model.addAttribute("UserRoleList", UserRoleList);
		return "BgUserRoles";
	}

	// 后台用户权限管理
	@ResponseBody
	@RequestMapping("Ztree")
	public String Ztree(Model model, int id) {
		System.out.println("初始化");
		List<Resources> list = PM_UserRolesResources.ListAll();
		List<Integer> bool = PM_UserRoleServiceImpl.ListAlltrue(id);
		StringBuffer json = new StringBuffer("[");
		String data = "";
		for (int i = 0; i < list.size(); i++) {
			json.append("{id:" + list.get(i).getResources_id() + ",");
			json.append("pId:" + list.get(i).getResources_higher() + ",");
			json.append("name:\"" + list.get(i).getResources_name() + "\",");
			if (list.get(i).getIsParent() != 0) {
				json.append("isParent:" + list.get(i).getIsParent() + ",");
			}
			for (int y = 0; y < bool.size(); y++) {
				if (list.get(i).getResources_id() == bool.get(y)) {

					System.out.println(bool.get(y));
					// 默认勾选
					json.append("checked:true,");
					// 勾选后默认打开
					json.append("open:" + list.get(i).getResources_id() + ",");
				}
			}
			if (list.get(i).getChkDisabled() == 1) {
				json.append("checked:true,");
				json.append("chkDisabled:true,");
			}
			data = json.substring(0, json.lastIndexOf(",")) + "},";
			json = new StringBuffer(data);
		}
		data = json.substring(0, json.length() - 1) + "]";
		System.out.println(data);
		return data;
	}

}
