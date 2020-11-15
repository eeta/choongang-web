public class P11 {
	public static void main(String[] args) {

		// break; continue;
		
		int a = 1;
		
		while (true) {
			System.out.println(a);
			a += 2;
			
			if (a >= 10) {
				break;    // for문, while문, do-while문을 실행 중지한다. 중첩된 경우 가장 가까운 반복문만 종료한다.
			}
		}
		System.out.println("끝");
	}
}