import java.util.*;

public class P5 {
	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		
		System.out.println("***계산기***");
		
		System.out.println("첫번째 값을 입력하세요.");
		int a = Integer.parseInt(scn.nextLine());
		
		System.out.println("두번째 값을 입력하세요.");
		int b = Integer.parseInt(scn.nextLine());
		
		int c = a + b;
		System.out.println("결과는 " + c);
	}
}