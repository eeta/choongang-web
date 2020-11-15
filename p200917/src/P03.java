public class P03 {
	public static void main(String[] args) {

		// 복합 대입 연산자
		
		int var1 = 10;
		System.out.println(var1);
		
		var1 = var1 + 1;
		System.out.println(var1);
		
		var1 += 1;
		System.out.println(var1);
		
		var1 -= 3;
		System.out.println(var1);
		
		var1 *= 3;
		System.out.println(var1);
		
		var1 /= 10;
		System.out.println(var1);
		
		var1 %= 5;
		System.out.println(var1);
		
		var1 = var1 + 1;
		var1 += 1;
		var1++;
		
		var1 = var1 - 1;
		var1 -= 1;
		var1--;
	}
}