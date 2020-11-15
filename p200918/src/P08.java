public class P08 {
	public static void main(String[] args) {
		
		// switch문: 변수가 어떤 값을 갖느냐에 따라 실행문이 선택된다.
		
		int value = 4;
		
		switch (value) {
		case 1:
			System.out.println("1입니다.");
			break;
		case 2:
			System.out.println("2입니다.");
			break;
		case 3:
			System.out.println("3입니다.");
			break;
		case 4:
			System.out.println("4입니다.");
			break;    // switch문을 빠져나간다.
		default:
			System.out.println("그 이외의 값입니다.");
		}	
	}
}