public class P12 {
	private static final int IS_MAN = 1;    // 0000 0001
	private static final int IS_STUDENT = 2;    // 0000 0010
	private static final int HAS_CAR = 4;    // 0000 0100
	
	public static void main(String[] args) {				
		boolean isMan = false;
		boolean isStudent = true;
		boolean hasCar = false;
		
		// 아래는 옛날 방식
		
		// 0000 0001 = man = 1 (10진수)
		// 0000 0010 = student = 2 (10진수)
		// 0000 0100 = has car = 4 (10진수)
	
		// 0000 0000 data
		byte data = 0;
		
		// 0000 0000 data
		// 0000 0010 student
		// 0000 0010 data
		data = (byte)(data | IS_STUDENT);

		// 0000 0010 data
		// 0000 0001 man
		// 0000 0011 data
		data = (byte)(data | IS_MAN);
		
		// 0000 0011 data
		// 0000 0010 student
		// 0000 0010 data
		if ((data & IS_STUDENT) == IS_STUDENT) {
			System.out.println("학생입니다.");
		}
	}
}