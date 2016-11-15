package com.sun.tools.javac.transition;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Log2File implements Process {

	private static File file = null;
	private static FileWriter fw = null;

	@Override
	public void init() {
		if (file == null)
			file = new File("log.txt");
		if (fw == null)
			try {
				fw = new FileWriter(file);
			} catch (IOException e) {
				try {
					if (fw != null)
						fw.close();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();
			}
	}

	@Override
	public void print(String str) {
		try {
			if (fw == null)
				fw = new FileWriter(file);
			fw.append(str);
			fw.append("\n");
			fw.flush();
		} catch (IOException e) {
			try {
				fw.close();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

	@Override
	public void destory() {
		try {
			if (fw != null)
				fw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
