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
 * 지경부 RCMS개발구축 프로젝트
 * @COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 * @File Name    : RCMSPTCommonUtil.java
 * @Package Name : kr.go.rcms.pt.impl
 * @author       : 
 * @Description  : 
 * @History      : 2012. 7. 17., , 최초작성
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
	 * 입력 Domain 에 대하여 공통부값을 설정하여 반환한다.
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
	 * 공통부에 UUID 값을 설정한다. 
	 * @param common
	 * @param session
	 */
	public static void makeUUID(RCMS_COMMON common, HttpServletRequest request)
	{
		/*		
			거래고유번호	Universally Unique Identifier	UUID
			거래일자		Transaction Date				TRSC_DT
			거래시간		Transaction Timie				TRSC_TM
			출발시스템구분	Departure System Division 		DPTR_SYS_DV
			시스템일련번호	System Sequence  Number			SYS_SEQ_NO
			WAS번호			WAS Number						WAS_NO
			거래일련번호	Transaction Sequence  Number	TRSC_SEQ_NO
			시험호출구분	Test Call Division 				TSTCL_DV
			거래분기번호	Transaction Branch Number		TRSC_BR_NO
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
		
		//이전 분기번호를 삭제 한다.
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
		
		//공통부 입력 시작
		RCMS_COMMON common = sessionToRcmsCommonHeader(new RCMS_COMMON(), request);
		if (JexDomainUtil.hasField(result, "RCMS_COMMON", true))
		{
			JexDomainUtil.setValue(result, "RCMS_COMMON", common);	
		}		

		//공통부 입력 끝
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
		//시스템 로그 Trace 값 설정 시작
		makeSystemTraceValue(result, common, request);
			
		return result;
	}
	
	private static void makeSystemTraceValue(JexData data, RCMS_COMMON common, HttpServletRequest request)
	{
		try  
		{
			//서비스 id
			
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
			
			//진행번호
			data.setAttribute(JexContext.KEY_TRSC_BR_NO, common.getTrscBrNo());

			//서비스 id
//			data.setAttribute(iTMSContext.KEY_SVC_ID,  data.getId());
			if (request != null) 
			{
				HttpSession session = request.getSession(false);
				if (session != null) 
				{
					//data.session = session;
					//로그인 UUID
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
	 * 해당 data 처리결과가 오류 인지를 반환한다.
	 * @param data
	 * @return
	 */
	public static boolean isError(JexData data)
	{
		//정상 오류코드인지 확인 
		return JexDomainUtil.isError(data);
	}
	
	/**
	 * <pre>
	 * 해당 처리결과 오류 코드를 반환한다.
	 * 
	 * 오류 항목이 없거나 정상이 아닌 data 값일경우 \"\"
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
	 * 해당 data 에 발생한 오류 메시지를 반환한다.
	 * 
	 * 오류가 발생하지 않았을경우 null 을 반환한다.
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
	 * 해당 오류 코드에 맞는 오류 메시지를 반환한다.
	 * 
	 * 오류 메시지를  찾을수 없을경우 null 을 반환한다.
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
	 * 해당 Data 를 Host 로 전송하고 그에 맞는 결과를 반환한다.
	 * 
	 * 만약 호스트 전송에 실패 하여도 입력된 Domain 에 맞는 출력 Domain 을 반환하며
	 * 
	 * 오류 정보를 설정하여 반환된다.
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
	 * 해당 Data 를 Host 로 전송하고 그에 맞는 결과를 반환한다.
	 * 
	 * 만약 호스트 전송에 실패 하여도 입력된 Domain 에 맞는 출력 Domain 을 반환하며
	 * 
	 * 오류 정보를 설정하여 반환된다.
	 * </pre>
	 * @param target 대상 시스템명
	 * @param data 전송 자료
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
			LOG.debug("[" + data.get_Id() + "] BT 서버 응답 수신 관련 오류");
		}
		
		//로그인 전문?
		if (bLoginSVC && !JexDomainUtil.isError(data))
		{
			//session 에 넣어야 한다.
			request.getSession().setAttribute(JexContext.KEY_LGIN_UUID, data.getAttribute(JexContext.KEY_UUID));
		}
		//넘어온 분기번호를 검사 한다.
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
	 * 해당 Data 를 Host 로 전송하고 그에 맞는 결과를 반환한다.
	 * 
	 * 만약 호스트 전송에 실패 하여도 입력된 Domain 에 맞는 출력 Domain 을 반환하며
	 * 
	 * 오류 정보를 설정하여 반환된다.
	 * </pre>
	 * @param target 대상 시스템명
	 * @param data 전송 자료
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
			LOG.debug("[" + data.get_Id() + "] BT 서버 응답 수신 관련 오류");
		}
		
		return result;
	}		
	
}
