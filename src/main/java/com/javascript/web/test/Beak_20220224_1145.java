package com.javascript.web.test;

import java.util.Scanner;

public class Beak_20220224_1145 {

	public static void main(String[] args) {
		//https://www.acmicpc.net/problem/1145
		//https://yeoeun-ji.tistory.com/32 - copy
		Scanner s= new Scanner(System.in);
		
		int arr[]= new int[5];
		int cnt=0;
		int ret=1;
		
		for(int i=0;i<5;i++) {
			arr[i]=s.nextInt();
		}
		
		
		while(true) {
			cnt=0;
			
			for(int i=0;i<5;i++) {
				if( ret % arr[i] == 0 ) {
					cnt++; // cnt 가 총 3개거나 그 이상이 되어야 while문이 멈춘다. 멈추기 전까지는 ret 에 +1을 계속 돌려주어
					// arr 배열에 담긴 값으로 계속 나누어준다. 그렇게 나누어진 값의 몫 0 이 3개가 넘을 때는 while 문을 멈추고 
					//ret 을 출력하여 그 값늘 보낸다.
				}
			}
			
			if(cnt>=3) {break;}
			ret++;		
		}

		System.out.println(ret);

	}

}
