package board;

import java.io.File;

public class UtilMgr {
	public static String con(String s) {
		String str = null;
		try {
			str = new String(s.getBytes("8859_1"), "ksc5601");
		} catch(Exception e) {
			System.out.println("con Error : " + e.getMessage());
		}
		return str;
	}
	
	public static void delete(String s) {
		File file = new File(s);
		if(file.exists()) {
			file.delete();
		}
	}
}
