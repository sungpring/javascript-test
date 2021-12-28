package com.javascript.web.test;

import java.util.Scanner;

public class Test_20211228 {

	public static void main(String[] args) {
		Scanner number = new Scanner(System.in);
		 
		int numLength = number.nextInt();
		String str = number.next();
		
		
		number.close();
		
		int sum = 0;
        
		for(int i = 0; i < numLength; i++) {
			sum += str.charAt(i)-'0'; //-0의 이유는 아스키코드 48임  charAt 으로 변환된 숫자는 아스키코드로 나옴 거기서 48을 빼줘야 내가 원하는 정수형 값이 나온다.
		}
		System.out.print(sum);
	}

}
