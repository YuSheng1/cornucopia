package com.cornucopia.service;

import java.util.List;

import com.cornucopia.bean.SysRegion;

public interface AG_ProductService {
	// ǰ̨��Ʒ�����
	public <T> T getBySubjectId(int id);

	public <T> T getBySubjectPurchaseRecordId(Object... object);

	public void UpdateSubjectPurchaseRecord(Object... object);

	// ���׼�¼����������
	public void saveMemberTradeRecord(Object... object);

	// �����˱���������
	public void saveMembertally(Object... object);
    //����������������
	public void saveMemberBankcards(Object... object);
	// �����ֱ���������
	public void saveMembeWithdrawRecord(Object... object);

	// �������ı���������
	public void saveSubjectPurchaseRecord(Object... object);

	// ����Ա�����¼����������
	public void saveMemberProfitRecord(Object... object);

	// �޸ĳ�Ա�˻������
	public void saveMemberAccount(Object... object);

	// �����Ա�˻������
	public void savesMemberAccount(Object... object);

	// ��ѯ��Ա�˻������
	public <T> T UpdateMemberAccount(Object... object);

	// ��������������
	public void saveSubject(Object... object);

	// ����ֵ����������
	public void saveAlipayTradePagePay(Object... object);

	public void updateAlipayTradePagePay(Object... object);

	// �����û�id��ѯSubjectPurchaseRecord
	public <T> T GetSubjectPurchaseRecordByid(int mid);

	// ����id��ѯ��ֵ��¼��
	public <T> T GetMemberDepositRecordByid(int mid);

	// ����id��ѯ����¼��
	public <T> T GetMembeWithdrawRecordByid(int mid);

	// ����id��ѯӢ�����󶨱�
	public <T> T GetMemberBankcardsByid(int mid);

	// ������ˮ�Ų�ѯ���ֱ�
	public <T> T GetMembeWithdrawRecordByliushui(String liushui);

	// ���м����
	public void saveCashFlowProcess(Object... object);
	//��ѯʡ�м���
	public List<SysRegion> saveGetregion(Object... object);
	//��ѯʡ�м���
		public List<SysRegion> saveGetregion1(Object... object);
}