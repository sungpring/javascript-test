package com.javascript.web.test;

import java.io.IOException;
import java.util.Scanner;

public class Beak_20220216_1157 {

	public static void main(String[] args) throws IOException {
		//https://www.acmicpc.net/problem/1157
		//https://st-lab.tistory.com/64 - 참고
		
		Scanner in = new Scanner(System.in);
		 
		int[] arr = new int[26]; // 영문자의 개수는 26개임
		String s = in.next();
 
		for (int i = 0; i < s.length(); i++){
 
			if ('A' <= s.charAt(i) && s.charAt(i) <= 'Z') { // 대문자 범위
				arr[s.charAt(i) - 'A']++;	// 해당 인덱스의 값 1 증가
			}
    
			else {	// 소문자 범위
				arr[s.charAt(i) - 'a']++;
			}
		}
 
		
		int max = -1;
		char ch = '?';
 
		for (int i = 0; i < 26; i++) {
			if (arr[i] > max) {
				max = arr[i];
				ch = (char) (i + 65); // 대문자로 출력해야하므로 65를 더해준다.
			}
			else if (arr[i] == max) {
				ch = '?';
			}
		}
 
		System.out.print(ch);
		
		/*
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String str=br.readLine();
	
		//String strBig = "";
		Map<String,Integer> resultMap = new HashMap<>();
		
		for(int i=0; i<str.length(); i++) {
			char strChar=str.charAt(i);
			if ( 97 <= strChar && strChar <= 122 ) {
				String word =  Character.toString((char) (strChar-32));
				int count = resultMap.containsKey(word) ? resultMap.get(word) : 0;
				resultMap.put(word, count+1);
			}else {
				String word =  Character.toString(strChar);
				int count = resultMap.containsKey(word) ? resultMap.get(word) : 0;
				resultMap.put(word, count+1);
			}
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
		
		if(maxEntryCompare != null && maxEntryCompare.getValue() == maxEntry.getValue()) {
			System.out.println("?");
		}else {
			System.out.println(maxEntry.getKey());
		}
		*/
		/*
		for(int i=0; i<strBig.length(); i++) {
			resultMap.put(Character.toString(strBig.charAt(i)),
					strBig.length() - strBig.replace(String.valueOf(Character.toString(strBig.charAt(i))), "").length());
					//countStr(strBig, Character.toString(strBig.charAt(i)))); //str.length() - str.replace(String.valueOf(alpha), "").length();
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
		*/
	}
	
	
	/*
	public static Comparator<Entry<String, Integer>> comparator = new Comparator<Entry<String, Integer>>() {
		@Override
		public int compare(Entry<String, Integer> e1, Entry<String, Integer> e2) {
			return e1.getValue().compareTo(e2.getValue());
		}
	};
	private static int countStr(String str, String alpha) {
		return  str.length() - str.replace(String.valueOf(alpha), "").length();
	}
	*/
}
