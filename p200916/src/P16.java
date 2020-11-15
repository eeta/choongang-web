public class P16 {
	public static void main(String[] args) {		
		int num1 = 123456780;
		int num2 = 123456780;
		
		float num3 = num2;
		num2 = (int)num3;    // 값의 손실 발생
		
		int result = num1 - num2;
		System.out.println(result);
	}
}