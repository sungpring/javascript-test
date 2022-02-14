package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Beak_20220213_1012 {
	
	private static int[] dx = {0,0,1,-1};
	private static int[] dy = {1,-1,0,0};
	
	private static int testCaseNum = 0;
	private static int[] testCaseNumArr = new int[50];
	private static int bugNum = 0;
	
	private static int mapVertical = 0;
	private static int mapHori = 0;
	private static int mapCount = 0;
	
	private static int[][] map = new int [50][50];
	private static boolean[][] checked = new boolean [50][50];
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		ArrayList<Integer> resultList = new ArrayList<>();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		testCaseNum=Integer.parseInt(br.readLine());
		if(testCaseNum != 0) {
			
			for(int i=0; i<testCaseNum; i++) {
				
				String[] str=br.readLine().split(" ");
				mapVertical = Integer.parseInt(str[1]);
				mapHori = Integer.parseInt(str[0]); 
				mapCount = Integer.parseInt(str[2]);
				if(mapVertical == 0 || mapHori == 0 || mapCount == 0) {
					resultList.add(0);
				}else {
					map = new int [mapVertical][mapHori]; // 10 8 17 로 들어오면 10이 가로 8이 세로임. 고로 세로죽[8]가로축[10] 이 되어야함
					checked  = new boolean [mapVertical][mapHori];
					
					testCaseNumArr = new int[50];
					bugNum = 0;
					
					for(int j=0; j<mapCount; j++) {
						String[] bugPlace=br.readLine().split(" ");
						map[Integer.parseInt(bugPlace[1])][Integer.parseInt(bugPlace[0])] = 1;
					}
					
					for(int j=0; j<mapVertical; j++) { //세로
						for(int k=0; k<mapHori; k++) { //가로
							if(checked[j][k] == false && map[j][k] == 1) {
								dfs(j,k);
								bugNum++;
							}
						}
					}
					
					int resultCnt = 0;
					
					for(int j=0; j<testCaseNumArr.length; j++) {
						if(testCaseNumArr[j] != 0) resultCnt++;
					}
					resultList.add(resultCnt);
				}
			}
			
			for(int i=0; i<resultList.size(); i++) {
				System.out.println(resultList.get(i));
			}
		}else {
			System.out.println(0);
		}
	}
	
	private static void dfs(int x, int y) {
		testCaseNumArr[bugNum]++;
		checked[x][y] = true;
		for(int i=0; i<4; i++) {
			int xNew=x-dx[i];
			int yNew=y-dy[i];
			if(xNew>=0 && yNew>=0 && xNew < mapVertical && yNew < mapHori) {
				if(checked[xNew][yNew] == false && map[xNew][yNew] == 1) {
					dfs(xNew,yNew);
				}
			}
		}
		
	}

}
