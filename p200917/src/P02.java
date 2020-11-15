public class P02 {
	public static void main(String[] args) {
		int a = 10;
		int b = 20;
		int r = a + b;
		System.out.println(r);
		
		r = a - b;
		System.out.println(r);
		
		r = a * 5;
		System.out.println(r);

		double bb = b;
		System.out.println(b);
		r = a / b;
		System.out.println(r);
		System.out.println(10.0 / 20);
				
		double rr = a / (double)b;
		System.out.println(rr);
		
		double b2 = b;
		double r2 = a / b2;
		System.out.println(r2);
		
		r = a / b;
		System.out.println(r);
		
		r = a % b;
		System.out.println(r);
		
		// 부호 연산자
		a = -7;
		a = -a;
		System.out.println(a);
		
		// 대입 연산자
		a = 10;
		System.out.println(a);
	}
}