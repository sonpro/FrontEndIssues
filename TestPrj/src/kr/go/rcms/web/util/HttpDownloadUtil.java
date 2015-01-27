package kr.go.rcms.web.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * <pre>
 * ����� RCMS���߱��� ������Ʈ
 * @COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 * @File Name    : HttpDownloadUtil.java
 * @Package Name : kr.go.rcms.web.util
 * @author       : 
 * @Description  : 
 * @History      : 2012. 7. 17. ���� 10:27:55, �����, �����̵�
 *
 * </pre>
 **/
public class HttpDownloadUtil {

  /** �ٿ�ε� ���� ũ�� */
  private static final int BUFFER_SIZE = 8192; // 8kb

  /** ���� ���ڵ� */
  private static final String CHARSET = "euc-kr";
  
  /**
   * ������ - ��ü ���� �Ұ�
   */
  private HttpDownloadUtil() {
    // do nothing;
  }

  /**
   * ������ ������ �ٿ�ε� �Ѵ�.
   * 
   * @param request
   * @param response
   * @param file
   * @out	JSP���尴ü JspWriter(out�� ����Ǿ� ����)
   * @pageContext	JSP���尴ü PageContext(pageContext�� ����Ǿ� ����)
   * 
   * @throws ServletException
   * @throws IOException
   */
  public static JspWriter download(HttpServletRequest request, HttpServletResponse response, File file, JspWriter out, PageContext pageContext) throws ServletException, IOException {
      return download(request, response, file, file.getName(), out, pageContext);
  }
  
  /**
   * ������ ������ �ٿ�ε� �Ѵ�.
   * 
   * @param request
   * @param response
   * @param file
   * @param fileNm �ٿ�ε��� ���ϸ�
   * @out	JSP���尴ü JspWriter(out�� ����Ǿ� ����)
   * @pageContext	JSP���尴ü PageContext(pageContext�� ����Ǿ� ����)
   * 
   * @throws ServletException
   * @throws IOException
   */
  public static JspWriter download(HttpServletRequest request, HttpServletResponse response, File file, String fileNm, JspWriter out, PageContext pageContext) throws ServletException, IOException {

    String mimetype = request.getSession().getServletContext().getMimeType(file.getName());

    if (file == null || !file.exists() || file.length() <= 0 || file.isDirectory()) {
      throw new IOException("�߸��� �����Դϴ�.");
    }

    InputStream is = null;

    try {
      is = new FileInputStream(file);
      return download(request, response, is, fileNm, file.length(), mimetype, out, pageContext);
    } finally {
      try { is.close(); } catch (Exception ex) {;}
    }
  }

  /**
   * �ش� �Է� ��Ʈ�����κ��� ���� �����͸� �ٿ�ε� �Ѵ�.
   * 
   * @param request
   * @param response
   * @param is		  �Է� ��Ʈ��
   * @param filename ���� �̸�
   * @param filesize ���� ũ��
   * @param mimetype MIME Ÿ�� ����
   * @out	JSP���尴ü JspWriter(out�� ����Ǿ� ����)
   * @pageContext	JSP���尴ü PageContext(pageContext�� ����Ǿ� ����)
   * 
   * @throws ServletException
   * @throws IOException
   */
  public static JspWriter download(HttpServletRequest request, HttpServletResponse response, InputStream is, String filename, long filesize, String mimetype, JspWriter out, PageContext pageContext) throws ServletException, IOException {
    String mime = mimetype;

    if (mimetype == null || mimetype.length() == 0) {
      mime = "application/octet-stream;";
    }
    
    out.clear();                    // �̰� �ڹٷ� �о����.
    out = pageContext.pushBody();

    byte[] buffer = new byte[BUFFER_SIZE];

    response.setContentType(mime + "; charset=" + CHARSET);

    String userAgent = request.getHeader("User-Agent");
    
    if (userAgent.indexOf("MSIE 5.5") > -1) { // MS IE 5.5 ����
      response.setHeader("Content-Disposition", "filename=" + URLEncoder.encode(filename, "UTF-8") + ";");
    } else if (userAgent.indexOf("MSIE") > -1) { // MS IE (������ 6.x �̻� ����)
      response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(filename, "UTF-8") + ";");
    } else { // ������ �����
      response.setHeader("Content-Disposition", "attachment; filename=" + new String(filename.getBytes(CHARSET), "latin1") + ";");
    }

    // ���� ����� ��Ȯ���� �������� �ƿ� �������� �ʴ´�.
    if (filesize > 0) {
      response.setHeader("Content-Length", "" + filesize);
    }
    
    BufferedInputStream fin = null;
    BufferedOutputStream outs = null;
    
    try {
      fin = new BufferedInputStream(is);
      outs = new BufferedOutputStream(response.getOutputStream());
      int read = 0;

      while ((read = fin.read(buffer)) != -1) {
        outs.write(buffer, 0, read);
      }
    } finally {
      try { outs.close();	} catch (Exception ex1) {;}
      try { fin.close();	} catch (Exception ex2) {;}
    }
    return out;
  }
}