package ch06;

public class RegisterBean {
	private String 고객id, 고객이름, 등급, 직업;
	private int 나이, 적립금;
	
	public String get고객id() {
		return 고객id;
	}
	public void set고객id(String 고객id) {
		this.고객id = 고객id;
	}
	public String get고객이름() {
		return 고객이름;
	}
	public void set고객이름(String 고객이름) {
		this.고객이름 = 고객이름;
	}
	public String get등급() {
		return 등급;
	}
	public void set등급(String 등급) {
		this.등급 = 등급;
	}
	public String get직업() {
		return 직업;
	}
	public void set직업(String 직업) {
		this.직업 = 직업;
	}
	public int get나이() {
		return 나이;
	}
	public void set나이(int 나이) {
		this.나이 = 나이;
	}
	public int get적립금() {
		return 적립금;
	}
	public void set적립금(int 적립금) {
		this.적립금 = 적립금;
	}
}