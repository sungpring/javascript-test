package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

public class Beak_20220224_1009 {

	public static void main(String[] args) throws IOException {
		//https://www.acmicpc.net/problem/1009
		//https://blog.itcode.dev/posts/2021/06/09/a1009// - copy
		 BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int T = Integer.parseInt(reader.readLine());
        
        for (int i = 0; i < T; i++)
        {
            String[] temp = reader.readLine().split(" ");
            
            int a = Integer.parseInt(temp[0]);
            int b = Integer.parseInt(temp[1]);
            
            int result = 1;
            
            for (int j = 1; j <= b; j++)
            {
                result = result * a % 10; //key 공식
            }
            
            // 0일 경우 10으로 처리
            result = result == 0 ? 10 : result;
            
            System.out.println(result);
            /*구태여 모든 승수를 계산할 필요 없고 끝자리만 나올수 있게 %10 을하여 나머지를 구한뒤 그것을 값으로 내보내면 된다.*/
        }
        
        reader.close();
		/*
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int testCaseNum = Integer.parseInt(br.readLine());
		
		ArrayList<Integer[]> listObject = new ArrayList<>();
		ArrayList<String> listResult = new ArrayList<>();
	
		for(int i=0; i<testCaseNum; i++) {
			Integer[] intArry = Arrays.asList((br.readLine()).split(" ")).stream().map(Integer::parseInt).toArray(Integer[]::new);
			BigDecimal result = new BigDecimal((long)Math.pow(intArry[0], intArry[1]));
			System.out.println(result);
			listResult.add((result.toString()).substring(result.toString().length()-1)); //
		}
		
		for(int i=0; i<listResult.size(); i++) {
			System.out.println(listResult.get(i));
		}
		*/
		//BigDecimal result = new BigDecimal((long)Math.pow(99, 999999));
        //System.out.println("5의 제곱은 : "+result.toBigInteger());
        
        /*
         * BigInteger product = 1;
			BigInteger a = 65;
			
			for (int i = 0; i < 331; i++) {
			    product = BigInteger.Multiply(product, a);
			}
			This should re
         * */
	}

}
