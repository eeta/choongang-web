public class P14 {
	public static void main(String[] args) {
		
		// 부동 소수점 방식: 수를 정확히 표현 못 하고 근사치로 표현한다.
		
		int apple = 1;
		double pieceUnit = 0.1;
		int number = 7;
		double result = apple - number * pieceUnit;
		
		System.out.println("사과 한 개에서");
		System.out.println("0.7 조각을 빼면,");
		System.out.println(result + " 조각이 남는다.");
	}
}