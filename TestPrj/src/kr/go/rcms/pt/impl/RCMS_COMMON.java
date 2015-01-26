
//package kr.go.rcms.domain.cmo.mrcms_common;
package kr.go.rcms.pt.impl;

import java.lang.reflect.Method;
import java.util.Map;

import jex.util.*;
import jex.data.item.JexIMODataItem;
import jex.enums.JexType;
import jex.data.imo.JexIMOData;



public class RCMS_COMMON extends JexIMOData {

	private static final long serialVersionUID = 1L;

	private static JexIMODataItem[] ITEMS = new JexIMODataItem[] {
        JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TRSC_DT\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"거래일자\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TRSC_TM\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"거래시간\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"DPTR_SYS_DV\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"출발시스템구분\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"SYS_SEQ_NO\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"시스템일련번호\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"WAS_NO\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"WAS번호\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"TRSC_SEQ_NO\",\"length\":\"10\",\"mask\":\"N\",\"name\":\"거래일련번호\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TSTCL_DV\",\"length\":\"4\",\"mask\":\"N\",\"name\":\"시험호출구분\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"TRSC_BR_NO\",\"length\":\"5\",\"mask\":\"N\",\"name\":\"거래분기번호\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"BIZ_UUID\",\"length\":\"35\",\"mask\":\"N\",\"name\":\"업무거래고유번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"LGIN_UUID\",\"length\":\"35\",\"mask\":\"N\",\"name\":\"로그인거래고유번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"SVC_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"서비스ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"IO_DV\",\"length\":\"1\",\"mask\":\"N\",\"name\":\"송수신구분\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TMSG_NO\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"전문번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"USR_INST_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"사용자기관ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"USR_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"사용자ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"USR_IP\",\"length\":\"32\",\"mask\":\"N\",\"name\":\"사용자IP\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"MENU_GRP_CD\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"메뉴그룹코드\",\"padding\":\"\",\"required\":\"N\",\"type\":\"기타\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"MENU_CD\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"메뉴코드\",\"padding\":\"\",\"required\":\"N\",\"type\":\"기타\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"PT_ID\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"PT ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"BT_ID\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"BT ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSPS_DT\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"응답일자\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSPS_TM\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"응답시간\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSPS_CD\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"응답코드\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"PMS_ID\",\"length\":\"3\",\"mask\":\"N\",\"name\":\"PMSID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"BZ_CLAS_CD\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"사업분류코드\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"CPCG_INST_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"전담기관ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"CPCG_INST_BZPR_NO\",\"length\":\"10\",\"mask\":\"N\",\"name\":\"전담기관사업자번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"CPCG_INST_CRPN_REG_NO\",\"length\":\"13\",\"mask\":\"N\",\"name\":\"전담기관법인등록번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"FNC_INST_CONT_ID\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"금융기관계약ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ACHV_INST_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"수행기관ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ACHV_INST_BZPR_NO\",\"length\":\"10\",\"mask\":\"N\",\"name\":\"수행기관사업자번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ACHV_INST_CRPN_REG_NO\",\"length\":\"13\",\"mask\":\"N\",\"name\":\"수행기관법인등록번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"SBJT_ID\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"과제ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"AGRMT_ID\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"협약ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ANNL\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"년차\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"HF_DV\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"전후반구분\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"AGRMT_SEQ_NO\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"협약일련번호\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSEV\",\"length\":\"30\",\"mask\":\"N\",\"name\":\"예비\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"SESS_ID\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"세션ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"기타\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"PMS_ID1\",\"length\":\"3\",\"mask\":\"N\",\"name\":\"PMSID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}")
	};

    private String TrscDt = null; // 거래일자
    private String TrscTm = null; // 거래시간
    private String DptrSysDv = null; // 출발시스템구분
    private String SysSeqNo = null; // 시스템일련번호
    private String WasNo = null; // WAS번호
    private String TrscSeqNo = null; // 거래일련번호
    private String TstclDv = null; // 시험호출구분
    private String TrscBrNo = null; // 거래분기번호
    private String BizUuid = null; // 업무거래고유번호
    private String LginUuid = null; // 로그인거래고유번호
    private String SvcId = null; // 서비스ID
    private String IoDv = null; // 송수신구분
    private String TmsgNo = null; // 전문번호
    private String UsrInstId = null; // 사용자기관ID
    private String UsrId = null; // 사용자ID
    private String UsrIp = null; // 사용자IP
    private String MenuGrpCd = null; // 메뉴그룹코드
    private String MenuCd = null; // 메뉴코드
    private String PtId = null; // PT ID
    private String BtId = null; // BT ID
    private String RspsDt = null; // 응답일자
    private String RspsTm = null; // 응답시간
    private String RspsCd = null; // 응답코드
    private String PmsId = null; // PMSID
    private String BzClasCd = null; // 사업분류코드
    private String CpcgInstId = null; // 전담기관ID
    private String CpcgInstBzprNo = null; // 전담기관사업자번호
    private String CpcgInstCrpnRegNo = null; // 전담기관법인등록번호
    private String FncInstContId = null; // 금융기관계약ID
    private String AchvInstId = null; // 수행기관ID
    private String AchvInstBzprNo = null; // 수행기관사업자번호
    private String AchvInstCrpnRegNo = null; // 수행기관법인등록번호
    private String SbjtId = null; // 과제ID
    private String AgrmtId = null; // 협약ID
    private String Annl = null; // 년차
    private String HfDv = null; // 전후반구분
    private String AgrmtSeqNo = null; // 협약일련번호
    private String Rsev = null; // 예비
    private String SessId = null; // 세션ID
    private String PmsId1 = null; // PMSID

    
    private static Map<String, JexMethodInfo> _methodInfoMap = JexDomainUtil.loadMethodInfo(ITEMS, RCMS_COMMON.class);

	public RCMS_COMMON () {
	}

	public static JexMethodInfo get_MethodInfoST(String name) {
		return _methodInfoMap.get(name);
	}
	
	public static JexIMODataItem[] get_JexDataItemsST () {
		return ITEMS;
	}
	
	@Override
	public JexMethodInfo get_MethodInfo(String name) {
		return _methodInfoMap.get(name);
	}

	@Override
	public String get_Creator () {
		return "leejaewon";
	}

	@Override
	public String get_Id () {
		return "RCMS_COMMON";
	}

	@Override
	public String get_Version () {
		return "20121209_180544";
	}
	
	@Override
	public String get_Name() {
		return "PT 공통부";
	}
	
	@Override
	public String get_PackgeName() {
		return "";
	}

	@Override
	public JexIMODataItem[] get_JexDataItems () {
		return ITEMS;
	}
	
    
	/**
	 * 거래일자
	 **/
	public String getTrscDt() {
		return this.TrscDt;
	}
			
	/**
	 * 거래시간
	 **/
	public String getTrscTm() {
		return this.TrscTm;
	}
			
	/**
	 * 출발시스템구분
	 **/
	public String getDptrSysDv() {
		return this.DptrSysDv;
	}
			
	/**
	 * 시스템일련번호
	 **/
	public String getSysSeqNo() {
		return this.SysSeqNo;
	}
			
	/**
	 * WAS번호
	 **/
	public String getWasNo() {
		return this.WasNo;
	}
			
	/**
	 * 거래일련번호
	 **/
	public String getTrscSeqNo() {
		return this.TrscSeqNo;
	}
			
	/**
	 * 시험호출구분
	 **/
	public String getTstclDv() {
		return this.TstclDv;
	}
			
	/**
	 * 거래분기번호
	 **/
	public String getTrscBrNo() {
		return this.TrscBrNo;
	}
			
	/**
	 * 업무거래고유번호
	 **/
	public String getBizUuid() {
		return this.BizUuid;
	}
			
	/**
	 * 로그인거래고유번호
	 **/
	public String getLginUuid() {
		return this.LginUuid;
	}
			
	/**
	 * 서비스ID
	 **/
	public String getSvcId() {
		return this.SvcId;
	}
			
	/**
	 * 송수신구분
	 **/
	public String getIoDv() {
		return this.IoDv;
	}
			
	/**
	 * 전문번호
	 **/
	public String getTmsgNo() {
		return this.TmsgNo;
	}
			
	/**
	 * 사용자기관ID
	 **/
	public String getUsrInstId() {
		return this.UsrInstId;
	}
			
	/**
	 * 사용자ID
	 **/
	public String getUsrId() {
		return this.UsrId;
	}
			
	/**
	 * 사용자IP
	 **/
	public String getUsrIp() {
		return this.UsrIp;
	}
			
	/**
	 * 메뉴그룹코드
	 **/
	public String getMenuGrpCd() {
		return this.MenuGrpCd;
	}
			
	/**
	 * 메뉴코드
	 **/
	public String getMenuCd() {
		return this.MenuCd;
	}
			
	/**
	 * PT ID
	 **/
	public String getPtId() {
		return this.PtId;
	}
			
	/**
	 * BT ID
	 **/
	public String getBtId() {
		return this.BtId;
	}
			
	/**
	 * 응답일자
	 **/
	public String getRspsDt() {
		return this.RspsDt;
	}
			
	/**
	 * 응답시간
	 **/
	public String getRspsTm() {
		return this.RspsTm;
	}
			
	/**
	 * 응답코드
	 **/
	public String getRspsCd() {
		return this.RspsCd;
	}
			
	/**
	 * PMSID
	 **/
	public String getPmsId() {
		return this.PmsId;
	}
			
	/**
	 * 사업분류코드
	 **/
	public String getBzClasCd() {
		return this.BzClasCd;
	}
			
	/**
	 * 전담기관ID
	 **/
	public String getCpcgInstId() {
		return this.CpcgInstId;
	}
			
	/**
	 * 전담기관사업자번호
	 **/
	public String getCpcgInstBzprNo() {
		return this.CpcgInstBzprNo;
	}
			
	/**
	 * 전담기관법인등록번호
	 **/
	public String getCpcgInstCrpnRegNo() {
		return this.CpcgInstCrpnRegNo;
	}
			
	/**
	 * 금융기관계약ID
	 **/
	public String getFncInstContId() {
		return this.FncInstContId;
	}
			
	/**
	 * 수행기관ID
	 **/
	public String getAchvInstId() {
		return this.AchvInstId;
	}
			
	/**
	 * 수행기관사업자번호
	 **/
	public String getAchvInstBzprNo() {
		return this.AchvInstBzprNo;
	}
			
	/**
	 * 수행기관법인등록번호
	 **/
	public String getAchvInstCrpnRegNo() {
		return this.AchvInstCrpnRegNo;
	}
			
	/**
	 * 과제ID
	 **/
	public String getSbjtId() {
		return this.SbjtId;
	}
			
	/**
	 * 협약ID
	 **/
	public String getAgrmtId() {
		return this.AgrmtId;
	}
			
	/**
	 * 년차
	 **/
	public String getAnnl() {
		return this.Annl;
	}
			
	/**
	 * 전후반구분
	 **/
	public String getHfDv() {
		return this.HfDv;
	}
			
	/**
	 * 협약일련번호
	 **/
	public String getAgrmtSeqNo() {
		return this.AgrmtSeqNo;
	}
			
	/**
	 * 예비
	 **/
	public String getRsev() {
		return this.Rsev;
	}
			
	/**
	 * 세션ID
	 **/
	public String getSessId() {
		return this.SessId;
	}
			
	/**
	 * PMSID
	 **/
	public String getPmsId1() {
		return this.PmsId1;
	}
			
    
	/**
	 * 거래일자
	 **/
	public void setTrscDt(String o) {
		this.TrscDt = o;
	}
			
	/**
	 * 거래시간
	 **/
	public void setTrscTm(String o) {
		this.TrscTm = o;
	}
			
	/**
	 * 출발시스템구분
	 **/
	public void setDptrSysDv(String o) {
		this.DptrSysDv = o;
	}
			
	/**
	 * 시스템일련번호
	 **/
	public void setSysSeqNo(String o) {
		this.SysSeqNo = o;
	}
			
	/**
	 * WAS번호
	 **/
	public void setWasNo(String o) {
		this.WasNo = o;
	}
			
	/**
	 * 거래일련번호
	 **/
	public void setTrscSeqNo(String o) {
		this.TrscSeqNo = o;
	}
			
	/**
	 * 시험호출구분
	 **/
	public void setTstclDv(String o) {
		this.TstclDv = o;
	}
			
	/**
	 * 거래분기번호
	 **/
	public void setTrscBrNo(String o) {
		this.TrscBrNo = o;
	}
			
	/**
	 * 업무거래고유번호
	 **/
	public void setBizUuid(String o) {
		this.BizUuid = o;
	}
			
	/**
	 * 로그인거래고유번호
	 **/
	public void setLginUuid(String o) {
		this.LginUuid = o;
	}
			
	/**
	 * 서비스ID
	 **/
	public void setSvcId(String o) {
		this.SvcId = o;
	}
			
	/**
	 * 송수신구분
	 **/
	public void setIoDv(String o) {
		this.IoDv = o;
	}
			
	/**
	 * 전문번호
	 **/
	public void setTmsgNo(String o) {
		this.TmsgNo = o;
	}
			
	/**
	 * 사용자기관ID
	 **/
	public void setUsrInstId(String o) {
		this.UsrInstId = o;
	}
			
	/**
	 * 사용자ID
	 **/
	public void setUsrId(String o) {
		this.UsrId = o;
	}
			
	/**
	 * 사용자IP
	 **/
	public void setUsrIp(String o) {
		this.UsrIp = o;
	}
			
	/**
	 * 메뉴그룹코드
	 **/
	public void setMenuGrpCd(String o) {
		this.MenuGrpCd = o;
	}
			
	/**
	 * 메뉴코드
	 **/
	public void setMenuCd(String o) {
		this.MenuCd = o;
	}
			
	/**
	 * PT ID
	 **/
	public void setPtId(String o) {
		this.PtId = o;
	}
			
	/**
	 * BT ID
	 **/
	public void setBtId(String o) {
		this.BtId = o;
	}
			
	/**
	 * 응답일자
	 **/
	public void setRspsDt(String o) {
		this.RspsDt = o;
	}
			
	/**
	 * 응답시간
	 **/
	public void setRspsTm(String o) {
		this.RspsTm = o;
	}
			
	/**
	 * 응답코드
	 **/
	public void setRspsCd(String o) {
		this.RspsCd = o;
	}
			
	/**
	 * PMSID
	 **/
	public void setPmsId(String o) {
		this.PmsId = o;
	}
			
	/**
	 * 사업분류코드
	 **/
	public void setBzClasCd(String o) {
		this.BzClasCd = o;
	}
			
	/**
	 * 전담기관ID
	 **/
	public void setCpcgInstId(String o) {
		this.CpcgInstId = o;
	}
			
	/**
	 * 전담기관사업자번호
	 **/
	public void setCpcgInstBzprNo(String o) {
		this.CpcgInstBzprNo = o;
	}
			
	/**
	 * 전담기관법인등록번호
	 **/
	public void setCpcgInstCrpnRegNo(String o) {
		this.CpcgInstCrpnRegNo = o;
	}
			
	/**
	 * 금융기관계약ID
	 **/
	public void setFncInstContId(String o) {
		this.FncInstContId = o;
	}
			
	/**
	 * 수행기관ID
	 **/
	public void setAchvInstId(String o) {
		this.AchvInstId = o;
	}
			
	/**
	 * 수행기관사업자번호
	 **/
	public void setAchvInstBzprNo(String o) {
		this.AchvInstBzprNo = o;
	}
			
	/**
	 * 수행기관법인등록번호
	 **/
	public void setAchvInstCrpnRegNo(String o) {
		this.AchvInstCrpnRegNo = o;
	}
			
	/**
	 * 과제ID
	 **/
	public void setSbjtId(String o) {
		this.SbjtId = o;
	}
			
	/**
	 * 협약ID
	 **/
	public void setAgrmtId(String o) {
		this.AgrmtId = o;
	}
			
	/**
	 * 년차
	 **/
	public void setAnnl(String o) {
		this.Annl = o;
	}
			
	/**
	 * 전후반구분
	 **/
	public void setHfDv(String o) {
		this.HfDv = o;
	}
			
	/**
	 * 협약일련번호
	 **/
	public void setAgrmtSeqNo(String o) {
		this.AgrmtSeqNo = o;
	}
			
	/**
	 * 예비
	 **/
	public void setRsev(String o) {
		this.Rsev = o;
	}
			
	/**
	 * 세션ID
	 **/
	public void setSessId(String o) {
		this.SessId = o;
	}
			
	/**
	 * PMSID
	 **/
	public void setPmsId1(String o) {
		this.PmsId1 = o;
	}
			


	
	@Override
	public String get_CharSet()
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int getSoTimeout()
	{
		return -1;
	}
	
	@Override
	public JexType get_IOType() {
		return JexType.IO_COMMON;
	}

	@Override
	public String get_Target() {
		return "RCMSPT";
	}
	
	@Override
	public void invokeValue(Object target, Method method, Object ...value) throws Exception
	{
		method.invoke(target, value);
	}

	@Override
	public Class<?> get_ReverseClass() {
		return 	this.getClass();
	}
}
			