public class P18 {
	public static void main(String[] args) {

		// 구구단 출력		
		int i, j;		
		for (i = 2; i <= 9; i++) {
			for (j = 2; j <= 9; j++) {
				int result = i * j;
				System.out.println(i + " X " + j + " = " + result);
			}			
		}
	}
}