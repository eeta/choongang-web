public class P09 {
	public static void main(String[] args) {

		// 논리곱 &&, 논리합 ||
		
		// 논리곱: 양쪽 모두 true인 경우만 true
		// AND. ~이고 ~인 경우
		boolean r = true && false;
		System.out.println(r);
		
		int value = 7;		
		if (value > 10 && value % 2 == 1) {
			System.out.println("조건 만족");
		}
		
		// 논리합: 한 쪽이라도 true이면 true
		// OR. ~이거나 ~인 경우
		r = true || false;
		System.out.println(r);
		
		int score = 0;    // 학점
		int attend = 0;    // 출석 점수
		int volunteer = 100;    // 봉사 점수
		if ((score >= 90 && attend >= 80) || (volunteer == 100)) {
			System.out.println("장학금을 받을 수 있어요");
		}
	}
}