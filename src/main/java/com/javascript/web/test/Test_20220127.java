package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test_20220127 {
	public static void main(String[] args) throws IOException {
		//https://www.acmicpc.net/problem/1652
		/*
		 * 5
			....X
			..XX.
			.....
			.XX..
			X....
			
			내가 풀려는 논리
			
			-가로-
			1.ArrayList<String> arrStr  선언
			2.첫번째 ....X => String1 에 저장
			3.String1 을 정규식으로 .. 이 두개 있는 곳이 있다면 arrStr 에 1 을 넣어줌
			4.int aFrequency = Collections.frequency(list, 1); 로 숫자 1 몇개 있는지 => 이것이 가로에 누울 수 있는 숫자개수
			
			-세로-
			여러개의 문자열 리스트에서 첫번째만 뽑고
			여러개의 문자열 리스트에서 두번째만 뽑고 
		 */
		
		/*
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String strNum=br.readLine();
		Integer number = Integer.parseInt(strNum);
		ArrayList<String> arrStrWidth = new ArrayList<>();
		ArrayList<String> arrStrHeight = new ArrayList<>();
		
		// 가로
		for(int i=0; i<number; i++) {
			arrStrWidth.add(br.readLine());
		}
		
		// 세로 //첫번째줄 1 두번째줄 1 ...다섯번째 줄 1
		for(int i=0; i<number; i++) {
			String arrVal = "";
			for(int j=0; j<number; j++) {
				arrVal+=arrStrWidth.get(j).charAt(i);
			}
			arrStrHeight.add(arrVal);
		}
		
		ArrayList<Boolean> arrBoolWidth = new ArrayList<>();
		ArrayList<Boolean> arrBoolHeight = new ArrayList<>();
		
		for(int i=0; i<arrStrWidth.size(); i++) {
			Pattern pt = Pattern.compile("(\\.{2,})");
			Matcher matWidth = pt.matcher(arrStrWidth.get(i));
			Matcher matHeight = pt.matcher(arrStrHeight.get(i));
			arrBoolWidth.add(matWidth.find());
			arrBoolHeight.add(matHeight.find());
		}
		
		int firstNum = Collections.frequency(arrBoolWidth, true);
		int secondNum = Collections.frequency(arrBoolHeight, true);
		
		System.out.println(firstNum+" "+secondNum);
		*/
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String strNum=br.readLine();
		Pattern pt = Pattern.compile("(\\.{2,})");
		Matcher matWidth = pt.matcher(strNum);
		int i=matWidth.regionEnd();
		int j = matWidth.regionStart();
		System.out.println(i+""+j);
	}
}
