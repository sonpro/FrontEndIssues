package kr.go.rcms.web.db;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnection {
	
	private Connection conn;
	private java.lang.String caller = "unknown";

	/*
	 * DBConnection 생성자 주석.
	 */
	private DBConnection() throws Exception {
		
		super();

		Context ctx = null;
		DataSource ds = null;
	
		try {
			ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("jdbc/pt");
			conn = ds.getConnection(); 
		} catch(Exception e) {
			System.out.println("DBConnection ERR : "+ e.toString());
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * DBConnection 생성자 주석.
	 */
	public DBConnection(Object callerClass) throws Exception {
		
		this();
		if ( callerClass != null ) {
			caller = callerClass.getClass().getName();		
		}
	}

	/**
	 * DBConnection 생성자 주석.
	 */
	public DBConnection(String callerClass) throws Exception {
		
		this();
		if ( callerClass != null ) {
			caller = callerClass;
		}
	}

	/**
	 * 커넥션을 끊는 메소드
	 * 작성 날짜: (2002-01-19 오후 1:45:30)
	 */
	public void close() {
		if ( conn != null ) try{conn.close();}catch(Exception e){}
		conn = null;
	}

	/**
	 * gc가 일어날때 호출되는 메소드
	 * 커넥션이 안끊겨있다면, 끊어주고, 로깅한다.
	 * 작성 날짜: (2002-01-19 오후 2:23:19)
	 */
	@Override
	public void finalize() {
		
		if(conn != null) {
			close();
            System.err.println("***************************************************************");
            System.err.println(" DBPOOL ERROR connection was not closed at :(" + caller + ")");
            System.err.println("***************************************************************");
        }

	}

	/**
	 * 메소드 설명을 삽입하십시오.
	 * 작성 날짜: (2002-01-19 오후 1:45:21)
	 */
	public Connection getConnection()  throws Exception {
		if ( conn == null ) throw new Exception("생성된 Connection이 없습니다 . " );
		return conn;
	}
	
}