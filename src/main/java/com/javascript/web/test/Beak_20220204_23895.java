package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;

public class Beak_20220204_23895 {
	
	//https://www.acmicpc.net/problem/23895
	
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int testCaseStr = Integer.parseInt(br.readLine());
		
		ArrayList<Integer> result = new ArrayList<>();
		
		for(int i=0; i<testCaseStr; i++) {
			int[] limitCntNLimitDollor = Arrays.stream(br.readLine().split(" ")).mapToInt(Integer::parseInt).toArray();
			int[] limitHouse = Arrays.stream(br.readLine().split(" ")).mapToInt(Integer::parseInt).toArray();
			Arrays.sort(limitHouse); //정렬
			
			int cnt = 0;
			int cntNum = 0;
			
			for (int j : limitHouse) {
				cnt += j;
	            if(cnt>limitCntNLimitDollor[1]) {
	            	break;
	            }else{
	            	cntNum++;
	            }
	        }
			result.add(cntNum);
		}
		
		int num = 0;
		for(int r:result) {
			System.out.println("Case #"+(num+=1)+": "+r);
		}
	}
}

