public class P13 {
	public static void main(String[] args) {
		
		// for (초기식; 조건식; 증감식) {}		
		for (int i = 1; i <= 10; i++) {
			if (i % 2 == 0) {
				continue;    // for문의 증감식으로 이동한다.
			}			
			System.out.println(i);
			
			if (i == 7) {
				break;    // i가 7일 때 반복문을 종료한다.
			}
		}
	}
}