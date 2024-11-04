public class P01 {
	public static void main(String[] args) {
		int value = (int)(Math.random() * 100);    // Math.random() return a double value
		System.out.println("value 값: " + value);
		
		if (value >= 25 && value <= 75) {
			System.out.println("정상");
		} else {
			System.out.println("비정상");
		}
	}
}