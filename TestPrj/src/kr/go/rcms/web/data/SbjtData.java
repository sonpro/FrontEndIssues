package kr.go.rcms.web.data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.StringTokenizer;

public class SbjtData implements Serializable
{
	/**
     *
     */
    private static final long serialVersionUID = 3686210962999173888L;

	public SbjtData(){}

	private String PmsId				= null;	//PMSID
	private String CpcgInstID			= null;	//������ID
	private String CpcgInstNm			= null;	//��������
	private String CpcgInstBzRegNo 		= null;	//����������ڹ�ȣ
	private String CpcgInstCrpnRegNo	= null;	//���������ε�Ϲ�ȣ
	private String BzClasCd				= null;	//����з��ڵ�
	private String BzClasNm				= null;	//����з���
	private String SbjtId				= null;	//����ID
	private String SumupSbjtId			= null; //�Ѱ�����ID
	private String SbjtNm				= null;	//������
	private String Annl					= null;	//���翬������
	private String PrsSbjtStg			= null;	//��������ܰ�
	private String AgrmtCnclId			= null;	//����ü��ID
	private String SbjtDv				= null; //��������
	private String SbjtPrgrDv			= null;	//�����������
	private String TotlDevTrmStrDt		= null;	//�Ѱ��߱Ⱓ��������
	private String TotlDevTrmEndDt		= null;	//�Ѱ��߱Ⱓ��������
	private String DevStrDt				= null;	// ���߽�������
	private String DevEndDt				= null;	// ������������

	private String AgrmtSeqNo			= null;	//�����Ϸù�ȣ
	private String AgrmtInstId			= null;	//������ID
	private String AgrmtInstNm			= null;	//��������
	private String SpvsInstID			= null;	//�ְ����ID
	private String SpvsInstNm			= null;	//�ְ������
	private String AgrmtInstCrpnRegNo	= null;	//���������ε�Ϲ�ȣ
	private String AgrmtInstBzRegNo		= null;	//����������ڵ�Ϲ�ȣ
	private String InstRoleDv			= null;	//������ұ���
	private String InstRoleSbDv			= null;	//������Ҽ��α���
	private String SumupRsprExctnPossYn	= null; //�Ѱ�å�������డ�ɿ���
	private String NprfInstYn			= null; //�񿵸��������
	private String InstSbjtPrgrSt		= null;	//��������������
	private String ExctnLimtSt			= null;	//�������ѻ���
	private String InstExctnLimtSt		= null;	//������డ�ɻ���
	private String SbjtResUsrNm			= null;	//����å���ڼ���
	private String TotlInstAmt			= null;	//�ѻ���ݾ�
	private String InstTotlInstAmt		= null;	//����ѻ���ݾ�
	private String ExctnStgDv			= null;	//����ܰ豸��
	private String FncInstContId		= null;	//����������ID
	private String BzMomAcctBnkCd 		= null;	//�������������ڵ�
	private String BzMomAcctNo			= null;	//�������¹�ȣ
	private String RchExpAcctBnkCd		= null;	//��������������ڵ�
	private String MyAcctTrnsAlwnYn		= null; //��������ü��뿩��
	private String RchExpAcctNo			= null;	//��������¹�ȣ
	private String RcmsGrpCd			= null;	//RCMS�׷��ڵ�
	private String HmpwRoleDv			= null;	//�η¿��ұ���
	private String HmpwRoleSbDv			= null;	//�η¿��Ҽ��α���
	private String MySbjtYn				= null;	//����������

	private String FmbkNtryYn			= null; //�߹�ŷ���Կ���
	private String PwRegYn				= null; //��й�ȣ��Ͽ���
	private String CrdcoRegYn			= null; //ī����Ͽ���
	private String TotlCrdNcnt			= null; //��ī��Ǽ�
	private String InstLnkType			= null; //�������Ÿ��
	//2011.11.11 sonpro
	private String PsnlExpnAcctUseYn	= null; //�ΰǺ����ް��¼�������
	private String UnfyMgntInstYn		= null; //���հ����������
	//2011.07.19
	private String SacShp				= null; //��������
	private String AifwCnt				= null;	//�߹�ŷ��ûī��Ʈ
	
	//2012.04.03
	private String AibsSeq				= null; //��������ϼ���
	
	private String AgrmtTgtStrStg		= null; //��������۴ܰ�
	private String AgrmtTgtStrAnnl		= null; //��������ۿ���
	private String AgrmtTgtEndStg		= null; //����������ܰ�
	private String AgrmtTgtEndAnnl		= null; //���������Ῥ��
	
	private String SacSn                = null;
	private String AgrmtDv              = null;
	private String AgcfYn               = null;
	
	private String OpagYn               = null; //������ ���� ��,����� ��������
	
	private String AgrmtStDt			= null; //�����������
	
	private Hashtable<String, String> hmItxp							= null; // ���
	private Hashtable<String, Hashtable<String,String>> hmItxpDtlsItxp	= null; // �񼼸�
	private Hashtable<String, String> hmDtlsItxp						= null; // ����
	private Hashtable<String, Hashtable<String, String>> hmSubDtlsItxp	= null; // ������
	private Hashtable<String, String> hmUpItxp							= null; // ���������� ����ڵ尡������
	private Hashtable<String, String> HtSpotDtlsItxp					= null; // ������밡�ɼ���

	private ArrayList<HashMap<String,String>> bzList			= null; // �������Ʈ

	/**
	 * �������Ʈ�� ��ȯ�մϴ�.
	 **/
	public ArrayList<HashMap<String, String>> getBzList() {
		return bzList;
	}

	/**
	 * �������Ʈ�� �����ɴϴ�.
	 **/
	public void setBzList(ArrayList<HashMap<String, String>> bzList) {
		this.bzList = bzList;
	}

	/**
	 * �񿵸�������θ� ��ȯ�մϴ�.
	 **/
	public String getNprfInstYn() {
		return NprfInstYn;
	}

	/**
	 * �񿵸�������θ� �����մϴ�.
	 **/
	public void setNprfInstYn(String nprfInstYn) {
		NprfInstYn = nprfInstYn;
	}

	/**
	 * ������Ҽ��α��и� ��ȯ�մϴ�.
	 **/
	public String getInstRoleSbDv() {
		return InstRoleSbDv;
	}

	/**
	 * ������Ҽ��α����� �����մϴ�.
	 **/
	public void setInstRoleSbDv(String instRoleSbDv) {
		InstRoleSbDv = instRoleSbDv;
	}

	/**
	 * �η¿��Ҽ��α����� ��ȯ�մϴ�.
	 **/
	public String getHmpwRoleSbDv() {
		return HmpwRoleSbDv;
	}

	/**
	 * �η¿��Ҽ��α����� �����մϴ�.
	 **/
	public void setHmpwRoleSbDv(String hmpwRoleSbDv) {
		HmpwRoleSbDv = hmpwRoleSbDv;
	}

	/**
	 * �Ѱ�å�������డ�ɿ��θ� ��ȯ�մϴ�.
	 **/
	public String getSumupRsprExctnPossYn() {
		return SumupRsprExctnPossYn;
	}

	/**
	 * �Ѱ�å�������డ�ɿ��θ� �����մϴ�.
	 **/
	public void setSumupRsprExctnPossYn(String sumupRsprExctnPossYn) {
		SumupRsprExctnPossYn = sumupRsprExctnPossYn;
	}

	/**
	 * �߹�ŷ���Կ��θ� ��ȯ�մϴ�.
	 **/
	public String getFmbkNtryYn() {
		return FmbkNtryYn;
	}

	/**
	 * �߹�ŷ���Կ��θ� �����մϴ�.
	 **/
	public void setFmbkNtryYn(String fmbkNtryYn) {
		FmbkNtryYn = fmbkNtryYn;
	}

	/**
	 * ��й�ȣ��Ͽ��θ� ��ȯ�մϴ�.
	 **/
	public String getPwRegYn() {
		return PwRegYn;
	}

	/**
	 * ��й�ȣ��Ͽ��θ� �����մϴ�.
	 **/
	public void setPwRegYn(String pwRegYn) {
		PwRegYn = pwRegYn;
	}

	/**
	 * ī����Ͽ��θ� ��ȯ�մϴ�.
	 **/
	public String getCrdcoRegYn() {
		return CrdcoRegYn;
	}

	/**
	 * ī����Ͽ��θ� �����մϴ�.
	 **/
	public void setCrdcoRegYn(String crdcoRegYn) {
		CrdcoRegYn = crdcoRegYn;
	}

	/**
	 * ��ī��Ǽ��� ��ȯ�մϴ�.
	 **/
	public String getTotlCrdNcnt() {
		return TotlCrdNcnt;
	}

	/**
	 * ��ī��Ǽ��� �����մϴ�.
	 **/
	public void setTotlCrdNcnt(String totlCrdNcnt) {
		TotlCrdNcnt = totlCrdNcnt;
	}

	/**
	 * �η¿��ұ����� ��ȯ�մϴ�.
	 **/
	public String getHmpwRoleDv() {
		return HmpwRoleDv;
	}

	/**
	 * �η¿��ұ����� �����մϴ�.
	 **/
	public void setHmpwRoleDv(String hmpwRoleDv) {
		HmpwRoleDv = hmpwRoleDv;
	}

	/**
	 * �������ѻ��¸� ��ȯ�մϴ�.
	 **/
	public String getExctnLimtSt() {
		return ExctnLimtSt;
	}

	/**
	 * �������ѻ��¸� �����մϴ�.
	 **/
	public void setExctnLimtSt(String exctnLimtSt) {
		ExctnLimtSt = exctnLimtSt;
	}

	/**
	 * ����ܰ豸���� ��ȯ�մϴ�.
	 **/
	public String getExctnStgDv() {
		return ExctnStgDv;
	}

	/**
	 * ����ܰ豸���� �����մϴ�.
	 **/
	public void setExctnStgDv(String exctnStgDv) {
		ExctnStgDv = exctnStgDv;
	}

	/**
	 * ����������ڵ�Ϲ�ȣ�� ��ȯ�մϴ�.
	 **/
	public String getAgrmtInstBzRegNo() {
		return AgrmtInstBzRegNo;
	}

	/**
	 * ����������ڵ�Ϲ�ȣ�� �����մϴ�.
	 **/
	public void setAgrmtInstBzRegNo(String agrmtInstBzRegNo) {
		AgrmtInstBzRegNo = agrmtInstBzRegNo;
	}

	/**
	 * ��������ܰ踦 ��ȯ�մϴ�.
	 **/
	public String getPrsSbjtStg() {
		return PrsSbjtStg;
	}

	/**
	 * ��������ܰ踦 �����մϴ�.
	 **/
	public void setPrsSbjtStg(String prsSbjtStg) {
		PrsSbjtStg = prsSbjtStg;
	}

	/**
	 * ���߽������ڸ� ��ȯ�մϴ�.
	 **/
	public String getDevStrDt() {
		return DevStrDt;
	}

	/**
	 * ���߽������ڸ� �����մϴ�.
	 **/
	public void setDevStrDt(String devStrDt) {
		DevStrDt = devStrDt;
	}

	/**
	 * �����������ڸ� ��ȯ�մϴ�.
	 **/
	public String getDevEndDt() {
		return DevEndDt;
	}

	/**
	 * �����������ڸ� �����մϴ�.
	 **/
	public void setDevEndDt(String devEndDt) {
		DevEndDt = devEndDt;
	}

	/**
	 * ������밡�ɼ����� ��ȯ�մϴ�.
	 **/
	public Hashtable<String, String> getHtSpotDtlsItxp() {
		return HtSpotDtlsItxp;
	}

	/**
	 * ������밡�ɼ����� �����մϴ�.
	 **/
	public void setHtSpotDtlsItxp(Hashtable<String, String> htSpotDtlsItxp) {
		HtSpotDtlsItxp = htSpotDtlsItxp;
	}

	/**
	 * ���������ι�ȣ�� ��ȯ�մϴ�.
	 **/
	public String getCpcgInstCrpnRegNo() {
		return CpcgInstCrpnRegNo;
	}

	/**
	 * ���������ι�ȣ�� �����մϴ�.
	 **/
	public void setCpcgInstCrpnRegNo(String cpcgInstCrpnRegNo) {
		CpcgInstCrpnRegNo = cpcgInstCrpnRegNo;
	}

	/**
	 * ������ID�� ��ȯ�մϴ�.
	 **/
	public String getAgrmtInstId() {
		return AgrmtInstId;
	}

	/**
	 * ������ID�� �����մϴ�.
	 **/
	public void setAgrmtInstId(String agrmtInstId) {
		AgrmtInstId = agrmtInstId;
	}

	/**
	 * ���������ε�Ϲ�ȣ�� ��ȯ�մϴ�.
	 **/
	public String getAgrmtInstCrpnRegNo() {
		return AgrmtInstCrpnRegNo;
	}

	/**
	 * ���������ε�Ϲ�ȣ�� �����մϴ�.
	 **/
	public void setAgrmtInstCrpnRegNo(String agrmtInstCrpnRegNo) {
		AgrmtInstCrpnRegNo = agrmtInstCrpnRegNo;
	}

	/**
	 * ����������ID�� ��ȯ�մϴ�.
	 **/
	public String getFncInstContId() {
		return FncInstContId;
	}

	/**
	 * ����������ID�� �����մϴ�.
	 **/
	public void setFncInstContId(String fncInstContId) {
		FncInstContId = fncInstContId;
	}

	/**
	 * ����ڵ���� ��ȯ�մϴ�.
	 **/
	public Hashtable<String, String> getHmItxp() {
		return hmItxp;
	}

	/**
	 * ����ڵ���� �����մϴ�.
	 **/
	public void setHmItxp(Hashtable<String, String> hmItxp) {
		this.hmItxp = hmItxp;
	}

	/**
	 * �񼼸��� ��ȯ�մϴ�.
	 **/
	public Hashtable<String, Hashtable<String, String>> getHmItxpDtlsItxp() {
		return hmItxpDtlsItxp;
	}

	/**
	 * �񼼸��� �����մϴ�.
	 **/
	public void setHmItxpDtlsItxp(Hashtable<String, Hashtable<String, String>> hmItxpDtlsItxp) {
		this.hmItxpDtlsItxp = hmItxpDtlsItxp;
	}

	/**
	 * ����������ڹ�ȣ�� ��ȯ�մϴ�.
	 **/
	public String getCpcgInstBzRegNo() {
		return CpcgInstBzRegNo;
	}

	/**
	 * ����������ڹ�ȣ�� �����մϴ�.
	 **/
	public void setCpcgInstBzRegNo(String cpcgInstBzRegNo) {
		CpcgInstBzRegNo = cpcgInstBzRegNo;
	}

	/**
	 * RCMS�׷��ڵ带 ��ȯ�մϴ�.
	 **/
	public String getRcmsGrpCd() {
		return RcmsGrpCd;
	}

	/**
	 * RCMS�׷��ڵ带 �����մϴ�.
	 **/
	public void setRcmsGrpCd(String rcmsGrpCd) {
		RcmsGrpCd = rcmsGrpCd;
	}

	/**
	 * ������ ��ȯ�մϴ�.
	 **/
	public Hashtable<String, String> getHmDtlsItxp() {
		return hmDtlsItxp;
	}

	/**
	 * ������ �����ɴϴ�.
	 **/
	public void setHmDtlsItxp(Hashtable<String, String> hmDtlsItxp) {
		this.hmDtlsItxp = hmDtlsItxp;
	}

	/**
	 * �������� ��ȯ�մϴ�.
	 **/
	public Hashtable<String, Hashtable<String, String>> getHmSubDtlsItxp() {
		return hmSubDtlsItxp;
	}

	/**
	 * �������� �����ɴϴ�.
	 **/
	public void setHmSubDtlsItxp(Hashtable<String, Hashtable<String, String>> hmSubDtlsItxp) {
		this.hmSubDtlsItxp = hmSubDtlsItxp;
	}

	/**
	 * ���� ��������� ��ȯ�մϴ�.
	 **/
	public Hashtable<String, String> getHmUpItxp() {
		return hmUpItxp;
	}

	/**
	 * ���� ��������� ��ȯ�մϴ�.
	 **/
	public String getHmUpItxp(String DtlsItxpCd){
		return hmUpItxp.get(DtlsItxpCd);
	}

	/**
	 * ���� ��������� �����ɴϴ�.
	 **/
	public void setHmUpItxp(Hashtable<String, String> hmUpItxp) {
		this.hmUpItxp = hmUpItxp;
	}

	/**
	 * ���� ��������ڵ带 ��ȯ�մϴ�.
	 **/
	public String getUpItxpCd(String DtlsItxpCd){
		String itxp = getHmUpItxp(DtlsItxpCd);
		StringTokenizer st = new StringTokenizer(itxp, ";");

		return st.nextToken();
	}

	/**
	 * ���� ���������� ��ȯ�մϴ�.
	 **/
	public String getUpItxpNm(String DtlsItxpCd){
		String itxp = getHmUpItxp(DtlsItxpCd);
		StringTokenizer st = new StringTokenizer(itxp, ";");

		st.nextToken();
		return st.nextToken();
	}

	/**
	 * �������� ��ȯ�մϴ�.
	 **/
	public String getAgrmtInstNm() {
		return AgrmtInstNm;
	}

	/**
	 * �������� �����մϴ�.
	 **/
	public void setAgrmtInstNm(String agrmtInstNm) {
		AgrmtInstNm = agrmtInstNm;
	}

	/**
	 * �ְ����ID�� ��ȯ�մϴ�.
	 **/
	public String getSpvsInstID() {
		return SpvsInstID;
	}

	/**
	 * �ְ����ID�� �����մϴ�.
	 **/
	public void setSpvsInstID(String spvsInstID) {
		SpvsInstID = spvsInstID;
	}

	/**
	 * ������ID�� ��ȯ�մϴ�.
	 **/
	public String getCpcgInstID() {
		return CpcgInstID;
	}

	/**
	 * ������ID�� �����մϴ�.
	 **/
	public void setCpcgInstID(String cpcgInstID) {
		CpcgInstID = cpcgInstID;
	}

	/**
	 * ����ѻ���ݾ��� ��ȯ�մϴ�.
	 **/
	public String getInstTotlInstAmt() {
		return InstTotlInstAmt;
	}

	/**
	 * ����ѻ���ݾ��� �����մϴ�.
	 **/
	public void setInstTotlInstAmt(String instTotlInstAmt) {
		InstTotlInstAmt = instTotlInstAmt;
	}

	/**
	 * ������డ�ɻ��¸� ��ȯ�մϴ�.
	 **/
	public String getInstExctnLimtSt() {
		return InstExctnLimtSt;
	}

	/**
	 * ������డ�ɻ��¸� �����մϴ�.
	 **/
	public void setInstExctnLimtSt(String InstExctnLimtSt) {
		this.InstExctnLimtSt = InstExctnLimtSt;
	}

	/**
	 * �������������¸� ��ȯ�մϴ�.
	 **/
	public String getInstSbjtPrgrSt() {
		return InstSbjtPrgrSt;
	}

	/**
	 * �������������¸� �����մϴ�.
	 **/
	public void setInstSbjtPrgrSt(String instSbjtPrgrSt) {
		InstSbjtPrgrSt = instSbjtPrgrSt;
	}

	/**
	 * PMSID�� ��ȯ�մϴ�.
	 **/
	public String getPmsId() {
		return PmsId;
	}

	/**
	 * PMSID�� �����մϴ�.
	 **/
	public void setPmsId(String pmsId) {
		PmsId = pmsId;
	}

	/**
	 * ����з��ڵ带 ��ȯ�մϴ�.
	 **/
	public String getBzClasCd() {
		return BzClasCd;
	}

	/**
	 * ����з��ڵ带 �����մϴ�.
	 **/
	public void setBzClasCd(String bzClasCd) {
		BzClasCd = bzClasCd;
	}

	/**
	 * ����з����� ��ȯ�մϴ�.
	 **/
	public String getBzClasNm() {
		return BzClasNm;
	}

	/**
	 * ����з����� �����մϴ�.
	 **/
	public void setBzClasNm(String bzClasNm) {
		BzClasNm = bzClasNm;
	}

	/**
	 * ���翬�������� ��ȯ�մϴ�.
	 **/
	public String getAnnl() {
		return Annl;
	}

	/**
	 * ���翬�������� �����մϴ�.
	 **/
	public void setAnnl(String Annl) {
		this.Annl = Annl;
	}

	/**
	 * ����ID�� ��ȯ�մϴ�.
	 **/
	public String getSbjtId() {
		return SbjtId;
	}

	/**
	 * ����ID�� �����մϴ�.
	 **/
	public void setSbjtId(String sbjtId) {
		SbjtId = sbjtId;
	}

	/**
	 * �ְ�������� ��ȯ�մϴ�.
	 **/
	public String getSpvsInstNm() {
		return SpvsInstNm;
	}

	/**
	 * �ְ�������� �����մϴ�.
	 **/
	public void setSpvsInstNm(String spvsInstNm) {
		SpvsInstNm = spvsInstNm;
	}

	/**
	 * �������� ��ȯ�մϴ�.
	 **/
	public String getSbjtNm() {
		return SbjtNm;
	}

	/**
	 * �������� �����մϴ�.
	 **/
	public void setSbjtNm(String sbjtNm) {
		SbjtNm = sbjtNm;
	}

	/**
	 * ���������� ��ȯ�մϴ�.
	 **/
	public String getCpcgInstNm() {
		return CpcgInstNm;
	}

	/**
	 * ���������� �����մϴ�.
	 **/
	public void setCpcgInstNm(String cpcgInstNm) {
		CpcgInstNm = cpcgInstNm;
	}

	/**
	 * �����Ϸù�ȣ�� ��ȯ�մϴ�.
	 **/
	public String getAgrmtSeqNo() {
		return AgrmtSeqNo;
	}

	/**
	 * �����Ϸù�ȣ�� �����մϴ�.
	 **/
	public void setAgrmtSeqNo(String agrmtSeqNo) {
		AgrmtSeqNo = agrmtSeqNo;
	}

	/**
	 * ����������¸� ��ȯ�մϴ�.
	 **/
	public String getSbjtPrgrDv() {
		return SbjtPrgrDv;
	}

	/**
	 * ����������¸� �����մϴ�.
	 **/
	public void setSbjtPrgrDv(String SbjtPrgrDv) {
		this.SbjtPrgrDv = SbjtPrgrDv;
	}

	/**
	 * �ѻ���ݾ��� ��ȯ�մϴ�.
	 **/
	public String getTotlInstAmt() {
		return TotlInstAmt;
	}

	/**
	 * �ѻ���ݾ��� �����մϴ�.
	 **/
	public void setTotlInstAmt(String totlInstAmt) {
		TotlInstAmt = totlInstAmt;
	}

	/**
	 * �������������ڵ带 ��ȯ�մϴ�.
	 **/
	public String getBzMomAcctBnkCd() {
		return BzMomAcctBnkCd;
	}

	/**
	 * �������������ڵ带 �����մϴ�.
	 **/
	public void setBzMomAcctBnkCd(String BzMomAcctBnkCd) {
		this.BzMomAcctBnkCd = BzMomAcctBnkCd;
	}

	/**
	 * �������¹�ȣ�� ��ȯ�մϴ�.
	 **/
	public String getBzMomAcctNo() {
		return BzMomAcctNo;
	}

	/**
	 * �������¹�ȣ�� �����մϴ�.
	 **/
	public void setBzMomAcctNo(String bzMomAcctNo) {
		BzMomAcctNo = bzMomAcctNo;
	}

	/**
	 * ��������������ڵ带 ��ȯ�մϴ�.
	 **/
	public String getRchExpAcctBnkCd() {
		return RchExpAcctBnkCd;
	}

	/**
	 * ��������������ڵ带 �����մϴ�.
	 **/
	public void setRchExpAcctBnkCd(String rchExpAcctBnkCd) {
		RchExpAcctBnkCd = rchExpAcctBnkCd;
	}

	/**
	 * ��������¹�ȣ�� ��ȯ�մϴ�.
	 **/
	public String getRchExpAcctNo() {
		return RchExpAcctNo;
	}

	/**
	 * ��������¹�ȣ�� �����մϴ�.
	 **/
	public void setRchExpAcctNo(String rchExpAcctNo) {
		RchExpAcctNo = rchExpAcctNo;
	}

	/**
	 * �Ѱ��߱Ⱓ�������ڸ� ��ȯ�մϴ�.
	 **/
	public String getTotlDevTrmStrDt() {
		return TotlDevTrmStrDt;
	}

	/**
	 * �Ѱ��߱Ⱓ�������ڸ� �����մϴ�.
	 **/
	public void setTotlDevTrmStrDt(String totlDevTrmStrDt) {
		TotlDevTrmStrDt = totlDevTrmStrDt;
	}

	/**
	 * �Ѱ��߱Ⱓ�������ڸ� ��ȯ�մϴ�.
	 **/
	public String getTotlDevTrmEndDt() {
		return TotlDevTrmEndDt;
	}

	/**
	 * �Ѱ��߱Ⱓ�������ڸ� �����մϴ�.
	 **/
	public void setTotlDevTrmEndDt(String totlDevTrmEndDt) {
		TotlDevTrmEndDt = totlDevTrmEndDt;
	}

	/**
	 * ����ü��ID�� ��ȯ�մϴ�.
	 **/
	public String getAgrmtCnclId() {
		return AgrmtCnclId;
	}

	/**
	 * ����ü��ID�� �����մϴ�.
	 **/
	public void setAgrmtCnclId(String agrmtCnclId) {
		AgrmtCnclId = agrmtCnclId;
	}

	/**
	 * ���������ұ����� ��ȯ�մϴ�.
	 **/
	public String getInstRoleDv() {
		return InstRoleDv;
	}

	/**
	 * ���������ұ����� �����մϴ�.
	 **/
	public void setInstRoleDv(String InstRoleDv) {
		this.InstRoleDv = InstRoleDv;
	}

	/**
	 * ����å���ڼ����� ��ȯ�մϴ�..
	 **/
	public String  getSbjtResUsrNm() {
		return SbjtResUsrNm;
	}


	/**
	 * ����å���ڼ����� �����մϴ�.
	 **/
	public void setSbjtResUsrNm(String SbjtResUsrNm) {
		this.SbjtResUsrNm = SbjtResUsrNm;
	}

	public String getSumupSbjtId() {
		return SumupSbjtId;
	}

	public void setSumupSbjtId(String sumupSbjtId) {
		SumupSbjtId = sumupSbjtId;
	}

	public String getSbjtDv() {
		return SbjtDv;
	}

	public void setSbjtDv(String sbjtDv) {
		SbjtDv = sbjtDv;
	}

	public String getMyAcctTrnsAlwnYn() {
		return MyAcctTrnsAlwnYn;
	}

	public void setMyAcctTrnsAlwnYn(String myAcctTrnsAlwnYn) {
		MyAcctTrnsAlwnYn = myAcctTrnsAlwnYn;
	}

	public String getMySbjtYn() {
		return MySbjtYn;
	}

	public void setMySbjtYn(String mySbjtYn) {
		MySbjtYn = mySbjtYn;
	}

	public String getInstLnkType() {
		return InstLnkType;
	}

	public void setInstLnkType(String instLnkType) {
		InstLnkType = instLnkType;
	}

	public void setSacShp(String sacShp) {
		SacShp = sacShp;
	}

	public String getSacShp() {
		return SacShp;
	}
	
	public void setAibsSeq(String aibsSeq) {
		AibsSeq = aibsSeq;
	}

	public String getAibsSeq() {
		return AibsSeq;
	}
	
	public void setPsnlExpnAcctUseYn(String psnlExpnAcctUseYn) {
		PsnlExpnAcctUseYn = psnlExpnAcctUseYn;
	}

	public String getPsnlExpnAcctUseYn() {
		return PsnlExpnAcctUseYn;
	}
	
	public void setUnfyMgntInstYn(String unfyMgntInstYn) {
		UnfyMgntInstYn = unfyMgntInstYn;
	}

	public String getUnfyMgntInstYn() {
		return UnfyMgntInstYn;
	}
	
	public void setAifwCnt(String aifwCnt){
		this.AifwCnt = aifwCnt;
	}
	
	public String getAifwCnt(){
		return AifwCnt;
	}
	
	public void setAgrmtTgtStrStg(String agrmtTgtStrStg){
		this.AgrmtTgtStrStg = agrmtTgtStrStg;
	}
	
	public String getAgrmtTgtStrStg(){
		return AgrmtTgtStrStg;
	}
	
	public void setAgrmtTgtStrAnnl(String agrmtTgtStrAnnl){
		this.AgrmtTgtStrAnnl = agrmtTgtStrAnnl;
	}
	
	public String getAgrmtTgtStrAnnl(){
		return AgrmtTgtStrAnnl;
	}
	
	public void setAgrmtTgtEndStg(String agrmtTgtEndStg){
		this.AgrmtTgtEndStg = agrmtTgtEndStg;
	}
	
	public String getAgrmtTgtEndStg(){
		return AgrmtTgtEndStg;
	}
	
	public void setAgrmtTgtEndAnnl(String agrmtTgtEndAnnl){
		this.AgrmtTgtEndAnnl = agrmtTgtEndAnnl;
	}
	
	public String getAgrmtTgtEndAnnl(){
		return AgrmtTgtEndAnnl;
	}

    public String getSacSn() {
        return SacSn;
    }

    public void setSacSn(String sacSn) {
        SacSn = sacSn;
    }

    public String getAgrmtDv() {
        return AgrmtDv;
    }

    public void setAgrmtDv(String agrmtDv) {
        AgrmtDv = agrmtDv;
    }

    public String getAgcfYn() {
        return AgcfYn;
    }

    public void setAgcfYn(String agcfYn) {
        AgcfYn = agcfYn;
    }
    
    public String getOpagYn() {
        return OpagYn;
    }

    public void setOpagYn(String opagYn) {
        OpagYn = opagYn;
    }

	public void setAgrmtStDt(String agrmtStDt) {
		AgrmtStDt = agrmtStDt;
	}

	public String getAgrmtStDt() {
		return AgrmtStDt;
	}
	
}
