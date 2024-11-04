public class P04 {
	public static void main(String[] args) {
		int v1 = 10;
		
		v1++;
		System.out.println(v1);
		
		++v1;
		System.out.println(v1);
		
		int result;
		result = 10 + v1++;
		
		System.out.println(v1);
		System.out.println(result);
	}
}