package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;

public class Beak_20220204_23901 {
	
	//https://www.acmicpc.net/problem/23901

	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int testCase = Integer.parseInt(br.readLine());
		
		ArrayList<Integer> result = new ArrayList<>();
		
		for(int i=0; i<testCase; i++) {
			int cnt = 0;
			int numOfMountain= Integer.parseInt(br.readLine());
			if(numOfMountain<3) {
				result.add(cnt);
				break;
			}
			int[] mountainArr = Arrays.stream(br.readLine().split(" ")).mapToInt(Integer::parseInt).toArray();
			for(int j=0; j<numOfMountain-2; j++) {
				if(mountainArr[j]<mountainArr[j+1] && mountainArr[j+1]>mountainArr[j+2]) {
					cnt++;
				}
			}
			result.add(cnt);
		}
		
		int num = 0;
		for(int r:result) {
			System.out.println("Case #"+(num+=1)+": "+r);
		}
	}
}
