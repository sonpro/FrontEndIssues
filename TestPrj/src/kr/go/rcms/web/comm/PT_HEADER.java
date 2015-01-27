package kr.go.rcms.web.comm;

import java.io.Serializable;

public class PT_HEADER implements Serializable 
{
	/**
     * 
     */
    private static final long serialVersionUID = 8987659757704389116L;
	
	public PT_HEADER(){
	}
	
	private String UsrInstId = null; 			// ����ڱ��ID
	private String UsrId = null;				// �����ID
	private String MenuGrpCd = null; 			// �޴��׷��ڵ�
	private String TopMenuCd = null;			// Top �޴��ڵ�
	private String MenuCd = null;				// �޴��ڵ�
	private String PmsId = null;				// PMSID
	private String PmsId1 = null;               // PMSID (��ǥ)
	private String BzClasCd = null;				// ����з��ڵ�
	private String CpcgInstId = null;			// ������ID
	private String CpcgInstBzprNo = null;		// ����������ڹ�ȣ
	private String CpcgInstCrpnRegNo= null;		// ���������ε�Ϲ�ȣ
	private String FncInstContId= null;			// ����������ID
	private String AchvInstId = null; 			// ������ID
	private String AchvInstBzprNo = null; 		// ����������ڹ�ȣ
	private String AchvInstCrpnRegNo = null; 	// ���������ε�Ϲ�ȣ
	private String SbjtId = null; 				// ����ID
	private String AgrmtId = null; 				// ����ID
	private String Annl = null;					// ����
	private String HfDv = null; 				// ���Ĺݱ���
	private String AgrmtSeqNo = null; 			// �����Ϸù�ȣ
	private String InstLnkType = null; 			// �������Ÿ��
	
	public String getInstLnkType() {
		return InstLnkType;
	}

	public void setInstLnkType(String instLnkType) {
		InstLnkType = instLnkType;
	}
	
	/**
	 * Top �޴��ڵ带 ��ȯ�մϴ�.
	 * */
	public String getTopMenuCd() {
		return TopMenuCd;
	}

	/**
	 * Top �޴��ڵ带 �����մϴ�.
	 * */
	public void setTopMenuCd(String topMenuCd) {
		TopMenuCd = topMenuCd;
	}
	
	public String getTopMenuDepth1(){
		String reVal = "";
		if(getTopMenuCd()!=null && getTopMenuCd().length()>2){
			reVal = getTopMenuCd().substring(0,2);
		}
		return reVal;
	}
	
	/**
	 * ����������ID�� ��ȯ�մϴ�.
	 * */
	public String getFncInstContId() {
		return FncInstContId;
	}

	/**
	 * ����������ID�� �����մϴ�.
	 * */
	public void setFncInstContId(String fncInstContId) {
		FncInstContId = fncInstContId;
	}

	/**
	 * ���������ε�Ϲ�ȣ�� ��ȯ�մϴ�.
	 * */
	public String getCpcgInstCrpnRegNo() {
		return CpcgInstCrpnRegNo;
	}

	/**
	 * ���������ε�Ϲ�ȣ�� �����մϴ�.
	 * */
	public void setCpcgInstCrpnRegNo(String cpcgInstCrpnRegNo) {
		CpcgInstCrpnRegNo = cpcgInstCrpnRegNo;
	}

	/**
	 * ���������ε�Ϲ�ȣ�� ��ȯ�մϴ�.
	 * */
	public String getAchvInstCrpnRegNo() {
		return AchvInstCrpnRegNo;
	}

	/**
	 * ���������ε�Ϲ�ȣ�� �����մϴ�.
	 * */
	public void setAchvInstCrpnRegNo(String achvInstCrpnRegNo) {
		AchvInstCrpnRegNo = achvInstCrpnRegNo;
	}
	
	/**
	 * ����ڱ��ID�� ��ȯ�մϴ�.
	 * */
	public String getUsrInstId() {
		return UsrInstId;
	}

	/**
	 * ����ڱ��ID�� �����մϴ�.
	 * */
	public void setUsrInstId(String usrInstId) {
		UsrInstId = usrInstId;
	}

	/**
	 * �����ID�� ��ȯ�մϴ�.
	 * */
	public String getUsrId() {
		return UsrId;
	}

	/**
	 * �����ID�� �����մϴ�.
	 * */
	public void setUsrId(String usrId) {
		UsrId = usrId;
	}

	/**
	 * �޴��׷��ڵ��� ��ȯ�մϴ�.
	 * */
	public String getMenuGrpCd() {
		return MenuGrpCd;
	}

	/**
	 * �޴��׷��ڵ��� �����մϴ�.
	 * */
	public void setMenuGrpCd(String menuGrpCd) {
		MenuGrpCd = menuGrpCd;
	}

	/**
	 * �޴��ڵ��� ��ȯ�մϴ�.
	 * */
	public String getMenuCd() {
		return MenuCd;
	}

	/**
	 * �޴��ڵ��� �����մϴ�.
	 * */
	public void setMenuCd(String menuCd) {
		MenuCd = menuCd;
	}

	/**
	 * PMSID�� ��ȯ�մϴ�.
	 * */
	public String getPmsId() {
		return PmsId;
	}

	/**
	 * PMSID�� �����մϴ�.
	 * */
	public void setPmsId(String pmsId) {
		PmsId = pmsId;
	}

	/**
	 * ����з��ڵ��� ��ȯ�մϴ�.
	 * */
	public String getBzClasCd() {
		return BzClasCd;
	}

	/**
	 * ����з��ڵ��� �����մϴ�.
	 * */
	public void setBzClasCd(String bzClasCd) {
		BzClasCd = bzClasCd;
	}

	/**
	 * ������ID�� ��ȯ�մϴ�.
	 * */
	public String getCpcgInstId() {
		return CpcgInstId;
	}

	/**
	 * ������ID�� �����մϴ�.
	 * */
	public void setCpcgInstId(String cpcgInstId) {
		CpcgInstId = cpcgInstId;
	}

	/**
	 * ����������ڹ�ȣ�� ��ȯ�մϴ�.
	 * */
	public String getCpcgInstBzprNo() {
		return CpcgInstBzprNo;
	}

	/**
	 * ����������ڹ�ȣ �����մϴ�.
	 * */
	public void setCpcgInstBzprNo(String cpcgInstBzprNo) {
		CpcgInstBzprNo = cpcgInstBzprNo;
	}

	/**
	 * ������ID�� ��ȯ�մϴ�.
	 * */
	public String getAchvInstId() {
		return AchvInstId;
	}

	/**
	 * ������ID�� �����մϴ�.
	 * */
	public void setAchvInstId(String achvInstId) {
		AchvInstId = achvInstId;
	}

	/**
	 * ����������ڹ�ȣ�� ��ȯ�մϴ�.
	 * */
	public String getAchvInstBzprNo() {
		return AchvInstBzprNo;
	}

	/**
	 * ����������ڹ�ȣ�� �����մϴ�.
	 * */
	public void setAchvInstBzprNo(String achvInstBzprNo) {
		AchvInstBzprNo = achvInstBzprNo;
	}

	/**
	 * ����ID�� ��ȯ�մϴ�.
	 * */
	public String getSbjtId() {
		return SbjtId;
	}

	/**
	 * ����ID�� �����մϴ�.
	 * */
	public void setSbjtId(String sbjtId) {
		SbjtId = sbjtId;
	}

	/**
	 * ����ID�� ��ȯ�մϴ�.
	 * */
	public String getAgrmtId() {
		return AgrmtId;
	}

	/**
	 * ����ID�� �����մϴ�.
	 * */
	public void setAgrmtId(String agrmtId) {
		AgrmtId = agrmtId;
	}

	/**
	 * ������ ��ȯ�մϴ�.
	 * */
	public String getAnnl() {
		return Annl;
	}

	/**
	 * ������ �����մϴ�.
	 * */
	public void setAnnl(String annl) {
		Annl = annl;
	}
	
	/**
	 * ���Ĺݱ����� ��ȯ�մϴ�.
	 * */
	public String getHfDv() {
		return HfDv;
	}

	/**
	 * ���Ĺݱ����� �����մϴ�.
	 * */
	public void setHfDv(String hfDv) {
		HfDv = hfDv;
	}

	/**
	 * �����Ϸù�ȣ�� ��ȯ�մϴ�.
	 * */
	public String getAgrmtSeqNo() {
		return AgrmtSeqNo;
	}

	/**
	 * �����Ϸù�ȣ�� �����մϴ�.
	 * */
	public void setAgrmtSeqNo(String agrmtSeqNo) {
		AgrmtSeqNo = agrmtSeqNo;
	}

    /**
     * PMS_ID �� �����մϴ�.
     * */
    public String getPmsId1() {
        return PmsId1;
    }

    /**
     * PMS_ID �� �����մϴ�.
     * */
    public void setPmsId1(String pmsId1) {
        PmsId1 = pmsId1;
    }
	
	
}
