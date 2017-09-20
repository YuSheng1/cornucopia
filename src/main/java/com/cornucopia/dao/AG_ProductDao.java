package com.cornucopia.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.FinanceProductFunds;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.Resources;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.bean.SysRegion;
import com.cornucopia.bean.Users;

@Component
public class AG_ProductDao {
	// ��Ʒ������
	@Autowired
	public SessionFactory sessionFactory;

	public Session getsession() {
		return sessionFactory.getCurrentSession();
	}

	// ʡ�м���
	public List<SysRegion> saveGetregion(Object... objects) {
		Session session = getsession();
		String sql = " from SysRegion p where p.region_level=1";
		List list = session.createQuery(sql).list();
		return list;
	}

	// ʡ�м���1
	public List<SysRegion> saveGetregion1(Object... objects) {
		System.out.println(objects[0] + "***********88");
		Session session = getsession();
		String sql = " from SysRegion p where p.parent_id=" + objects[0];
		List list = session.createQuery(sql).list();
		return list;
	}

	// ����ID��ѯ�������Ʒ��Ϣ ��Ʒ��Ϣ������
	public FinanceProductFunds GetFinanceProductFundsId(int id) {
		Session session = getsession();
		FinanceProductFunds FinanceProductFunds = (FinanceProductFunds) session.get(FinanceProductFunds.class, id);
		return FinanceProductFunds;
	}

	// ����ID��ѯ��Ʒ��Ϣ ��Ʒ��Ϣ������
	public Subject GetSubject(int id) {
		Session session = getsession();
		Subject subject = (Subject) session.get(Subject.class, id);
		return subject;
	}

	// ����ID��ѯ��Ʒ���������
	public List<SubjectPurchaseRecord> GetSubjectPurchaseRecord(Object... objects) {
		Session session = getsession();
		String sql = " from SubjectPurchaseRecord p where p.subject.id=" + objects[0] + " and p.member.id="
				+ objects[1];
		List list = session.createQuery(sql).list();
		return list;
	}

	// ����ID��ѯ��Ʒ���������
	public List<SubjectPurchaseRecord> GetSubjectPurchaseRecordByid(int mid) {
		Session session = getsession();
		String sql = " from SubjectPurchaseRecord p where p.member.id=" + mid;
		List list = session.createQuery(sql).list();
		return list;
	}

	// ����id��ѯ��ֵ��¼��
	public List<MemberDepositRecord> GetMemberDepositRecordByid(int mid) {
		Session session = getsession();
		String sql = " from MemberDepositRecord m where m.member.id=" + mid + " order by create_date desc";
		List list = session.createQuery(sql).list();
		return list;
	}

	// ����id��ѯ����¼��
	public List<MembeWithdrawRecord> GetMembeWithdrawRecordByid(int mid) {
		Session session = getsession();
		String sql = " from MembeWithdrawRecord m where m.member.id=" + mid + " order by create_date desc";
		List list = session.createQuery(sql).list();
		return list;
	}

	// ������ˮ�Ų�ѯ����¼��
	public MembeWithdrawRecord GetMembeWithdrawRecordByliushui(String liushui) {
		Session session = getsession();
		String sql = " from MembeWithdrawRecord m where m.serial_number=" + liushui + " order by create_date desc";
		List list = session.createQuery(sql).list();
		MembeWithdrawRecord membeWithdrawRecord = (MembeWithdrawRecord) list.get(0);
		return membeWithdrawRecord;
	}

	// ����id��ѯ����¼��
	public MemberBankcards GetMemberBankcardsByid(int mid) {
		Session session = getsession();
		String sql = " from MemberBankcards m where m.member.id=" + mid + " order by create_date desc";
		List<MemberBankcards> list = session.createQuery(sql).list();
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	// ����id��ѯ��Ա�����(��ʱ�ò��ϣ����Բ�ѯ�ֶ�û�ģ��Ǵ���)
	// public List GetMemberProfitRecord(Object... objects) {
	// String sql = "select * from Subject_purchase_record where subject_id=" +
	// objects[0] + " and member_id="
	// + objects[1];
	// List list =
	// sessionFactory.getCurrentSession().createSQLQuery(sql).list();
	// return list;
	// }

	// ����ID�޸Ĳ�Ʒ���������
	public void UpdateSubjectPurchaseRecord(Object... objects) {
		Session session = getsession();
		session.update(objects[0]);
	}

	// ����ID��ѯ��Ա�˻�������
	public MemberAccount GetMemberAccount(Object... objects) {
		Session session = getsession();
		String sql = " from MemberAccount u where u.member.id=" + objects[0];
		List<MemberAccount> list = session.createQuery(sql).list();
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	// ���׼�¼����������
	public void saveMemberTradeRecord(Object... object) {
		Session session = getsession();
		session.saveOrUpdate(object[0]);

	}

	// �����ּ�¼�м����������
	public void saveCashFlowProcess(Object... object) {
		Session session = getsession();
		session.saveOrUpdate(object[0]);

	}

	// ������������������
	public void saveMemberBankcards(Object... object) {
		Session session = getsession();
		session.save(object[0]);
	}

	// �����˱���������
	public void saveMembertally(Object... object) {
		Session session = getsession();
		session.saveOrUpdate(object[0]);
	}

	// �����ֱ���������
	public void saveMembeWithdrawRecord(Object... object) {
		Session session = getsession();
		session.saveOrUpdate(object[0]);
	}

	// ����ֵ����������
	public void saveAlipayTradePagePay(Object... object) {
		Session session = getsession();
		session.save(object[0]);
	}

	// ����ֵ����������
	public void updateAlipayTradePagePay(Object... object) {
		Session session = getsession();
		session.update(object[0]);
	}

	// �޸ĳ�Ա�����
	public void saveMemberAccount(Object... object) {
		Session session = getsession();
		session.update(object[0]);
	}

	// �޸ĳ�Ա�����
	public void savesMemberAccount(Object... object) {
		Session session = getsession();
		session.save(object[0]);
	}

	// �޸ı�����
	public void saveSubject(Object... object) {
		Session session = getsession();
		session.update(object[0]);
	}

	// �������ı���������
	public void saveSubjectPurchaseRecord(Object... object) {
		Session session = getsession();
		session.save(object[0]);
	}

	// �������ı���������
	public void saveMemberProfitRecord(Object... object) {
		Session session = getsession();
		session.save(object[0]);
	}

}