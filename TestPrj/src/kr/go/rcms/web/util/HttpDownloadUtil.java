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
 * 지경부 RCMS개발구축 프로젝트
 * @COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 * @File Name    : HttpDownloadUtil.java
 * @Package Name : kr.go.rcms.web.util
 * @author       : 
 * @Description  : 
 * @History      : 2012. 7. 17. 오전 10:27:55, 이재원, 최초이동
 *
 * </pre>
 **/
public class HttpDownloadUtil {

  /** 다운로드 버퍼 크기 */
  private static final int BUFFER_SIZE = 8192; // 8kb

  /** 문자 인코딩 */
  private static final String CHARSET = "euc-kr";
  
  /**
   * 생성자 - 객체 생성 불가
   */
  private HttpDownloadUtil() {
    // do nothing;
  }

  /**
   * 지정된 파일을 다운로드 한다.
   * 
   * @param request
   * @param response
   * @param file
   * @out	JSP내장객체 JspWriter(out로 선언되어 있음)
   * @pageContext	JSP내장객체 PageContext(pageContext로 선언되어 잇음)
   * 
   * @throws ServletException
   * @throws IOException
   */
  public static JspWriter download(HttpServletRequest request, HttpServletResponse response, File file, JspWriter out, PageContext pageContext) throws ServletException, IOException {
      return download(request, response, file, file.getName(), out, pageContext);
  }
  
  /**
   * 지정된 파일을 다운로드 한다.
   * 
   * @param request
   * @param response
   * @param file
   * @param fileNm 다운로드할 파일명
   * @out	JSP내장객체 JspWriter(out로 선언되어 있음)
   * @pageContext	JSP내장객체 PageContext(pageContext로 선언되어 잇음)
   * 
   * @throws ServletException
   * @throws IOException
   */
  public static JspWriter download(HttpServletRequest request, HttpServletResponse response, File file, String fileNm, JspWriter out, PageContext pageContext) throws ServletException, IOException {

    String mimetype = request.getSession().getServletContext().getMimeType(file.getName());

    if (file == null || !file.exists() || file.length() <= 0 || file.isDirectory()) {
      throw new IOException("잘못된 파일입니다.");
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
   * 해당 입력 스트림으로부터 오는 데이터를 다운로드 한다.
   * 
   * @param request
   * @param response
   * @param is		  입력 스트림
   * @param filename 파일 이름
   * @param filesize 파일 크기
   * @param mimetype MIME 타입 지정
   * @out	JSP내장객체 JspWriter(out로 선언되어 있음)
   * @pageContext	JSP내장객체 PageContext(pageContext로 선언되어 잇음)
   * 
   * @throws ServletException
   * @throws IOException
   */
  public static JspWriter download(HttpServletRequest request, HttpServletResponse response, InputStream is, String filename, long filesize, String mimetype, JspWriter out, PageContext pageContext) throws ServletException, IOException {
    String mime = mimetype;

    if (mimetype == null || mimetype.length() == 0) {
      mime = "application/octet-stream;";
    }
    
    out.clear();                    // 이거 자바로 밀어넣자.
    out = pageContext.pushBody();

    byte[] buffer = new byte[BUFFER_SIZE];

    response.setContentType(mime + "; charset=" + CHARSET);

    String userAgent = request.getHeader("User-Agent");
    
    if (userAgent.indexOf("MSIE 5.5") > -1) { // MS IE 5.5 이하
      response.setHeader("Content-Disposition", "filename=" + URLEncoder.encode(filename, "UTF-8") + ";");
    } else if (userAgent.indexOf("MSIE") > -1) { // MS IE (보통은 6.x 이상 가정)
      response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(filename, "UTF-8") + ";");
    } else { // 모질라나 오페라
      response.setHeader("Content-Disposition", "attachment; filename=" + new String(filename.getBytes(CHARSET), "latin1") + ";");
    }

    // 파일 사이즈가 정확하지 않을때는 아예 지정하지 않는다.
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