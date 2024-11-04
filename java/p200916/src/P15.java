public class P15 {
	public static void main(String[] args) {
		
		// 실수: 부동 소수점 방식으로 저장된다.
		float var1 = 3.14f;
		double var2 = 3.14;
		
		// float의 정밀도 < double의 정밀도		
		float var3 = 0.1234567890123456789f;
		double var4 = 0.1234567890123456789;
		
		System.out.println("var1: " + var1);
		System.out.println("var2: " + var2);
		System.out.println("var3: " + var3);
		System.out.println("var4: " + var4);
	}
}