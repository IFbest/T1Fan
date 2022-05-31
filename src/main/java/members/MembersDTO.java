package members;

public class MembersDTO {
    
    //멤버변수
    private String id;
    private String pass;
    private String passcheck;
    private String name;
    private String regidate;
    private String email;
    private String phonenum;
    private String type;
    private String memberPost;
    private String memberAddr;
    private String memberDetail;
    
    
    //멤버 변수별 게터와 세터
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getRegidate() {
        return regidate;
    }
    public void setRegidate(String regidate) {
        this.regidate = regidate;
    }
	public String getPasscheck() {
		return passcheck;
	}
	public void setPasscheck(String passcheck) {
		this.passcheck = passcheck;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMemberPost() {
		return memberPost;
	}
	public void setMemberPost(String memberPost) {
		this.memberPost = memberPost;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberDetail() {
		return memberDetail;
	}
	public void setMemberDetail(String memberDetail) {
		this.memberDetail = memberDetail;
	}
}
