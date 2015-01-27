
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
        JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TRSC_DT\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"�ŷ�����\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TRSC_TM\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"�ŷ��ð�\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"DPTR_SYS_DV\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"��߽ý��۱���\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"SYS_SEQ_NO\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"�ý����Ϸù�ȣ\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"WAS_NO\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"WAS��ȣ\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"TRSC_SEQ_NO\",\"length\":\"10\",\"mask\":\"N\",\"name\":\"�ŷ��Ϸù�ȣ\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TSTCL_DV\",\"length\":\"4\",\"mask\":\"N\",\"name\":\"����ȣ�ⱸ��\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"RIGHT\",\"fullchar\":\"N\",\"id\":\"TRSC_BR_NO\",\"length\":\"5\",\"mask\":\"N\",\"name\":\"�ŷ��б��ȣ\",\"padding\":\"0\",\"required\":\"N\",\"type\":\"9\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"BIZ_UUID\",\"length\":\"35\",\"mask\":\"N\",\"name\":\"�����ŷ�������ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"LGIN_UUID\",\"length\":\"35\",\"mask\":\"N\",\"name\":\"�α��ΰŷ�������ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"SVC_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"����ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"IO_DV\",\"length\":\"1\",\"mask\":\"N\",\"name\":\"�ۼ��ű���\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"TMSG_NO\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"������ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"USR_INST_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"����ڱ��ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"USR_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"�����ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"USR_IP\",\"length\":\"32\",\"mask\":\"N\",\"name\":\"�����IP\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"MENU_GRP_CD\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"�޴��׷��ڵ�\",\"padding\":\"\",\"required\":\"N\",\"type\":\"��Ÿ\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"MENU_CD\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"�޴��ڵ�\",\"padding\":\"\",\"required\":\"N\",\"type\":\"��Ÿ\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"PT_ID\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"PT ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"BT_ID\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"BT ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSPS_DT\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"��������\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSPS_TM\",\"length\":\"6\",\"mask\":\"N\",\"name\":\"����ð�\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSPS_CD\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"�����ڵ�\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"PMS_ID\",\"length\":\"3\",\"mask\":\"N\",\"name\":\"PMSID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"BZ_CLAS_CD\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"����з��ڵ�\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"CPCG_INST_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"������ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"CPCG_INST_BZPR_NO\",\"length\":\"10\",\"mask\":\"N\",\"name\":\"����������ڹ�ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"CPCG_INST_CRPN_REG_NO\",\"length\":\"13\",\"mask\":\"N\",\"name\":\"���������ε�Ϲ�ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"FNC_INST_CONT_ID\",\"length\":\"8\",\"mask\":\"N\",\"name\":\"����������ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ACHV_INST_ID\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"������ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ACHV_INST_BZPR_NO\",\"length\":\"10\",\"mask\":\"N\",\"name\":\"����������ڹ�ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ACHV_INST_CRPN_REG_NO\",\"length\":\"13\",\"mask\":\"N\",\"name\":\"���������ε�Ϲ�ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"SBJT_ID\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"����ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"AGRMT_ID\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"����ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"ANNL\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"����\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"HF_DV\",\"length\":\"2\",\"mask\":\"N\",\"name\":\"���Ĺݱ���\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"AGRMT_SEQ_NO\",\"length\":\"20\",\"mask\":\"N\",\"name\":\"�����Ϸù�ȣ\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"RSEV\",\"length\":\"30\",\"mask\":\"N\",\"name\":\"����\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"SESS_ID\",\"length\":\"0\",\"mask\":\"N\",\"name\":\"����ID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"��Ÿ\",\"type_imo\":\"FIELD\"}"),
		JexDomainUtil.parseIMODataItem("{\"align\":\"LEFT\",\"fullchar\":\"N\",\"id\":\"PMS_ID1\",\"length\":\"3\",\"mask\":\"N\",\"name\":\"PMSID\",\"padding\":\"\",\"required\":\"N\",\"type\":\"X\",\"type_imo\":\"FIELD\"}")
	};

    private String TrscDt = null; // �ŷ�����
    private String TrscTm = null; // �ŷ��ð�
    private String DptrSysDv = null; // ��߽ý��۱���
    private String SysSeqNo = null; // �ý����Ϸù�ȣ
    private String WasNo = null; // WAS��ȣ
    private String TrscSeqNo = null; // �ŷ��Ϸù�ȣ
    private String TstclDv = null; // ����ȣ�ⱸ��
    private String TrscBrNo = null; // �ŷ��б��ȣ
    private String BizUuid = null; // �����ŷ�������ȣ
    private String LginUuid = null; // �α��ΰŷ�������ȣ
    private String SvcId = null; // ����ID
    private String IoDv = null; // �ۼ��ű���
    private String TmsgNo = null; // ������ȣ
    private String UsrInstId = null; // ����ڱ��ID
    private String UsrId = null; // �����ID
    private String UsrIp = null; // �����IP
    private String MenuGrpCd = null; // �޴��׷��ڵ�
    private String MenuCd = null; // �޴��ڵ�
    private String PtId = null; // PT ID
    private String BtId = null; // BT ID
    private String RspsDt = null; // ��������
    private String RspsTm = null; // ����ð�
    private String RspsCd = null; // �����ڵ�
    private String PmsId = null; // PMSID
    private String BzClasCd = null; // ����з��ڵ�
    private String CpcgInstId = null; // ������ID
    private String CpcgInstBzprNo = null; // ����������ڹ�ȣ
    private String CpcgInstCrpnRegNo = null; // ���������ε�Ϲ�ȣ
    private String FncInstContId = null; // ����������ID
    private String AchvInstId = null; // ������ID
    private String AchvInstBzprNo = null; // ����������ڹ�ȣ
    private String AchvInstCrpnRegNo = null; // ���������ε�Ϲ�ȣ
    private String SbjtId = null; // ����ID
    private String AgrmtId = null; // ����ID
    private String Annl = null; // ����
    private String HfDv = null; // ���Ĺݱ���
    private String AgrmtSeqNo = null; // �����Ϸù�ȣ
    private String Rsev = null; // ����
    private String SessId = null; // ����ID
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
		return "PT �����";
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
	 * �ŷ�����
	 **/
	public String getTrscDt() {
		return this.TrscDt;
	}
			
	/**
	 * �ŷ��ð�
	 **/
	public String getTrscTm() {
		return this.TrscTm;
	}
			
	/**
	 * ��߽ý��۱���
	 **/
	public String getDptrSysDv() {
		return this.DptrSysDv;
	}
			
	/**
	 * �ý����Ϸù�ȣ
	 **/
	public String getSysSeqNo() {
		return this.SysSeqNo;
	}
			
	/**
	 * WAS��ȣ
	 **/
	public String getWasNo() {
		return this.WasNo;
	}
			
	/**
	 * �ŷ��Ϸù�ȣ
	 **/
	public String getTrscSeqNo() {
		return this.TrscSeqNo;
	}
			
	/**
	 * ����ȣ�ⱸ��
	 **/
	public String getTstclDv() {
		return this.TstclDv;
	}
			
	/**
	 * �ŷ��б��ȣ
	 **/
	public String getTrscBrNo() {
		return this.TrscBrNo;
	}
			
	/**
	 * �����ŷ�������ȣ
	 **/
	public String getBizUuid() {
		return this.BizUuid;
	}
			
	/**
	 * �α��ΰŷ�������ȣ
	 **/
	public String getLginUuid() {
		return this.LginUuid;
	}
			
	/**
	 * ����ID
	 **/
	public String getSvcId() {
		return this.SvcId;
	}
			
	/**
	 * �ۼ��ű���
	 **/
	public String getIoDv() {
		return this.IoDv;
	}
			
	/**
	 * ������ȣ
	 **/
	public String getTmsgNo() {
		return this.TmsgNo;
	}
			
	/**
	 * ����ڱ��ID
	 **/
	public String getUsrInstId() {
		return this.UsrInstId;
	}
			
	/**
	 * �����ID
	 **/
	public String getUsrId() {
		return this.UsrId;
	}
			
	/**
	 * �����IP
	 **/
	public String getUsrIp() {
		return this.UsrIp;
	}
			
	/**
	 * �޴��׷��ڵ�
	 **/
	public String getMenuGrpCd() {
		return this.MenuGrpCd;
	}
			
	/**
	 * �޴��ڵ�
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
	 * ��������
	 **/
	public String getRspsDt() {
		return this.RspsDt;
	}
			
	/**
	 * ����ð�
	 **/
	public String getRspsTm() {
		return this.RspsTm;
	}
			
	/**
	 * �����ڵ�
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
	 * ����з��ڵ�
	 **/
	public String getBzClasCd() {
		return this.BzClasCd;
	}
			
	/**
	 * ������ID
	 **/
	public String getCpcgInstId() {
		return this.CpcgInstId;
	}
			
	/**
	 * ����������ڹ�ȣ
	 **/
	public String getCpcgInstBzprNo() {
		return this.CpcgInstBzprNo;
	}
			
	/**
	 * ���������ε�Ϲ�ȣ
	 **/
	public String getCpcgInstCrpnRegNo() {
		return this.CpcgInstCrpnRegNo;
	}
			
	/**
	 * ����������ID
	 **/
	public String getFncInstContId() {
		return this.FncInstContId;
	}
			
	/**
	 * ������ID
	 **/
	public String getAchvInstId() {
		return this.AchvInstId;
	}
			
	/**
	 * ����������ڹ�ȣ
	 **/
	public String getAchvInstBzprNo() {
		return this.AchvInstBzprNo;
	}
			
	/**
	 * ���������ε�Ϲ�ȣ
	 **/
	public String getAchvInstCrpnRegNo() {
		return this.AchvInstCrpnRegNo;
	}
			
	/**
	 * ����ID
	 **/
	public String getSbjtId() {
		return this.SbjtId;
	}
			
	/**
	 * ����ID
	 **/
	public String getAgrmtId() {
		return this.AgrmtId;
	}
			
	/**
	 * ����
	 **/
	public String getAnnl() {
		return this.Annl;
	}
			
	/**
	 * ���Ĺݱ���
	 **/
	public String getHfDv() {
		return this.HfDv;
	}
			
	/**
	 * �����Ϸù�ȣ
	 **/
	public String getAgrmtSeqNo() {
		return this.AgrmtSeqNo;
	}
			
	/**
	 * ����
	 **/
	public String getRsev() {
		return this.Rsev;
	}
			
	/**
	 * ����ID
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
	 * �ŷ�����
	 **/
	public void setTrscDt(String o) {
		this.TrscDt = o;
	}
			
	/**
	 * �ŷ��ð�
	 **/
	public void setTrscTm(String o) {
		this.TrscTm = o;
	}
			
	/**
	 * ��߽ý��۱���
	 **/
	public void setDptrSysDv(String o) {
		this.DptrSysDv = o;
	}
			
	/**
	 * �ý����Ϸù�ȣ
	 **/
	public void setSysSeqNo(String o) {
		this.SysSeqNo = o;
	}
			
	/**
	 * WAS��ȣ
	 **/
	public void setWasNo(String o) {
		this.WasNo = o;
	}
			
	/**
	 * �ŷ��Ϸù�ȣ
	 **/
	public void setTrscSeqNo(String o) {
		this.TrscSeqNo = o;
	}
			
	/**
	 * ����ȣ�ⱸ��
	 **/
	public void setTstclDv(String o) {
		this.TstclDv = o;
	}
			
	/**
	 * �ŷ��б��ȣ
	 **/
	public void setTrscBrNo(String o) {
		this.TrscBrNo = o;
	}
			
	/**
	 * �����ŷ�������ȣ
	 **/
	public void setBizUuid(String o) {
		this.BizUuid = o;
	}
			
	/**
	 * �α��ΰŷ�������ȣ
	 **/
	public void setLginUuid(String o) {
		this.LginUuid = o;
	}
			
	/**
	 * ����ID
	 **/
	public void setSvcId(String o) {
		this.SvcId = o;
	}
			
	/**
	 * �ۼ��ű���
	 **/
	public void setIoDv(String o) {
		this.IoDv = o;
	}
			
	/**
	 * ������ȣ
	 **/
	public void setTmsgNo(String o) {
		this.TmsgNo = o;
	}
			
	/**
	 * ����ڱ��ID
	 **/
	public void setUsrInstId(String o) {
		this.UsrInstId = o;
	}
			
	/**
	 * �����ID
	 **/
	public void setUsrId(String o) {
		this.UsrId = o;
	}
			
	/**
	 * �����IP
	 **/
	public void setUsrIp(String o) {
		this.UsrIp = o;
	}
			
	/**
	 * �޴��׷��ڵ�
	 **/
	public void setMenuGrpCd(String o) {
		this.MenuGrpCd = o;
	}
			
	/**
	 * �޴��ڵ�
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
	 * ��������
	 **/
	public void setRspsDt(String o) {
		this.RspsDt = o;
	}
			
	/**
	 * ����ð�
	 **/
	public void setRspsTm(String o) {
		this.RspsTm = o;
	}
			
	/**
	 * �����ڵ�
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
	 * ����з��ڵ�
	 **/
	public void setBzClasCd(String o) {
		this.BzClasCd = o;
	}
			
	/**
	 * ������ID
	 **/
	public void setCpcgInstId(String o) {
		this.CpcgInstId = o;
	}
			
	/**
	 * ����������ڹ�ȣ
	 **/
	public void setCpcgInstBzprNo(String o) {
		this.CpcgInstBzprNo = o;
	}
			
	/**
	 * ���������ε�Ϲ�ȣ
	 **/
	public void setCpcgInstCrpnRegNo(String o) {
		this.CpcgInstCrpnRegNo = o;
	}
			
	/**
	 * ����������ID
	 **/
	public void setFncInstContId(String o) {
		this.FncInstContId = o;
	}
			
	/**
	 * ������ID
	 **/
	public void setAchvInstId(String o) {
		this.AchvInstId = o;
	}
			
	/**
	 * ����������ڹ�ȣ
	 **/
	public void setAchvInstBzprNo(String o) {
		this.AchvInstBzprNo = o;
	}
			
	/**
	 * ���������ε�Ϲ�ȣ
	 **/
	public void setAchvInstCrpnRegNo(String o) {
		this.AchvInstCrpnRegNo = o;
	}
			
	/**
	 * ����ID
	 **/
	public void setSbjtId(String o) {
		this.SbjtId = o;
	}
			
	/**
	 * ����ID
	 **/
	public void setAgrmtId(String o) {
		this.AgrmtId = o;
	}
			
	/**
	 * ����
	 **/
	public void setAnnl(String o) {
		this.Annl = o;
	}
			
	/**
	 * ���Ĺݱ���
	 **/
	public void setHfDv(String o) {
		this.HfDv = o;
	}
			
	/**
	 * �����Ϸù�ȣ
	 **/
	public void setAgrmtSeqNo(String o) {
		this.AgrmtSeqNo = o;
	}
			
	/**
	 * ����
	 **/
	public void setRsev(String o) {
		this.Rsev = o;
	}
			
	/**
	 * ����ID
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
			