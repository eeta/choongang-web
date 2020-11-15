import java.util.*;

public class P6 {
	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		
		System.out.println("점수를 입력하세요.");
		int a = Integer.parseInt(scn.nextLine());
		
		if (a >= 90) {
			System.out.println("A입니다.");
		} else if (a >= 80) {
			System.out.println("B입니다.");
		} else {
			System.out.println("F입니다.");
		}
		System.out.println("프로그램 종료");
	}
}