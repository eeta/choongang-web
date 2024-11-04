public class P07 {
	public static void main(String[] args) {

		// 문자열 연결
		
		String str1 = "안녕";
		String str2 = "반가워";
		String r = str1 + str2;
		System.out.println(r);
		
		int a = 10;
		r = str1 + a;
		System.out.println(r);
		
		// 문자열과 숫자가 혼합된 + 연산식: 왼쪽에서부터 오른쪽으로 연산이 진행된다.
		r = str1 + a + 30;    // "안녕하세요10" + 30
		System.out.println(r);
		r = str1 + (a + 30);
		System.out.println(r);
		r = str1 + a * 30;
		System.out.println(r);
		
		System.out.println(a);
		System.out.println("안녕" + a);
		
		for (int x = 2; x <= 9; x++) {
			for (int y = 1; y <= 9; y++) {
				int result = x * y;
				System.out.println(x + " X " + y + " = " + result);
			}
		}
	}
}