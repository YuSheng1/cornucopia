package com.cornucopia.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.MemberProfitRecord;
import com.cornucopia.bean.MemberTradeRecord;
import com.cornucopia.bean.Member_tally;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.service.AG_ProductService;
import com.cornucopia.service.ValidateService;

@Controller
@RequestMapping("AG_UserPlay")
public class AG_UserPlay {
	// 用户购买操作类
	@Resource
	private com.cornucopia.service.AG_UserPlayService AG_UserPlayServiceImpl;
	// 杂查询类
	@Resource
	private ValidateService validateImpl;
	// 产品炒作类
	@Resource
	private AG_ProductService AG_ProductServiceImpl;
	Date currentTime = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateString = formatter.format(currentTime);
   
	@RequestMapping("GoPlay")
	public String BgMain(MemberTradeRecord memberTradeRecord,AwardRecords awardRecords, Member_tally member_tally,
			SubjectPurchaseRecord subjectPurchaseRecord, MemberAccount memberAccount,
			MemberProfitRecord memberProfitRecord, String memberName, int amount, Model model, int subject_id) {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DATE);
		int hour=cal.get(Calendar.HOUR);//小时
	    int minute=cal.get(Calendar.MINUTE);//分           
	    int second=cal.get(Calendar.SECOND);//秒 
	    //用来使用流水号
	    String no=""+year+month+day+hour+minute+second;
		// subjectType标的类别壮壮写完后添加现在是补充
		// fund_flow 交易类型 这里是 流入
		// trade_status 默认 0 失败
		Member member = validateImpl.member(memberName);
		//邀请码奖励。根据被邀请码查看邀请人
		if(member.getInvitedCode()!=null&&member.getInvitedCode()!=""&&amount>1000&&member.getInvitedCode().length()>0){
			Member memberyq = validateImpl.Useryqjl(member.getInvitedCode());
			System.out.println(memberyq.getId()+"奖励");
			System.out.println(member.getId());
		// 查询邀请人MemberAccount表
			MemberAccount MAccount = AG_ProductServiceImpl.UpdateMemberAccount(memberyq.getId());
			int many=(int)MAccount.getUseable_balance()+(amount/100);
			int jlmoney=amount/10;
			MAccount.setUseable_balance(many);
			MAccount.setMember(memberyq);
			MAccount.setUpdate_date(memberTradeRecord.getCreate_date());
			awardRecords.setAddTime(memberTradeRecord.getCreate_date());
			awardRecords.setAmount(many);
			awardRecords.setByinvitingid(member.getId());
			awardRecords.setInvitingid(memberyq.getId());
			awardRecords.setType(1);
			awardRecords.setIsAward(1);
			// 保存MemberAccount表数据
			AG_ProductServiceImpl.saveMemberAccount(MAccount);
			AG_ProductServiceImpl.saveAwardRecords(awardRecords);
		save(member,MAccount,memberyq,memberTradeRecord,many,no,jlmoney);
		}
		// 根据id查询标的信息
		Subject subject = AG_ProductServiceImpl.getBySubjectId(subject_id);
		// 标的已投金额加购买金额
		subject.setAmount(subject.getAmount() + amount);
		// 标的已购人数+1
		subject.setBought(subject.getBought() + 1);
		// 交易记录表添加标题
		memberTradeRecord.setTrade_name("购买:" + subject.getName());
		memberTradeRecord.setTrade_no(no.trim());
		// 交易记录表添加交易流入
		memberTradeRecord.setFund_flow(1);
		memberTradeRecord.setTrade_type("投资记录");
		// 交易记录表添加交易状态
		memberTradeRecord.setTrade_status(0);
		// 交易记录表添加member对象
		memberTradeRecord.setMember(member);
		// 记账表消费类型暂时放0 以后天际
		member_tally.setType_id(0);
		// 记账表类别
		member_tally.setType_name("购买:" + subject.getName());
		//及账表成功
		member_tally.setType_id(1);
		// 记账表金额
		member_tally.setAmount(memberTradeRecord.getAmount());
		// 记账表时间
		member_tally.setCreate_date(memberTradeRecord.getCreate_date());
		// 记账表支付时间
		member_tally.setPay_date(memberTradeRecord.getCreate_date());
		// 记账表添加member对象
		member_tally.setMember(member);
		// 标的购买表金额
		subjectPurchaseRecord.setAmount(memberTradeRecord.getAmount());
		// 标的购买表IP
		subjectPurchaseRecord.setDeal_id(memberTradeRecord.getCreate_date());
		// 标的购买表流水号
		subjectPurchaseRecord.setSerial_number(memberTradeRecord.getCreate_date());
		// 表的购买表添加subject对象
		subjectPurchaseRecord.setSubject(subject);
		// 标的购买表添加member对象
		subjectPurchaseRecord.setMember(member);
		// 标的购买表是否删除 不能删除用户使用假删除所用到的字段
		subjectPurchaseRecord.setDelflag(0);
		// 标的购买表添加时间
		subjectPurchaseRecord.setCreate_date(memberTradeRecord.getCreate_date());
		// 标的购买表修改时间
		subjectPurchaseRecord.setUpdate_date(memberTradeRecord.getCreate_date());
		// 标的购买表添加利息 这个会动态改变
		subjectPurchaseRecord.setInterset(((amount*(subject.getYear_rate()))/365)*subject.getPeriod());
		// 标的购买表是否还款
		subjectPurchaseRecord.setIspayment(0);
		// 表的购买表次数 判断这个人是否买了这个标
		List<SubjectPurchaseRecord> sRecord = AG_ProductServiceImpl.getBySubjectPurchaseRecordId(subject_id,
				member.getId());
		// 最后计息日
		Calendar now = Calendar.getInstance(); 
		now.add(Calendar.DATE, subject.getPeriod());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdf.format(now.getTime());
		System.out.println(dateStr);
		subjectPurchaseRecord.setLast_profit_day(dateStr);
		// 查询这个用户MemberAccount表
		MemberAccount MAccount = AG_ProductServiceImpl.UpdateMemberAccount(member.getId());
		// 修改这个用户MemberAccount的可用金额
		MAccount.setInvest_amount(MAccount.getInvest_amount()+amount);
		MAccount.setMember(member);
		MAccount.setUseable_balance(MAccount.getUseable_balance() - amount);
		MAccount.setUpdate_date(memberTradeRecord.getCreate_date());
		// 添加用户利润表流水号
		memberProfitRecord.setSerial_number(memberTradeRecord.getCreate_date());
		// 添加用户利润表类型(注意这个写的时候没用上，数据库是空置)
		memberProfitRecord.setType(1);
		// 添加用户利润表创建时间
		memberProfitRecord.setCreate_date(memberTradeRecord.getCreate_date());
		// 添加用户利润表修改时间
		memberProfitRecord.setUpdate_date(memberTradeRecord.getCreate_date());
		memberProfitRecord.setAmount(((amount*(subject.getYear_rate()))/365)*subject.getPeriod());
		// 添加用户利润表备注
		memberProfitRecord.setComment(subject.getName() + "收益");
		// 添加用户利润表计息年
		memberProfitRecord.setProfit_year(year);
		// 添加用户利润表计息月
		memberProfitRecord.setProfit_month(month);
		// 添加用户利润表计息日
		memberProfitRecord.setProfit_day(day);
		// 注入subject对象
		memberProfitRecord.setSubject(subject);
		memberProfitRecord.setMember(member);
		int count = 0;
		if (sRecord.size() > 1) {
			for (SubjectPurchaseRecord subjectPurchaseRecord2 : sRecord) {
				count = subjectPurchaseRecord2.getPay_interest_times();
				subjectPurchaseRecord2.setPay_interest_times(count + 1);
				subjectPurchaseRecord.setPay_interest_times(count + 1);
				subjectPurchaseRecord2.setSubject(subject);
				subjectPurchaseRecord2.setMember(member);
				// 如果这个集合大于0 就去根据用户名和标的id去修改所有次数+1
				AG_ProductServiceImpl.UpdateSubjectPurchaseRecord(subjectPurchaseRecord2);
			}
			
		} else {
			// 如果这个用户没有购买这个标，就让他加1
			subjectPurchaseRecord.setPay_interest_times(1);
		}
		// 往数据库里添加交易记录表memberTradeRecord
		AG_ProductServiceImpl.saveMemberTradeRecord(memberTradeRecord);
		// 往数据库里添加记账表member_tally
		AG_ProductServiceImpl.saveMembertally(member_tally);
		// 往数据库里添加标的购买表subjectPurchaseRecord
		AG_ProductServiceImpl.saveSubjectPurchaseRecord(subjectPurchaseRecord);
		// 保存subject
		AG_ProductServiceImpl.saveSubject(subject);
		// 保存memberProfitRecord对象
		AG_ProductServiceImpl.saveMemberProfitRecord(memberProfitRecord);
		// 保存MemberAccount表数据
		AG_ProductServiceImpl.saveMemberAccount(MAccount);

		return "redirect:/item/Purchased?id="+subject.getId();
	}
	
	@RequestMapping("GoRecharge")
	public String GoRecharge() {
		return "ZhifuLogin";
	}
	
	@RequestMapping("AlipayTradePagePay")
	public String AlipayTradePagePay(MemberTradeRecord memberTradeRecord,
	MemberDepositRecord memberDepositRecord,String name, String WIDout_trade_no, String WIDsubject, int WIDtotal_amount,
			String WIDbody, String date,HttpSession session) {
		// WIDout_trade_no订单标号
		// WIDsubject
		// WIDtotal_amount订单金额
		// WIDbody商品描述
		// date系统时间
		// 获取用户表
		Member member=(Member)session.getAttribute("member");
		// 添加充值流水表
		memberDepositRecord.setAmount(WIDtotal_amount);
		// 添加创建日期
		memberDepositRecord.setCreate_date(date);
		// 添加修改日期
		memberDepositRecord.setUpdate_date(date);
		// 交易是否可用
		memberDepositRecord.setDelFlag(0);
		// 添加充值方
		memberDepositRecord.setPay_channel_name("支付宝充值");
		// 添加充值方订单号
		memberDepositRecord.setPay_channel_order_no(WIDout_trade_no);
		// 添加流水号
		memberDepositRecord.setSerial_number(WIDout_trade_no);
		// 添加充值状态
		memberDepositRecord.setStatus(0);
		// memberTradeRecord
		memberTradeRecord.setAmount(WIDtotal_amount);
		memberTradeRecord.setCounterpart("梵雅金融");
		memberTradeRecord.setCreate_date(date);
		memberTradeRecord.setFund_flow(1);
		memberTradeRecord.setTrade_name("支付宝充值" + WIDtotal_amount + "元");
		memberTradeRecord.setTrade_no(WIDout_trade_no);
		// 状态写0了 注意这里
		memberTradeRecord.setTrade_status(0);
		memberTradeRecord.setTrade_type("支付宝充值");
		memberTradeRecord.setUpdate_date(date);
		memberTradeRecord.setMember(member);
		// 保存member对象
		memberDepositRecord.setMember(member);
		// 充值表添加信息
		AG_ProductServiceImpl.saveAlipayTradePagePay(memberDepositRecord);
		AG_ProductServiceImpl.saveMemberTradeRecord(memberTradeRecord);
		    session.setAttribute("WIDtotal_amount", WIDtotal_amount);
		    session.setAttribute("memberDepositRecord", memberDepositRecord);
		    session.setAttribute("memberTradeRecord", memberTradeRecord);
		return "alipay.trade.page.pay";
	}

	// 支付成功
	@RequestMapping("AlipayTradePagePaySuccessful")
	public String AlipayTradePagePaySuccessful(Member_tally member_tally,HttpSession session) {
		// 支付成功
		// 交易状态成功
		Member member=(Member)session.getAttribute("member");
		MemberDepositRecord memberDepositRecord=(MemberDepositRecord)session.getAttribute("memberDepositRecord");
		MemberTradeRecord memberTradeRecord=(MemberTradeRecord)session.getAttribute("memberTradeRecord");
		int number =(int) session.getAttribute("WIDtotal_amount");
		Subject sub=(Subject) session.getAttribute("subject");
		memberDepositRecord.setStatus(1);
		
		AG_ProductServiceImpl.updateAlipayTradePagePay(memberDepositRecord);
		memberTradeRecord.setTrade_status(1);
		AG_ProductServiceImpl.saveMemberTradeRecord(memberTradeRecord);
		// 查询这个用户MemberAccount表
		MemberAccount MAccount = AG_ProductServiceImpl.UpdateMemberAccount(member.getId());
		// 修改这个用户MemberAccount的可用金额
		MAccount.setMember(member);
		MAccount.setUseable_balance(MAccount.getUseable_balance() + number);
		MAccount.setUpdate_date(memberTradeRecord.getCreate_date());
		// 保存MemberAccount表数据
		AG_ProductServiceImpl.saveMemberAccount(MAccount);
		member_tally.setAmount(number);
		member_tally.setCreate_date(dateString);
		member_tally.setMember(member);
		member_tally.setPay_date(dateString);
		member_tally.setType_id(1);
		member_tally.setType_name("支付宝充值");
		AG_ProductServiceImpl.saveMembertally(member_tally);
		session.setAttribute("memberDepositRecord", null);
		session.setAttribute("memberTradeRecord", null);
		session.setAttribute("WIDtotal_amount", null);
		if(sub==null){
			return "redirect:/item/Contact";
		}
		return "redirect:/item/Purchased?id="+sub.getId();
	}
	  public void save(Member member,MemberAccount MAccount,Member memberyq,MemberTradeRecord memberTradeRecord,int many,String no,int jlmoney){
		  MemberTradeRecord memberTradeRecordMember=new MemberTradeRecord();
			memberTradeRecordMember.setTrade_name("来自"+member.getMember_name()+"的邀请奖励:" + jlmoney+"元");
			memberTradeRecordMember.setTrade_no(no.trim()+MAccount.getId());
			memberTradeRecordMember.setCounterpart(member.getMember_name());
			memberTradeRecordMember.setAmount(jlmoney);
			memberTradeRecordMember.setTrade_type("邀请奖励");
			// 交易记录表添加交易流入
			memberTradeRecordMember.setFund_flow(1);
			// 交易记录表添加交易状态
			memberTradeRecordMember.setTrade_status(1);
			memberTradeRecordMember.setCreate_date(memberTradeRecord.getCreate_date());
			memberTradeRecordMember.setUpdate_date(memberTradeRecord.getCreate_date());
			// 交易记录表添加member对象
			memberTradeRecordMember.setMember(memberyq);
			AG_ProductServiceImpl.save1MemberTradeRecord(memberTradeRecordMember);
	  }
}
