package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Beak_20220217_11726 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		//https://www.acmicpc.net/problem/11726
		 BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		 int getNum=Integer.parseInt(br.readLine());
		 
		 int[] dp = new int[getNum+2];
		 dp[1] = 1;
	     dp[2] = 2;
		 for(int i=3; i<=getNum; i++) {
			 dp[i] = (dp[i-1]+ dp[i-2]);
			 dp[i] %= 10007;
		 }
	
		 
		 System.out.println(dp[getNum]%10007);
		
		 
		 //System.out.println(result);
		 /*	n은 가로
		  * 2*n 크기의 직사각형을 1×2, 2×1 타일로 채우는 방법의 수를 구하는 프로그램을 작성하시오.
		  * 2*1 => 2*1 (1개)
		  * 2*2 => 2*1 2*1 / 1*2 1*2 (2개) 
		  * 2*3 => 2*1 2*1 2*1 / 1*2 1*2 2*1 / 2*1 1*2 1*2 (3개) 
		  * 2*4 => (5개) 
		  * 2*5 => (8개) 
		  * 2*6 => (13) 
		  * 2*7 => (21) 
		  * 
		  */
	}

}
