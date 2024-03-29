package bookissuemanage.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "StudentDetails")
public class LabEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "Name")
	private String studentName;
	@Column(name = "RegNo")
	private String registrationNo;
	@Column(name = "Contact")
	private String mobileNo;
	@Column(name = "Book")
	private String bookName;
	@Column(name = "Date")
	private String issueDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getRegistrationNo() {
		return registrationNo;
	}

	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}

	public LabEntity(int id, String studentName, String registrationNo, String mobileNo, String bookName,
			String issueDate) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.registrationNo = registrationNo;
		this.mobileNo = mobileNo;
		this.bookName = bookName;
		this.issueDate = issueDate;
	}

	public LabEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "LabEntity [id=" + id + ", studentName=" + studentName + ", registrationNo=" + registrationNo
				+ ", mobileNo=" + mobileNo + ", bookName=" + bookName + ", issueDate=" + issueDate + "]";
	}

}
