package kr.go.rcms.pt.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jex.JexContext;
import jex.data.JexData;
import jex.log.JexLogFactory;
import jex.log.JexLogger;
import jex.resource.cci.JexConnection;
import jex.resource.cci.imo.JexIMOManager;
import jex.sys.JexSystem;
import jex.util.DateTime;
import jex.util.JexDomainUtil;
import jex.util.JexUtil;
import jex.util.code.JexCodeManager;
import jex.util.seq.JexSequenceManager;
import jex.web.JexPTCommonUtil;
import kr.go.rcms.pt.impl.RCMS_COMMON;
import kr.go.rcms.web.comm.PT_HEADER;
import kr.go.rcms.web.util.StringUtil;

/**
 * <pre>
 * ����� RCMS���߱��� ������Ʈ
 * @COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 * @File Name    : RCMSPTCommonUtil.java
 * @Package Name : kr.go.rcms.pt.impl
 * @author       : 
 * @Description  : 
 * @History      : 2012. 7. 17., , �����ۼ�
 *
 * </pre>
 **/
public class RCMSPTCommonUtil extends JexPTCommonUtil 
{
	
	private static final JexLogger LOG = JexLogFactory.getLogger(RCMSPTCommonUtil.class);
	private static final String KEY_CODE_GROUP_ERROR = "RSPS_CD";

	public final static String KEY_SESSION_LOGIN = "COM_SESSION";

	protected RCMSPTCommonUtil(HttpServletRequest request, HttpServletResponse response) 
	{
		super(request, response);
	}

	@Override
	public JexData createIDOData(Class<?> domainClass, Object ... userinput)
	{
		return JexSystem.createJexData(domainClass.getName());
	}

	@Override
	public JexData createIMOData(Class<?> domainClass, Object ... userinput)
	{
		JexData result = createIDOData(domainClass) ;
		return result;
	}


	@Override
	public JexData createIDOData(Class<?> domainClass) 
	{
		return JexSystem.createJexData(domainClass.getName());
		
	}

	@Override
	public JexData createIMOData(Class<?> domainClass) 
	{
		JexData result = JexSystem.createJexData(domainClass.getName());

		return result;
	}

	/**
	 * �Է� Domain �� ���Ͽ� ����ΰ��� �����Ͽ� ��ȯ�Ѵ�.
	 * @param data
	 */
	public static JexData createDomainData(Class<?> domainClass, HttpServletRequest request)
	{
		String strLogId = null;
		if (!LOG.isDebug())
		{
			return createDomainDataImpl(domainClass, null, request);
		}
		try 
		{
			if (request != null)
			{

				HttpSession session = request.getSession(false);
				if (session != null)
				{
					Object obj = session.getAttribute(JexContext.KEY_USR_ID);	//iTMSLogCasterUserInfo.KEY_USER_ID
					if (obj != null)
					{
						strLogId = obj.toString();
					}
				}
			}
		}
		catch(Exception e){}		
		return createDomainDataImpl(domainClass, strLogId, request);
	}	
	
	private static RCMS_COMMON sessionToRcmsCommonHeader(RCMS_COMMON common, HttpServletRequest request) {
		try  {
			if (request != null) {
				HttpSession session = request.getSession(false);
				if (session != null) {
					PT_HEADER ptHeader = (PT_HEADER) session.getAttribute("pt_header");
					if (ptHeader != null)
					{
						common.setUsrInstId			(ptHeader.getUsrInstId());
						common.setMenuGrpCd			(ptHeader.getMenuGrpCd());
						common.setMenuCd			(ptHeader.getMenuCd());
						common.setPmsId				(ptHeader.getPmsId());
						common.setBzClasCd			(ptHeader.getBzClasCd());
						common.setCpcgInstId		(ptHeader.getCpcgInstId());
						common.setCpcgInstBzprNo	(ptHeader.getCpcgInstBzprNo());
						common.setCpcgInstCrpnRegNo	(ptHeader.getCpcgInstCrpnRegNo());
						common.setFncInstContId		(ptHeader.getFncInstContId());
						common.setAchvInstId		(ptHeader.getAchvInstId());
						common.setAchvInstBzprNo	(ptHeader.getAchvInstBzprNo());
						common.setAchvInstCrpnRegNo	(ptHeader.getAchvInstCrpnRegNo());
						common.setSbjtId			(ptHeader.getSbjtId());
						common.setAgrmtId			(ptHeader.getAgrmtSeqNo());
						common.setAnnl				(ptHeader.getAnnl());
						common.setUsrId				(ptHeader.getUsrId());
						common.setHfDv				(ptHeader.getHfDv());
						common.setAgrmtSeqNo		(ptHeader.getAgrmtSeqNo());
						common.setPmsId1            (ptHeader.getPmsId1());
					}
					common.setUsrIp			        (request.getRemoteAddr());
                    common.setSessId                (session.getId());
				}
			}
		} 
		catch(Exception e)
		{ 
			e.printStackTrace();
		}
		finally
		{
			makeUUID(common, request);
		}
		
		return common;
	}	
	
	/**
	 * ����ο� UUID ���� �����Ѵ�. 
	 * @param common
	 * @param session
	 */
	public static void makeUUID(RCMS_COMMON common, HttpServletRequest request)
	{
		/*		
			�ŷ�������ȣ	Universally Unique Identifier	UUID
			�ŷ�����		Transaction Date				TRSC_DT
			�ŷ��ð�		Transaction Timie				TRSC_TM
			��߽ý��۱���	Departure System Division 		DPTR_SYS_DV
			�ý����Ϸù�ȣ	System Sequence  Number			SYS_SEQ_NO
			WAS��ȣ			WAS Number						WAS_NO
			�ŷ��Ϸù�ȣ	Transaction Sequence  Number	TRSC_SEQ_NO
			����ȣ�ⱸ��	Test Call Division 				TSTCL_DV
			�ŷ��б��ȣ	Transaction Branch Number		TRSC_BR_NO
		 */
		RCMS_COMMON rcmsCommon = null;
		Integer seq=null;
		if (request.getAttribute(JexContext.KEY_UUID) != null)
		{
			rcmsCommon = (RCMS_COMMON)request.getAttribute(JexContext.KEY_UUID);
		}
		else
		{
			rcmsCommon = new RCMS_COMMON();
			rcmsCommon.setTrscDt(DateTime.getInstance().getDate("yyyymmdd"));
			rcmsCommon.setTrscTm(DateTime.getInstance().getDate("hh24miss"));
			rcmsCommon.setDptrSysDv(System.getProperty("DPTR_SYS_DV", "XX"));
			rcmsCommon.setSysSeqNo( System.getProperty("SYS_SEQ_NO",  "00"));
			rcmsCommon.setWasNo(    System.getProperty("WAS_NO",      "00"));
			rcmsCommon.setTrscSeqNo(JexSequenceManager.getSeq("TRSC_SEQ_NO").getSeqFormat());
			rcmsCommon.setTstclDv(  System.getProperty("STCL_DV",   "DEVL"));
			request.setAttribute(JexContext.KEY_UUID, rcmsCommon);
		}
		
		
		HttpSession session = request.getSession(false);
		if (request.getAttribute(JexContext.KEY_TRSC_BR_NO) instanceof Integer)
		{
			if (session != null && session.getAttribute(JexContext.KEY_TRSC_BR_NO) instanceof Integer)
			{
				seq = (Integer)session.getAttribute(JexContext.KEY_TRSC_BR_NO);
			}
			else
			{
				seq = (Integer)request.getAttribute(JexContext.KEY_TRSC_BR_NO);
			}
		}
		else
		{
			seq = Integer.valueOf(1);
		}
		
		//���� �б��ȣ�� ���� �Ѵ�.
		if (session != null)
		{
			session.removeAttribute(JexContext.KEY_TRSC_BR_NO);
		}

		common.setTrscDt(   rcmsCommon.getTrscDt());
		common.setTrscTm(   rcmsCommon.getTrscTm());
		common.setDptrSysDv(rcmsCommon.getDptrSysDv());
		common.setSysSeqNo( rcmsCommon.getSysSeqNo());
		common.setWasNo(    rcmsCommon.getWasNo());
		common.setTrscSeqNo(rcmsCommon.getTrscSeqNo());
		common.setTstclDv(  rcmsCommon.getTstclDv());
		common.setTrscBrNo( seq.toString());
		
		StringBuilder sbUuid = new StringBuilder();
		sbUuid.append(common.getTrscDt());
		sbUuid.append(common.getTrscTm());
		sbUuid.append(common.getDptrSysDv());
		sbUuid.append(common.getSysSeqNo());
		sbUuid.append(common.getWasNo());
		sbUuid.append(common.getTrscSeqNo());
		sbUuid.append(common.getTstclDv());
		
		request.setAttribute(JexContext.KEY_TRSC_BR_NO, Integer.valueOf(seq.intValue() + 1));
	}	
	
	private static JexData createDomainDataImpl(Class<?> domainClass, String logid, HttpServletRequest request)
	{
		String strFullName = domainClass.getName();
		JexData result = JexSystem.createJexData(strFullName);
		
		//����� �Է� ����
		RCMS_COMMON common = sessionToRcmsCommonHeader(new RCMS_COMMON(), request);
		if (JexDomainUtil.hasField(result, "RCMS_COMMON", true))
		{
			JexDomainUtil.setValue(result, "RCMS_COMMON", common);	
		}		

		//����� �Է� ��
		if (LOG.isDebug())
		{
			try
			{
				if (logid == null)
				{
					logid = (String)JexContext.getJexContext().getAttribute(JexContext.KEY_USR_ID);	// iTMSLogCasterUserInfo.KEY_USER_ID
				}
				
				if (logid != null)
				{
					result.setAttribute(JexContext.KEY_USR_ID, logid); // iTMSLogCasterUserInfo.KEY_USER_ID
				}
			}
			catch(Exception e){}
		}
		//�ý��� �α� Trace �� ���� ����
		makeSystemTraceValue(result, common, request);
			
		return result;
	}
	
	private static void makeSystemTraceValue(JexData data, RCMS_COMMON common, HttpServletRequest request)
	{
		try  
		{
			//���� id
			
			StringBuilder sbUuid = new StringBuilder();
			
			sbUuid.append(common.getTrscDt());
			sbUuid.append(common.getTrscTm());
			sbUuid.append(common.getDptrSysDv());
			sbUuid.append(common.getSysSeqNo());
			sbUuid.append(common.getWasNo());
			sbUuid.append(common.getTrscSeqNo());
			sbUuid.append(common.getTstclDv());

			//UUID
			data.setAttribute(JexContext.KEY_UUID,  sbUuid.toString());
			
			//�����ȣ
			data.setAttribute(JexContext.KEY_TRSC_BR_NO, common.getTrscBrNo());

			//���� id
//			data.setAttribute(iTMSContext.KEY_SVC_ID,  data.getId());
			if (request != null) 
			{
				HttpSession session = request.getSession(false);
				if (session != null) 
				{
					//data.session = session;
					//�α��� UUID
					if(!StringUtil.isNull(session.getAttribute(JexContext.KEY_LGIN_UUID)))
					{
						data.setAttribute(JexContext.KEY_LGIN_UUID, session.getAttribute(JexContext.KEY_LGIN_UUID));
					}
					//BIZ UUID
					if(!StringUtil.isNull(request.getAttribute(JexContext.KEY_BIZ_UUID)))
					{
						data.setAttribute(JexContext.KEY_BIZ_UUID, request.getAttribute(JexContext.KEY_BIZ_UUID));
					}
					else
					{
						request.setAttribute(JexContext.KEY_BIZ_UUID, sbUuid.toString());
						data.setAttribute(JexContext.KEY_BIZ_UUID,    sbUuid.toString());
					}
				}
			}
			if (!StringUtil.isNull(common.getUsrIp()))
			{
				data.setAttribute(JexContext.KEY_USR_IP, common.getUsrIp());
			}
			
			if (!StringUtil.isNull(common.getUsrId()))
			{
				data.setAttribute(JexContext.KEY_USR_ID, common.getUsrId());
			}
			
		} catch(Exception e){ }			
	}	

	/**
	 * �ش� data ó������� ���� ������ ��ȯ�Ѵ�.
	 * @param data
	 * @return
	 */
	public static boolean isError(JexData data)
	{
		//���� �����ڵ����� Ȯ�� 
		return JexDomainUtil.isError(data);
	}
	
	/**
	 * <pre>
	 * �ش� ó����� ���� �ڵ带 ��ȯ�Ѵ�.
	 * 
	 * ���� �׸��� ���ų� ������ �ƴ� data ���ϰ�� \"\"
	 * </pre>
	 * @param data
	 * @return
	 */
	public static String getErrorCode(JexData data) 
	{
		return JexDomainUtil.getErrorCode(data);

	}

	/**
	 * <pre>
	 * �ش� data �� �߻��� ���� �޽����� ��ȯ�Ѵ�.
	 * 
	 * ������ �߻����� �ʾ������ null �� ��ȯ�Ѵ�.
	 * </pre>
	 * @param data
	 * @return
	 */
	public static String getErrorMessage(JexData data)
	{
		return getErrorMessage(getErrorCode(data));
	}
	
	/**
	 * <pre>
	 * �ش� ���� �ڵ忡 �´� ���� �޽����� ��ȯ�Ѵ�.
	 * 
	 * ���� �޽�����  ã���� ������� null �� ��ȯ�Ѵ�.
	 * </pre>
	 * @param code
	 * @return
	 */
	public static String getErrorMessage(String code)
	{
		return JexCodeManager.getCode(KEY_CODE_GROUP_ERROR, code);
	}
	
	
	/**
	 * <pre>
	 * �ش� Data �� Host �� �����ϰ� �׿� �´� ����� ��ȯ�Ѵ�.
	 * 
	 * ���� ȣ��Ʈ ���ۿ� ���� �Ͽ��� �Էµ� Domain �� �´� ��� Domain �� ��ȯ�ϸ�
	 * 
	 * ���� ������ �����Ͽ� ��ȯ�ȴ�.
	 * </pre>
	 * @param data
	 * @return
	 */
	public static JexData execute(JexData data, HttpServletRequest request)
	{
		return execute(null, data, request);
	}
	
	/**
	 * <pre>
	 * �ش� Data �� Host �� �����ϰ� �׿� �´� ����� ��ȯ�Ѵ�.
	 * 
	 * ���� ȣ��Ʈ ���ۿ� ���� �Ͽ��� �Էµ� Domain �� �´� ��� Domain �� ��ȯ�ϸ�
	 * 
	 * ���� ������ �����Ͽ� ��ȯ�ȴ�.
	 * </pre>
	 * @param target ��� �ý��۸�
	 * @param data ���� �ڷ�
	 * @return
	 */
	public static JexData execute(String target, JexData data, HttpServletRequest request) 
	{
		boolean bLoginSVC = (request.getSession(false) != null && ("SVC_C01020_001".equals(data.get_Id()) || "SVC_C01030_001".equals(data.get_Id()))); 
		if (bLoginSVC)
		{
			data.removeAttribute(JexContext.KEY_LGIN_UUID);
			if (JexDomainUtil.hasField(data, "RCMS_COMMON", false))
			{
				RCMS_COMMON comm = (RCMS_COMMON)JexDomainUtil.getValue(data, "RCMS_COMMON");
				if (!StringUtil.isNull(comm.getUsrId()))
				{
					data.setAttribute(JexContext.KEY_USR_ID, comm.getUsrId());
				}
			}
		}
		//JexData result = JexTaskUtil.performService(target, data);

		// BIZ Connection
		JexConnection bizCon = JexIMOManager.createBIZConnection();

		JexData result = null;
		
		try {
			result = bizCon.execute(data);
		} catch ( Exception e ) {
			LOG.debug("[" + data.get_Id() + "] BT ���� ���� ���� ���� ����");
		}
		
		//�α��� ����?
		if (bLoginSVC && !JexDomainUtil.isError(data))
		{
			//session �� �־�� �Ѵ�.
			request.getSession().setAttribute(JexContext.KEY_LGIN_UUID, data.getAttribute(JexContext.KEY_UUID));
		}
		//�Ѿ�� �б��ȣ�� �˻� �Ѵ�.
		if (request.getSession(false) != null && result.getAttribute(JexContext.KEY_TRSC_BR_NO) != null)
		{
			int nTrscBRNO = JexUtil.toInt(result.getAttribute(JexContext.KEY_TRSC_BR_NO), -1);
			
			if (nTrscBRNO != -1)
			{
				request.getSession().setAttribute(JexContext.KEY_TRSC_BR_NO, Integer.valueOf(nTrscBRNO + 1));
			}
		}
		
		return result;
	}	
	
	/**
	 * <pre>
	 * �ش� Data �� Host �� �����ϰ� �׿� �´� ����� ��ȯ�Ѵ�.
	 * 
	 * ���� ȣ��Ʈ ���ۿ� ���� �Ͽ��� �Էµ� Domain �� �´� ��� Domain �� ��ȯ�ϸ�
	 * 
	 * ���� ������ �����Ͽ� ��ȯ�ȴ�.
	 * </pre>
	 * @param target ��� �ý��۸�
	 * @param data ���� �ڷ�
	 * @return
	 */
	public static JexData execute2(String target, JexData data) 
	{
		// BIZ Connection
		JexConnection bizCon = JexIMOManager.createBIZConnection();

		JexData result = null;
		
		try {
			result = bizCon.execute(data);
		} catch ( Exception e ) {
			LOG.debug("[" + data.get_Id() + "] BT ���� ���� ���� ���� ����");
		}
		
		return result;
	}		
	
}
