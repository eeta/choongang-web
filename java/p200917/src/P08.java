public class P08 {
	public static void main(String[] args) {
		int a = 20;
		boolean r = a != 20;
		System.out.println(r);
		
		if (a == 20) {
			System.out.println("OK");
		}
		
		r = !false;
		System.out.println(r);
		
		if (!(a > 20)) {
			System.out.println("a는 20보다 큽니다.");
		}
		else {
			System.out.println("a는 20보다 작거나 같습니다.");
		}
	}
}