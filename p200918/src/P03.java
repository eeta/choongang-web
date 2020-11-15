public class P03 {
	public static void main(String[] args) {
		int value = (int)(Math.random() * 100) + 1;
		System.out.println(value);
		
		if (value >= 90) {
			System.out.println("A");
		} else if (value >= 70) {
			System.out.println("B");
		} else if (value >= 60) {
			System.out.println("C");
		} else {
			System.out.println("F");
		}
	}
}