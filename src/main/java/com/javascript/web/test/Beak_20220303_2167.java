package com.javascript.web.test;

import java.io.IOException;
import java.util.Scanner;



public class Beak_20220303_2167 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		int m = sc.nextInt();
		
		int[][] map = new int[n][m];
		
		for(int i=0; i<n; i++) {
			for(int j=0; j<m; j++) {
				map[i][j] = sc.nextInt();
			}
		}
		
		int testCaseNum =  sc.nextInt();
		int[] result = new int[testCaseNum];
		
		for(int i=0; i<testCaseNum; i++) {
			int firstXNum=sc.nextInt();
			int firstYNum=sc.nextInt();
			int secondXNum=sc.nextInt();
			int secondYNum=sc.nextInt();
			
			int cnt = 0;
			
			for(int j=firstXNum-1; j<=secondXNum-1; j++) {
				for(int k=firstYNum-1; k<=secondYNum-1; k++) {
					cnt+= map[j][k];
				}
			}
			result[i]=cnt;
		}
		
		for(int i=0; i<testCaseNum; i++) {
			System.out.println(result[i]);
		}
		
		/* 메모리 초과
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		Integer[] firstNum=Arrays.asList((br.readLine()).split(" ")).stream().map(Integer::parseInt).toArray(Integer[]::new);
		int[][] map = new int[firstNum[0]][firstNum[1]];
		
		for(int i=0; i<firstNum[0]; i++) {
			Integer[] secondNum=Arrays.asList((br.readLine()).split(" ")).stream().map(Integer::parseInt).toArray(Integer[]::new);
			for(int j=0; j<firstNum[1]; j++) {
				map[i][j] = secondNum[j];
			}
		}
		
		Integer testCaseNum = Integer.parseInt(br.readLine());
		ArrayList<Integer> resultArr = new ArrayList<>();
		
		for(int i=0; i<testCaseNum; i++) {
			Integer cnt = 0;
			Integer[] thirdNum = Arrays.asList((br.readLine()).split(" ")).stream().map(Integer::parseInt).toArray(Integer[]::new);
			for(int j=thirdNum[0]-1; j<=thirdNum[2]-1; j++) {
				for(int k=thirdNum[1]-1; k<=thirdNum[3]-1; k++) {
					cnt+=map[j][k];
				}
			}
			resultArr.add(cnt);
		}
		
		for(int i=0; i<testCaseNum; i++) {
			System.out.println(resultArr.get(i));
		}
		*/
	}

}
