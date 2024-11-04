public class P09 {
	public static void main(String[] args) {
		byte a = 10;
		int b = 20;
		
		// b = a; 가능
		a = (byte)b;
		
		System.out.println(a);
	}
}