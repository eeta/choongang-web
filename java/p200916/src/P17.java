public class P17 {
	public static void main(String[] args) {
		
		// Math.random() returns a random number
		// 0.0 <= random number < 1.0
	
		int value = 0;
		double temp = Math.random() * 100;
		value = (int)temp;
		
		// value = (int)(Math.random() * 100);
		System.out.println(value);
		
		if (value % 2 == 0) {
			System.out.println("짝수가 이동해야 합니다.");
		} else {
			System.out.println("홀수가 이동해야 합니다.");
		}
	}
}