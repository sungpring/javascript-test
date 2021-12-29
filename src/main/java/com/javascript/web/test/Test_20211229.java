package com.javascript.web.test;

import java.util.Scanner;

public class Test_20211229 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		//String str = strScan.next();
		
		int n = scan.nextInt();
		
		for(int i = 0; i < n; i++) {
			
			//int nInt = scan.nextInt();
			String scanStr = scan.next();	
			
			for(int j = 0; j < scanStr.length(); j++) {           
				for(int k = 0; k < n; k++) {	
					System.out.print(scanStr.charAt(j));
				}
			}
			
			System.out.println();
		}
		scan.close();
	}
}
