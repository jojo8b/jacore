package com.sun.tools.javac.transition;

public class Log implements Process {

	

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public void print(String s) {
		System.out.println("log:"+s);

	}
	
	
	@Override
	public void destory() {
		// TODO Auto-generated method stub
		
	}

}
