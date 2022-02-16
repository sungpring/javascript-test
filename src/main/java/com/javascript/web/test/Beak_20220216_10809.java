package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Beak_20220216_10809 {

	public static void main(String[] args) throws IOException {
		
		ArrayList<Integer> intArr = new ArrayList<>();
		String alphabet = "abcdefghijklmnopqrstuvwxyz";
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String str=br.readLine();
		/*
		String patternStr = "^[a-z]*$";
		Pattern pattern = Pattern.compile(patternStr); //영문자만
        String val = "abcdef"; //대상문자열
		
        Matcher matcher = pattern.matcher(val);
        matcher.start(val);
        */
		for(int i=0; i<alphabet.length(); i++) {
			String alphaStr = Character.toString(alphabet.charAt(i));
			System.out.print(str.indexOf(alphaStr)+" ");
		}
		
		
	}

}
