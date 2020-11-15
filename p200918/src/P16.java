public class P16 {
	public static void main(String[] args) {
		int sum = 0;
		
		for (int i = 9; i <= 103; i++) {
			if (i % 3 != 0)	{
				continue;
			}
			System.out.println(i);
			sum = sum + i;
		}
		System.out.println("합계: " + sum);
	}
}