package in.co.capgemini;

public class BankAccount {
	
	private String holderName;
	private String mailId, accountType;
	
	
	public BankAccount(String holderName, String mailId, String accountType, int mobNo, int custId, int balance) {
		super();
		this.holderName = holderName;
		this.mailId = mailId;
		this.accountType = accountType;
		this.mobNo = mobNo;
		this.custId = custId;
		this.balance = balance;
	}
	public String getHolderName() {
		return holderName;
	}
	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public int getMobNo() {
		return mobNo;
	}
	public void setMobNo(int mobNo) {
		this.mobNo = mobNo;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "BankAccount [holderName=" + holderName + ", mailId=" + mailId + ", accountType=" + accountType
				+ ", mobNo=" + mobNo + ", custId=" + custId + ", balance=" + balance + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	private int mobNo, custId, balance;
	
}
