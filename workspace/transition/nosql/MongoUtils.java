package com.sun.tools.javac.transition.nosql;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.Properties;

import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.mongodb.MongoException;

public class MongoUtils {
	private String usr;
	private String pwd;
	private static int port;
	private static String url;
	private static Mongo mg = null;
	private static DBCollection collection;

	public static void init() {
		Properties prop = new Properties();
		try {
			prop.load(new FileInputStream("sql.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		port = Integer.parseInt(prop.getProperty("nosqlPort"));
		url = prop.getProperty("nosqlUrl");
	}

	public static DBCollection getCollection() {
		if (port == 0 || url.equals("") || url == null)
			init();
		try {
			mg = new Mongo(url, port);
			collection = mg.getDB("javac").getCollection("classes");
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (MongoException e) {
			e.printStackTrace();
		}
		return collection;
	}

}
