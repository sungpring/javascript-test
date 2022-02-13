package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Queue;

public class Beak_20220213_2667 {
	
	private static int dx[] = {0,0,1,-1};
	private static int dy[] = {1,-1,0,0}; //static 
	private static int[] aparts = new int [25*25];
	private static int n;
	private static int apartNum = 0; //아파트 단지 번호의 수
    private static boolean[][] visited = new boolean[25][25]; //방문여부
    private static int[][] map = new int[25][25]; //지도
    //25 라고 지정해준 것은 25개가 map 의 max 이므로

	public static void main(String[] args) throws NumberFormatException, IOException {
		//https://www.acmicpc.net/problem/2667
		//https://n1tjrgns.tistory.com/245 - 참조
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		n = Integer.parseInt(br.readLine());
		
		map = new int[n][n]; // 초기값  0 0 0 0 0...
		visited = new boolean[n][n]; // 초기값 false false false...
		
		for(int i = 0; i<n; i++) { //i는 세로
			String input = br.readLine();
			for(int j = 0; j<n; j++) { // j는 가로
				map[i][j] = input.charAt(j)-'0'; // -0 을 해줘야 문자열이 숫자로 반환된다.
			}
		}
		
		for(int i = 0; i<n; i++) { 
			for(int j = 0; j<n; j++) { 
				if(visited[i][j] != true && map[i][j] != 0) {
					bfs(i,j);
					apartNum++;
				}
			}
		}
		
		Arrays.sort(aparts);
		System.out.println(apartNum);
		
		for(int i =0; i<aparts.length; i++) {
			if(aparts[i] != 0) System.out.println(aparts[i]);
		}

	}
	
	//dfs 가 코드길이는 짧고 시간이 짧으나 메모리가 더 많이 소모되고
	//bfs 가 코드길이는 길고 시간은 기나 메모리가 작게 소모된다.
	
	private static void dfs(int x, int y) {
		visited[x][y] = true;
		aparts[apartNum]++;
		for(int i=0; i<4; i++) {
			int xNew = x - dx[i];
			int yNew = y - dy[i];
			if(xNew >= 0 && yNew >= 0 && xNew<n && yNew<n) {
				if(visited[xNew][yNew] == false && map[xNew][yNew] == 1) {
					dfs(xNew,yNew);
				}
			}
		}
	}
	
	private static void bfs(int x, int y) {
		Queue<int[]> que = new LinkedList<int[]>();
		que.add(new int[] {x,y});
		visited[x][y] = true;
		aparts[apartNum]++;
		while(!que.isEmpty()) {
			int xQue=que.peek()[0];
			int yQue=que.peek()[1];
			que.poll();
			for(int i=0; i<4; i++) {
				int xNew = xQue - dx[i];
				int yNew = yQue - dy[i];
				if(xNew >= 0 && yNew >=0 && xNew<n && yNew<n) {
					if(visited[xNew][yNew] == false && map[xNew][yNew] == 1) {
						que.add(new int[] {xNew,yNew});
						visited[xNew][yNew] = true;
						aparts[apartNum]++;
					}
				}
			}
		}
	}

}
