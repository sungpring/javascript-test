package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
//import java.util.Collections;
//import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Beak_20220216_1157 {

	public static void main(String[] args) throws IOException {
		//https://www.acmicpc.net/problem/1157
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String str=br.readLine();
	
		String strBig = "";
		
		for(int i=0; i<str.length(); i++) {
			char strChar=str.charAt(i);
			if ( 97 <= strChar && strChar <= 122 ) {
				strBig +=  Character.toString((char) (strChar-32));
			}else {
				strBig +=  Character.toString(strChar);
			}
		}
		
		Map<String,Integer> resultMap = new HashMap<>();
		
		for(int i=0; i<strBig.length(); i++) {
			resultMap.put(Character.toString(strBig.charAt(i)), countStr(strBig, Character.toString(strBig.charAt(i))));
		}
		
		Entry<String, Integer> maxEntry = null;
		Entry<String, Integer> maxEntryCompare = null;
		
		for (Map.Entry<String, Integer> entry : resultMap.entrySet()) {
		    if (maxEntry == null || entry.getValue().compareTo(maxEntry.getValue()) > 0) {
		    	maxEntry = entry; 
		    }else if(entry.getValue().compareTo(maxEntry.getValue()) == 0){
		    	maxEntryCompare = entry;
		    }
		}
		
		//Entry<String, Integer> maxEntry = Collections.max(resultMap.entrySet(), comparator);
		if(maxEntryCompare != null && maxEntryCompare.getValue() == maxEntry.getValue()) {
			System.out.println("?");
		}else {
			System.out.println(maxEntry.getKey());
		}
		
	}
	
	private static int countStr(String str, String alpha) {
		return  str.length() - str.replace(String.valueOf(alpha), "").length();
	}
	/*
	public static Comparator<Entry<String, Integer>> comparator = new Comparator<Entry<String, Integer>>() {
		@Override
		public int compare(Entry<String, Integer> e1, Entry<String, Integer> e2) {
			return e1.getValue().compareTo(e2.getValue());
		}
	};
	*/
}
