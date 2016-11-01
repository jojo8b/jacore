package com.sun.tools.javac.transition;

import java.sql.Connection;
import java.util.Calendar;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import com.sun.tools.javac.transition.sql.JdbcUtils;

public class Log2Sql implements Process {

	private static Connection conn = null;
	private static PreparedStatement ps = null;
	@Override
	public void init() {
		if(conn!=null)
			return;
		try {
			conn = JdbcUtils.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void print(String str) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSSSSSSS");
			String sql = "insert into LogInfo(logInfo,timestamp) value(?,?)";
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			ps.setString(1, str);
			ps.setString(2, sdf.format(new Date()));
			ps.executeUpdate();
			conn.commit();
			conn.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void destory() {

	}

}
