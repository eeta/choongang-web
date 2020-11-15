public class P02 {
	public static void main(String[] args) {
		int value = (int)(Math.random() * 100) + 1;
		System.out.println(value);
		
		if (value >= 90) {
			System.out.println("A입니다.");
		} else {
			if (value >= 80) {
				System.out.println("B입니다.");
			} else {
				System.out.println("F입니다");
			}
		}
	}
}