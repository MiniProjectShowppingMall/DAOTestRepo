package test3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	private Context init;

	public DAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			System.err.println("dataSource 불러오기 예외 발생 : " + e.getMessage());
		}
	}

	public String test() {
		String sql = "select banner from v$version";
		String answer = null;
		try {
			setConn(getDs().getConnection());
			setPstmt(getConn().prepareStatement(sql));
			setRs(getPstmt().executeQuery());
			while (getRs().next()) {
				answer = getRs().getString(1);
			}
		} catch (SQLException e) {
			System.err.println("목록 실패 : " + e.getMessage());
		} finally {
			close();
		}
		return answer;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public PreparedStatement getPstmt() {
		return pstmt;
	}

	public void setPstmt(PreparedStatement pstmt) {
		this.pstmt = pstmt;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	public DataSource getDs() {
		return ds;
	}

	public void setDs(DataSource ds) {
		this.ds = ds;
	}

	public Context getInit() {
		return init;
	}

	public void setInit(Context init) {
		this.init = init;
	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
		}
	}
}
