package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Scanner;

public class Beak_20220303_1811 {
	
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		LinkedList<String[]> resultStrList = new LinkedList<>();
		
		String line;
		while((line=br.readLine())!= null){
			if(line.equals("#")) break;
            String[] twoPart = line.split(" ");
			resultStrList.add(compareWith(twoPart[0],twoPart[1]));
        }    
		
		for(int i=0; i<resultStrList.size(); i++) {
			String[] result=resultStrList.get(i);
			System.out.println(""+result[0]+": "+result[1]+" black, "+result[2]+" grey, "+result[3]+" white");
		}
	}
	
	public static String[] compareWith(String group1, String group2) {
		
		String[] resultArr = new String[4];
		
		LinkedList<String> group1List = new LinkedList<>(Arrays.asList( group1.split("") ));
		LinkedList<String> group2List = new LinkedList<>(Arrays.asList( group2.split("") )); 
		
		int blackCnt = 0;
		int greyCnt = 0; 
		int whiteCnt = 0;
		
		Map<String,String> resultBGWMap = new HashMap<>(); //Spelling , Color
		
		conti:for(int i=0; i<group1List.size(); i++) {
			if( group1List.get(i).equals( group2List.get(i) )) { //black
				resultBGWMap.put(group1List.get(i), "black");
				blackCnt++;
				continue conti;
			}
			
			if(i != group1List.size()-1) {
				if( group1List.get(i).equals( group2List.get(i+1) )) { //grey
					resultBGWMap.put(group1List.get(i), "grey");
					greyCnt++;
					continue conti;
				}
			}
			// BCED BCBCAA ACBC
			// ABCD ABABAA ABCD
			if(i != 0) {
				if( group1List.get(i).equals( group2List.get(i-1) )) { //grey
					resultBGWMap.put(group1List.get(i), "grey");
					greyCnt++;
					continue conti;
				}
			}
			
			Loop:for(int j=0; j<group1List.size(); j++) { //white
				if(group1List.get(i).equals(group2List.get(j)) && resultBGWMap.get(group1List.get(i)) == null && resultBGWMap.get(group1List.get(i)) != "white") {
					resultBGWMap.put(group1List.get(i), "white");
					whiteCnt++;
					break Loop;
				}
			}
		}
		resultArr[0] = group2;
		resultArr[1] = blackCnt+"";
		resultArr[2] = greyCnt+"";
		resultArr[3] = whiteCnt+"";
		
		return resultArr;
	}
}
