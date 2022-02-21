package com.javascript.web.test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.StringTokenizer;

public class Beak_20220220_11723 {
	
	//https://github.com/foreverfl/ProblemSolving/blob/master/src/BOJ_Copied/Copied_BOJ_11723_Set.java 복사
	// 010011 비트마스크 개념 한번 봐보기
	
	private static final BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	private static final BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
	static StringTokenizer st;
	static StringBuilder sb = new StringBuilder();

	public static void main(String[] args) throws IOException {
		int M = Integer.parseInt(br.readLine());
		int bitset = 0;
		String tmp = ""; // for checking
		
		/*
		 	check 를 할 때마다 해당 숫자가 있는지 없는지 확인한 다음 값을 반환하는 것이다.
		 	고로 check 를 할 때가 중요하지만
		 	add remove ... 연산자가 반영되야 제대로 된 결과를 얻을 수 있다.
		 */

		while (M-- > 0) {
			st = new StringTokenizer(br.readLine());
			String operation = st.nextToken(); //operation add remove 기타등등을 결정하는 인자
			int num;
			
			switch (operation) { //switch 문으로 operation 파라미터를 받아 로직을 구성한다.
			case "add":
				num = Integer.parseInt(st.nextToken());
				bitset |= (1 << (num - 1)); // This is the 'num - 1' because it starts from '0'.
				
				/*
				 * bitset |= (1 << (num - 1)); 
				 * 
				 * 해석 : |= 는 bitset 에 만약 (1 << (num - 1)) 값이 없다면 넣어주겠다는 의미
				 * x |= y; // x = x | y
				 * 
				 * (1 << (num - 1)) 의 경우
				 * 받은 num parameter 를 -1 해준다. 왜 해주냐하면 0부터 시작하겠다는 의미임. 만약 2가 들어오면 2-1 연산되어 1이된다.
				 * 그리고 1 << 1 의 경우
				 * 숫자 1이 비트 연산자를 만나서
				 * 00000001 이 되고 여기서 << 1 을 만나서 왼쪽으로 한칸 이동하여
				 * 00000010 이 된다. 결국 2를 넣게 되면
				 * bitset 에는 00000010 의 값이 들어간다.
				 * 
				 * 그리고 여기서 또 1을 추가하면
				 * 1 << 0 이므로
				 * 00000001 에서 0번 이동이므로 00000001 이 되고
				 * 기존 000000010 에 00000001 값이 없으므로 추가하여
				 * 00000011 이 된다.
				 * 
				 */
				
				tmp = Integer.toBinaryString(bitset);
				break;
			case "remove":
				num = Integer.parseInt(st.nextToken());
				bitset = bitset & ~(1 << (num - 1));
				/*
				 * ~ 의 경우 반전 비트 연산자다
				 * 00000010 의 경우 11111101 이 된다.
				 * 
				 * 만약 num 이 2라면 기존 bitset 이 00000011 라면
				 * 1 << 1 은 00000010 이다. 근데 ~ 반전을 만나 11111101 이 된다.
				 * 기존 bitset 값이 00000011 이고 연산을 나온 값이 11111101 이므로 
				 * &(&: 대응되는 비트가 모두 1이면 1을 반환함) 을 만나 대응되는 비트가 00000001 이므로
				 * remove 의 bitset 의 값은 00000001 이 된다.
				 * 결과적으로 2의 값을 삭제해준다.
				 * 
				 */
				
				tmp = Integer.toBinaryString(bitset);
				break;
			case "check":
				num = Integer.parseInt(st.nextToken());
				sb.append((bitset & (1 << (num - 1))) != 0 ? "1\n" : "0\n");
				/*
				 * (bitset & (1 << (num - 1))) 만약 
				 * 기존 bitset 값이 00000111 (3) 이랴면
				 * 들어오는 값이 num 이 2라면 00000010
				 * & 대응되는 bit 를 검색하는 연산자를 만나
				 * 00000111 & 00000010 의 값은 00000010 이 되어 
				 * != 0 이 아니므로 1\n 을 반환한다.
				 * 
				 * 그리고 sb에 append 하여 기존 값에 붙여준다.
				 */
				tmp = Integer.toBinaryString(bitset);
				break;
			case "toggle":
				num = Integer.parseInt(st.nextToken());
				bitset ^= (1 << (num - 1)); // ^= : 대응되는 비트가 서로 다르면 1을 반환 
				/*
				 	num 이 2라서 00000010 이 된다면
				 	기존 bitset 이 00000101(1,3) 이라면 00000111 (1,2,3) 이 되고
				 	기존 bitset 이 00000111(1,2,3) 이라면 00000101 (1,3) 이 된다.
				 */
				
				tmp = Integer.toBinaryString(bitset);
				break;
			case "all":
				bitset |= (~0); 
				/*
				 	~0 는 0의 반전이므로 모두 11111111 bitset 을 설정해주겠다는 이미이다.
				 */
				
				tmp = Integer.toBinaryString(bitset);
				break;
			case "empty":
				bitset &= 0; // 모두 00000000 로 초기화하겠다는 의미이다.
				
				tmp = Integer.toBinaryString(bitset);
				break;
			}
		}
		bw.write(sb.toString());
		bw.close();
		br.close();
	}

}
