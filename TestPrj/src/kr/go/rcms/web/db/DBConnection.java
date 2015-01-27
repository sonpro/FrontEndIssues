package kr.go.rcms.web.db;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnection {
	
	private Connection conn;
	private java.lang.String caller = "unknown";

	/*
	 * DBConnection ������ �ּ�.
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
	 * DBConnection ������ �ּ�.
	 */
	public DBConnection(Object callerClass) throws Exception {
		
		this();
		if ( callerClass != null ) {
			caller = callerClass.getClass().getName();		
		}
	}

	/**
	 * DBConnection ������ �ּ�.
	 */
	public DBConnection(String callerClass) throws Exception {
		
		this();
		if ( callerClass != null ) {
			caller = callerClass;
		}
	}

	/**
	 * Ŀ�ؼ��� ���� �޼ҵ�
	 * �ۼ� ��¥: (2002-01-19 ���� 1:45:30)
	 */
	public void close() {
		if ( conn != null ) try{conn.close();}catch(Exception e){}
		conn = null;
	}

	/**
	 * gc�� �Ͼ�� ȣ��Ǵ� �޼ҵ�
	 * Ŀ�ؼ��� �Ȳ����ִٸ�, �����ְ�, �α��Ѵ�.
	 * �ۼ� ��¥: (2002-01-19 ���� 2:23:19)
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
	 * �޼ҵ� ������ �����Ͻʽÿ�.
	 * �ۼ� ��¥: (2002-01-19 ���� 1:45:21)
	 */
	public Connection getConnection()  throws Exception {
		if ( conn == null ) throw new Exception("������ Connection�� �����ϴ� . " );
		return conn;
	}
	
}