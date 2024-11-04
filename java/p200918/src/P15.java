public class P15 {
	public static void main(String[] args) {

		// 9부터 103까지의 값 중 3의 배수의 합
		int sum = 0;		
		for (int i = 9; i <= 103; i++) {
			if (i % 3 == 0) {
				sum += i;
			}
		}
		System.out.println(sum);
	}
}