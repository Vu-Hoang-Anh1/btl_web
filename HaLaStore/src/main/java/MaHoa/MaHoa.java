package MaHoa;

import java.security.MessageDigest;
import java.security.SecureRandom;

import org.apache.tomcat.util.codec.binary.Base64;


public class MaHoa {
	 public static String generateSalt(int length) {
	        SecureRandom random = new SecureRandom();
	        byte[] salt = new byte[length];
	        random.nextBytes(salt);
	        return Base64.encodeBase64String(salt);
	    }
	public static String HashDB(String str, String salt) {
		String result = null;
		str = str + salt;
		try {
			byte[] dataBytes = str.getBytes("UTF-8");
			MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
			byte[] hashBytes = messageDigest.digest(dataBytes);
			result = Base64.encodeBase64String(hashBytes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	public static boolean checkPassword(String password, String storedHash, String storedSalt) {
		String generatedHash = HashDB(password,storedSalt);
		return generatedHash.equals(storedHash);
	}
	/*
	 * public static void main(String[] args) { String password = "123456";
	 * 
	 * // Tạo salt mới String salt = generateSalt(6); System.out.println("Salt: " +
	 * salt);
	 * 
	 * // Mã hóa mật khẩu với salt mới String hashedPassword = HashDB(password,
	 * salt); System.out.println("Mật khẩu đã mã hóa: " + hashedPassword);
	 * 
	 * // Xác minh mật khẩu boolean isMatch = checkPassword(password,
	 * hashedPassword, salt); System.out.println("Xác minh mật khẩu: " + isMatch); }
	 */
}
