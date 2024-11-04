public class P13 {
	public static void main(String[] args) {

		// 산술 연산자: +, -, *, /, %
		
		int v1 = 10 / 3;
		double v2 = 10 / 3.0;
		
		System.out.println(v1);
		System.out.println(v2);
		
		int v3 = 10 % 3;    // 나머지
		System.out.println(v3);
		
		String v4 = "안녕" + 113 + "반가워" + 7;
		System.out.println(v4);
		
		int v5 = 10;
		v5 += 5;
		System.out.println(v5);
		v5 -= 10;
		System.out.println(v5);
		
		// 증감 연산자
		v5++;
		System.out.println(v5);
		v5--;
		System.out.println(v5);
	}
}