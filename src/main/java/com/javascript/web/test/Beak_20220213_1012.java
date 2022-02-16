package com.javascript.web.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class Beak_20220213_1012 {
	
	private static int[] dx = {0,0,1,-1};
	private static int[] dy = {1,-1,0,0};
	
	private static int[] testCaseNumArr;
	private static int bugNum;
	
	private static int mapVertical;
	private static int mapHori;
	private static int mapCount;
	
	private static int[][] map;
	private static boolean[][] checked;
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		ArrayList<Integer> resultList = new ArrayList<>();
		
		Scanner sc = new Scanner(System.in);
		int testCaseNum=sc.nextInt();
		
		for(int i=0; i<testCaseNum; i++) {
			
			mapHori = sc.nextInt();
			mapVertical = sc.nextInt();
			mapCount = sc.nextInt();
			
			map = new int [mapVertical][mapHori]; // 10 8 17 로 들어오면 10이 가로 8이 세로임. 고로 세로죽[8]가로축[10] 이 되어야함
			checked  = new boolean [mapVertical][mapHori];
			
			testCaseNumArr = new int[mapVertical*mapHori];
			bugNum = 0;
			
			for(int j=0; j<mapCount; j++) {
				int last=sc.nextInt();
				int first=sc.nextInt();
				map[first][last] = 1;
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
		
		for(int i=0; i<resultList.size(); i++) {
			System.out.println(resultList.get(i));
		}
		sc.close();
	}
	
	private static void dfs(int x, int y) {
		//System.out.println(bugNum);
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
