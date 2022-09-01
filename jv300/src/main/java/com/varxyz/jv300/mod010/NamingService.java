package com.varxyz.jv300.mod010;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContextEvent;

public class NamingService {
	private static NamingService obj = new NamingService();
	private Map<String, Object> nameValueParis;
	
	private NamingService() {
		nameValueParis = new HashMap<String, Object>();
	}
	
	public static NamingService getInstance() {
		return obj;
	}
	public void setAttribute(String name, Object obj) {
		if (!nameValueParis.containsKey(name)) {
			nameValueParis.put(name, obj);
		}else {
			throw new IllegalArgumentException("This name," + name + ", is already in use");
			
		}
	}
	public Object getAttribute(String name) {
		return nameValueParis.get(name);
	}
	public void removeAttribute(String name) {
		nameValueParis.remove(name);
	}
}
