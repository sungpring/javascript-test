package com.javascript.web.test;

import java.util.Scanner;

public class Beak_20220216_11720 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int first=sc.nextInt();
		String second = sc.next();
		
		int result=0;
		for(int i=0; i<first; i++) {
			int num=second.charAt(i)-'0';
			result+=num;
		}
		System.out.println(result);
	}

}
