package com.sun.tools.javac.transition;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.sun.tools.javac.transition.nosql.MongoUtils;

public class Log2NoSql implements Process {

	private Mongo mg = null;
	private DBCollection collection;
	private String hash;

	public void init() {
		collection = MongoUtils.getCollection();
	}

	public void print(String str) {
	    DBObject o;
		if (str.startsWith("class")) {
			o = new BasicDBObject();
			hash = String.valueOf(str.hashCode());
			o.put("classUrl", hash);
			collection.insert(o);
		} else if (str.startsWith("func")) {
			o = new BasicDBObject();
			o.put(hash, str);
			collection.insert(o);
		} else if (str.startsWith("block")) {
			o = new BasicDBObject();
			o.put(hash, str);
			collection.insert(o);
		} else if (str.startsWith("variables")) {
			o = new BasicDBObject();
			o.put(hash, str);
			collection.insert(o);
		}
	}

	public void destory() {
		if (mg != null)
			mg.close();
		mg = null;
		collection = null;
		System.gc();

	}

}
