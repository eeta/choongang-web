public class P10 {
	public static void main(String[] args) {
		boolean a = false;
		int b = 10;
		double c = 30.7;
		
		// a = (boolean)b; 불가능
		c = b;
		b = (int)c;
		System.out.println(b);
	}
}