package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Beak_20220217_9095 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		//https://www.acmicpc.net/problem/9095 다이나믹 프로그래밍
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int testCaseNum=Integer.parseInt(br.readLine());
		
		int[] dp = new int[11]; // 11 까지이다. 1부터 ~ 11보자 작은 숫자 입력받을거임
		dp[1]=1;
		dp[2]=2;
		dp[3]=4;
		
		for(int i=4; i<11; i++) {
			dp[i] = dp[i-1] + dp[i-2] + dp[i-3];
		}
		
		for(int i=0; i<testCaseNum; i++) {
			int testNum=Integer.parseInt(br.readLine());
			System.out.println(dp[testNum]);
		}

	}

}
