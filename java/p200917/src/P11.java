public class P11 {
	public static void main(String[] args) {
		
		// 비트 연산자
		
		// 0000 0000 0000 0000 0000 0000 0000 0001
		int a = 1;
		int result  = a << 3;    // 왼쪽으로 세 칸 이동, 빈자리는 0으로 채워진다.
		System.out.println(result);

		// 0000 0000 0000 0000 0000 0000 0000 0111
		a = 7;
		result = a >> 1;    // 오른쪽으로 한 칸 이동, 잘린 비트는 없어진다.
		System.out.println(result);
		
		// 1111 1111 1111 1111 1111 1111 1111 1111 
		a = -1;		
		result = a >> 1;    // 앞을 1로 채운 뒤 오른쪽으로 민다. (1: a의 최상위 부호 비트)
		System.out.println(result);
		
		a = -1;
		result = a >>> 1;    // 최상위 부호 비트와 상관없이, 앞을 0으로 채운 뒤 오른쪽으로 민다.
		System.out.println(result);    // int가 가질 수 있는 가장 큰 값	
	}
}