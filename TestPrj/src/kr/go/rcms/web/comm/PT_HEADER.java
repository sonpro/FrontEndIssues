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
	
	private String UsrInstId = null; 			// 사용자기관ID
	private String UsrId = null;				// 사용자ID
	private String MenuGrpCd = null; 			// 메뉴그룹코드
	private String TopMenuCd = null;			// Top 메뉴코드
	private String MenuCd = null;				// 메뉴코드
	private String PmsId = null;				// PMSID
	private String PmsId1 = null;               // PMSID (대표)
	private String BzClasCd = null;				// 사업분류코드
	private String CpcgInstId = null;			// 전담기관ID
	private String CpcgInstBzprNo = null;		// 전담기관사업자번호
	private String CpcgInstCrpnRegNo= null;		// 전담기관법인등록번호
	private String FncInstContId= null;			// 금융기관계약ID
	private String AchvInstId = null; 			// 수행기관ID
	private String AchvInstBzprNo = null; 		// 수행기관사업자번호
	private String AchvInstCrpnRegNo = null; 	// 수행기관법인등록번호
	private String SbjtId = null; 				// 과제ID
	private String AgrmtId = null; 				// 협약ID
	private String Annl = null;					// 년차
	private String HfDv = null; 				// 전후반구분
	private String AgrmtSeqNo = null; 			// 협약일련번호
	private String InstLnkType = null; 			// 기관연계타입
	
	public String getInstLnkType() {
		return InstLnkType;
	}

	public void setInstLnkType(String instLnkType) {
		InstLnkType = instLnkType;
	}
	
	/**
	 * Top 메뉴코드를 반환합니다.
	 * */
	public String getTopMenuCd() {
		return TopMenuCd;
	}

	/**
	 * Top 메뉴코드를 세팅합니다.
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
	 * 금융기관계약ID를 반환합니다.
	 * */
	public String getFncInstContId() {
		return FncInstContId;
	}

	/**
	 * 금융기관계약ID를 세팅합니다.
	 * */
	public void setFncInstContId(String fncInstContId) {
		FncInstContId = fncInstContId;
	}

	/**
	 * 전담기관법인등록번호를 반환합니다.
	 * */
	public String getCpcgInstCrpnRegNo() {
		return CpcgInstCrpnRegNo;
	}

	/**
	 * 전담기관법인등록번호를 세팅합니다.
	 * */
	public void setCpcgInstCrpnRegNo(String cpcgInstCrpnRegNo) {
		CpcgInstCrpnRegNo = cpcgInstCrpnRegNo;
	}

	/**
	 * 수행기관법인등록번호를 반환합니다.
	 * */
	public String getAchvInstCrpnRegNo() {
		return AchvInstCrpnRegNo;
	}

	/**
	 * 수행기관법인등록번호를 세팅합니다.
	 * */
	public void setAchvInstCrpnRegNo(String achvInstCrpnRegNo) {
		AchvInstCrpnRegNo = achvInstCrpnRegNo;
	}
	
	/**
	 * 사용자기관ID를 반환합니다.
	 * */
	public String getUsrInstId() {
		return UsrInstId;
	}

	/**
	 * 사용자기관ID을 세팅합니다.
	 * */
	public void setUsrInstId(String usrInstId) {
		UsrInstId = usrInstId;
	}

	/**
	 * 사용자ID을 반환합니다.
	 * */
	public String getUsrId() {
		return UsrId;
	}

	/**
	 * 사용자ID을 세팅합니다.
	 * */
	public void setUsrId(String usrId) {
		UsrId = usrId;
	}

	/**
	 * 메뉴그룹코드을 반환합니다.
	 * */
	public String getMenuGrpCd() {
		return MenuGrpCd;
	}

	/**
	 * 메뉴그룹코드을 세팅합니다.
	 * */
	public void setMenuGrpCd(String menuGrpCd) {
		MenuGrpCd = menuGrpCd;
	}

	/**
	 * 메뉴코드을 반환합니다.
	 * */
	public String getMenuCd() {
		return MenuCd;
	}

	/**
	 * 메뉴코드을 세팅합니다.
	 * */
	public void setMenuCd(String menuCd) {
		MenuCd = menuCd;
	}

	/**
	 * PMSID을 반환합니다.
	 * */
	public String getPmsId() {
		return PmsId;
	}

	/**
	 * PMSID을 세팅합니다.
	 * */
	public void setPmsId(String pmsId) {
		PmsId = pmsId;
	}

	/**
	 * 사업분류코드을 반환합니다.
	 * */
	public String getBzClasCd() {
		return BzClasCd;
	}

	/**
	 * 사업분류코드을 세팅합니다.
	 * */
	public void setBzClasCd(String bzClasCd) {
		BzClasCd = bzClasCd;
	}

	/**
	 * 전담기관ID을 반환합니다.
	 * */
	public String getCpcgInstId() {
		return CpcgInstId;
	}

	/**
	 * 전담기관ID을 세팅합니다.
	 * */
	public void setCpcgInstId(String cpcgInstId) {
		CpcgInstId = cpcgInstId;
	}

	/**
	 * 전담기관사업자번호을 반환합니다.
	 * */
	public String getCpcgInstBzprNo() {
		return CpcgInstBzprNo;
	}

	/**
	 * 전담기관사업자번호 세팅합니다.
	 * */
	public void setCpcgInstBzprNo(String cpcgInstBzprNo) {
		CpcgInstBzprNo = cpcgInstBzprNo;
	}

	/**
	 * 수행기관ID을 반환합니다.
	 * */
	public String getAchvInstId() {
		return AchvInstId;
	}

	/**
	 * 수행기관ID을 세팅합니다.
	 * */
	public void setAchvInstId(String achvInstId) {
		AchvInstId = achvInstId;
	}

	/**
	 * 수행기관사업자번호을 반환합니다.
	 * */
	public String getAchvInstBzprNo() {
		return AchvInstBzprNo;
	}

	/**
	 * 수행기관사업자번호을 세팅합니다.
	 * */
	public void setAchvInstBzprNo(String achvInstBzprNo) {
		AchvInstBzprNo = achvInstBzprNo;
	}

	/**
	 * 과제ID을 반환합니다.
	 * */
	public String getSbjtId() {
		return SbjtId;
	}

	/**
	 * 과제ID을 세팅합니다.
	 * */
	public void setSbjtId(String sbjtId) {
		SbjtId = sbjtId;
	}

	/**
	 * 협약ID을 반환합니다.
	 * */
	public String getAgrmtId() {
		return AgrmtId;
	}

	/**
	 * 협약ID을 세팅합니다.
	 * */
	public void setAgrmtId(String agrmtId) {
		AgrmtId = agrmtId;
	}

	/**
	 * 년차을 반환합니다.
	 * */
	public String getAnnl() {
		return Annl;
	}

	/**
	 * 년차을 세팅합니다.
	 * */
	public void setAnnl(String annl) {
		Annl = annl;
	}
	
	/**
	 * 전후반구분을 반환합니다.
	 * */
	public String getHfDv() {
		return HfDv;
	}

	/**
	 * 전후반구분을 세팅합니다.
	 * */
	public void setHfDv(String hfDv) {
		HfDv = hfDv;
	}

	/**
	 * 협약일련번호을 반환합니다.
	 * */
	public String getAgrmtSeqNo() {
		return AgrmtSeqNo;
	}

	/**
	 * 협약일련번호을 세팅합니다.
	 * */
	public void setAgrmtSeqNo(String agrmtSeqNo) {
		AgrmtSeqNo = agrmtSeqNo;
	}

    /**
     * PMS_ID 를 세팅합니다.
     * */
    public String getPmsId1() {
        return PmsId1;
    }

    /**
     * PMS_ID 를 세팅합니다.
     * */
    public void setPmsId1(String pmsId1) {
        PmsId1 = pmsId1;
    }
	
	
}
