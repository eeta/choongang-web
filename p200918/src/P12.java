public class P12 {
	public static void main(String[] args) {
		int x = 1;
		
		while (x <= 100) {
			x++;
			if (x % 2 == 0) {
				continue;    // for문의 증감식 또는 while문, do-while문의 조건식으로 이동한다.
			}
			System.out.println(x);
			x++;
		}
	}
}