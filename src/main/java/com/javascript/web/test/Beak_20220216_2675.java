package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

public class Beak_20220216_2675 {

	public static void main(String[] args) throws IOException {
		//https://www.acmicpc.net/problem/2675
		
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String str=br.readLine();
		int testCaseNum=Integer.parseInt(str);
		
		String[] strArrResult = new String[testCaseNum];
		
		for(int i=0; i<testCaseNum; i++) {
			String[] strArr=br.readLine().split(" ");
			int num=Integer.parseInt(strArr[0]);
			String[] strArr2=strArr[1].split("");
			for(int j=0; j<strArr2.length; j++) {
				
				if(strArrResult[i]==null) {
					strArrResult[i]=strArr2[j].repeat(num);
				}else {
					strArrResult[i]+=strArr2[j].repeat(num);
				}
			}
			/*
			 * List<String> strArr2=Arrays.asList(strArr[1].split(""));
			Stream<String> stream = strArr2.stream();
			System.out.println();
			stream.forEach(target -> strArrResult[i]+=target.repeat(num));
			 */
		}
		for(String result : strArrResult) {
			System.out.println(result);
		}
	}

}
