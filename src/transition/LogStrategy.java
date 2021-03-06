package com.sun.tools.javac.transition;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class LogStrategy {

	private static Process logStrategy = null;

	private static boolean iFlag = true;

	private static boolean dFlag = true;

	public static void init() {
		if (!iFlag)
			return;
		LogStrategy.logStrategy.init();
		LogStrategy.iFlag = false;
	}

	public static void print(String s) {
		if(s==null||s.equals(""))
			return;
		LogStrategy.setLogStrategy();
		LogStrategy.init();
		LogStrategy.logStrategy.print(s);
		//LogStrategy.destory();
	}

	public static void destory() {
		if (!dFlag)
			return;
		LogStrategy.logStrategy.destory();
		System.out.println("logStrategy.destory()");

	}

	public static void setLogStrategy() {
		if (LogStrategy.logStrategy != null)
			return;
		Properties prop = new Properties();
		try {
			prop.load(new FileInputStream("logStrategy.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String logStrategy = prop.getProperty("logStrategy");
		if ("file".equals(logStrategy)) {
			LogStrategy.logStrategy = new Log2File();
		} else if ("sql".equals(logStrategy)) {
			LogStrategy.logStrategy = new Log2Sql();
		}else if ("nosql".equals(logStrategy)){
			LogStrategy.logStrategy = new Log2NoSql();
		}
		
	}

}
