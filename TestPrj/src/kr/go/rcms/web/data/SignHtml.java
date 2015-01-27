package kr.go.rcms.web.data;

import java.io.Serializable;

public class SignHtml implements Serializable 
{
	/**
     * 
     */
    private static final long serialVersionUID = 3686210962999173888L;

	public SignHtml(){}
	
	/**
	 * ���ϼ���ŷ�
	 **/
	public static String getSglrSignTrscHtml(String serverURL) {
		StringBuffer SglrSignTrscHtml = new StringBuffer();
		
		SglrSignTrscHtml.append("<head>");
		SglrSignTrscHtml.append("<link rel='stylesheet' type='text/css' href='").append(serverURL).append("/style/pop.css' media='all' />");
		SglrSignTrscHtml.append("</head>");
		SglrSignTrscHtml.append("<body class='not-found'>");
		SglrSignTrscHtml.append("<div class='certifi_box'>");
		SglrSignTrscHtml.append("		<p class='logo'><img src='").append(serverURL).append("/images/images/common/rcms_logo3.gif' /></p>");
		SglrSignTrscHtml.append("	<div class='t10'>");
		SglrSignTrscHtml.append("	<table width='380' border='0' cellspacing='0' cellpadding='0' summary=' ������ �α���' class='text_type'>");
//		SglrSignTrscHtml.append("		<caption>��ü ���� Ȯ�� ����</caption>");
		SglrSignTrscHtml.append("		<colgroup>");
		SglrSignTrscHtml.append("			<col width='120' />");
		SglrSignTrscHtml.append("			<col width='260' />");
		SglrSignTrscHtml.append("		</colgroup>");
		SglrSignTrscHtml.append("		<tbody>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>������ȣ</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>������</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>���ݾ�</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>�Ա�����</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>�Աݰ��¹�ȣ</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>������</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>�����������μ�</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		<tr>");
		SglrSignTrscHtml.append("			<th scope='row'><span>�ŷ�ó�����μ�</span></th>");
		SglrSignTrscHtml.append("			<td>: %s</td>");
		SglrSignTrscHtml.append("		</tr>");
		SglrSignTrscHtml.append("		</tbody>");
		SglrSignTrscHtml.append("	</table>");
		SglrSignTrscHtml.append("</div>");
		SglrSignTrscHtml.append("</div>");
		SglrSignTrscHtml.append("</body>");
		
		return SglrSignTrscHtml.toString();
	}

	/**
	 * ��������ŷ�
	 **/
	public static String getPluSignTrscHtml(String serverURL) {
		StringBuffer PluSignTrscHtml =  new StringBuffer();
		PluSignTrscHtml.append("<head>");
		PluSignTrscHtml.append("<link rel='stylesheet' type='text/css' href='").append(serverURL).append("/style/pop.css' media='all' />");
		PluSignTrscHtml.append("</head>");
		PluSignTrscHtml.append("<body class='not-found'>");
		PluSignTrscHtml.append("<div class='certifi_box'>");
		PluSignTrscHtml.append("		<p class='logo'><img src='").append(serverURL).append("/images/images/common/rcms_logo3.gif' /></p>");
		PluSignTrscHtml.append("	<div class='t10'>");
		PluSignTrscHtml.append("	<table width='380' border='0' cellspacing='0' cellpadding='0' summary=' ������ �α���' class='text_type'>");
		PluSignTrscHtml.append("		<caption>��ü ���� Ȯ�� ����</caption>");
		PluSignTrscHtml.append("		<colgroup>");
		PluSignTrscHtml.append("			<col width='120' />");
		PluSignTrscHtml.append("			<col width='260' />");
		PluSignTrscHtml.append("		</colgroup>");
		PluSignTrscHtml.append("		<tbody>");
		PluSignTrscHtml.append("		<tr>");
		PluSignTrscHtml.append("			<th scope='row'><span>������ȣ</span></th>");
		PluSignTrscHtml.append("			<td>: %s</td>");
		PluSignTrscHtml.append("		</tr>");
		PluSignTrscHtml.append("		<tr>");
		PluSignTrscHtml.append("			<th scope='row'><span>������</span></th>");
		PluSignTrscHtml.append("			<td>: %s</td>");
		PluSignTrscHtml.append("		</tr>");
		PluSignTrscHtml.append("		<tr>");
		PluSignTrscHtml.append("			<th scope='row'><span>���ݾ�</span></th>");
		PluSignTrscHtml.append("			<td>: %s</td>");
		PluSignTrscHtml.append("		</tr>");
		PluSignTrscHtml.append("		<tr>");
		PluSignTrscHtml.append("			<th scope='row'><span>���Ǽ�</span></th>");
		PluSignTrscHtml.append("			<td>: %s</td>");
		PluSignTrscHtml.append("		</tr>");
		PluSignTrscHtml.append("		</tbody>");
		PluSignTrscHtml.append("	</table>");
		PluSignTrscHtml.append("</div>");
		PluSignTrscHtml.append("</div>");
		PluSignTrscHtml.append("</body>");
		
		return PluSignTrscHtml.toString();
	}
}
