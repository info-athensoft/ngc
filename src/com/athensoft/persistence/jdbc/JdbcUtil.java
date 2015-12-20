package com.athensoft.persistence.jdbc;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.log4j.Logger;


public class JdbcUtil {
	
	private static final Logger logger = Logger.getLogger(JdbcUtil.class);

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public Connection getConn() {
		try {
	
			InputStream is = JdbcUtil.class.getResourceAsStream("mysqlconfig.properties");
			
			Properties pro = new Properties();
			pro.load(is);
			is.close();

			
			String jdbcDriver = pro.getProperty("jdbc.driverClassName");
			String url = pro.getProperty("jdbc.url");
			String user = pro.getProperty("jdbc.username");
			String password = pro.getProperty("jdbc.password");
			
			logger.debug("jdbcDriver="+jdbcDriver);
			logger.debug("url="+url);
			logger.debug("user="+user);
			logger.debug("password="+password);
			
			Class.forName(jdbcDriver);
			try {
				conn = DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}


	public int count(String tablename) {

		String sql = "select count(*) as Total from " + tablename;
		int i = 0;
		try {
			pstmt = this.getConn().prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				i = rs.getInt("Total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
			close(conn);
		}
		return i;
	}

	public void close(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void close(PreparedStatement pstmt) {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void close(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
