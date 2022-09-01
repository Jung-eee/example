package com.varxyz.ncs.util;

public class StringsUtilTest {

	public static void main(String[] args) {
		StringsUtil su = new StringsUtil();
		
		System.out.println(su.extractIntCharacters("av456"));
		
		System.out.println(su.extractIntCharacters("qef78d4"));
		
		System.out.println(su.extractNum("jhl125"));
		
		System.out.println(su.extractNum("jh"));
		
		
	}

}
