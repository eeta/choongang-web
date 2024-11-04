public class P14 {
	public static void main(String[] args) {
		
		// 변수: 기본타입 / 참조타입
		int studentScore = 70;    // 변수 명명법
		double value = 3.78; 
		String str = "하이";    // 참조타입 변수
		
		studentScore = (int)value;    // 강제 타입 변환(Casting)
		value = studentScore;    // 자동 타입 변환(Promotion)

		int a = 0;
		a = 10;    // 메모리에 쓰기
		System.out.println(a);    // a 읽기
		int c = a + 10;    // a 읽어서 연산
		System.out.println(a);
	}
}