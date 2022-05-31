package product;

import java.io.Serializable;

//��ǰ ��� ǥ���ϱ�
public class ProductDTO implements Serializable {
   private static final long serialVersionUID = -4274700572038677000L;
   
   private String productId;   //��ǰ ���̵�
   private String pname;   //��ǰ��
   private Integer unitPrice;   //��ǰ ����
   private String description;   //��ǰ ����
   private String manufacturer;   //������
   private String category;   //�з�, ���ǥ(����Ʈ)
   private Integer unitsInStock;   //��� ��
   private String condition;   //�Ż�ǰ or �߰�ǰ or ���ǰ
   //3-17 5���� ��ǰ�̹��� ����ϱ�
   private String filename;    //�̹��� ���ϸ�
   //3-23 9���� ��ٱ��� ������ �����
   private Integer quantity; //��ٱ��Ͽ� ���� ����
   private String title; //�Խñ� ����
   private String content; // �Խñ� ����
   private String id; // �Խñ� ���̵�
   private String num;
   private java.sql.Date postdate;
   private String visitcount;
   private String name;
   private String ofile;
   private String sfile;
   private String pass;
   private java.sql.Date date;
   private String memberPost;
   private String memberAddr;
   private String memberDetail;
   private String cardNum;
   private String cardDate;
   private String cardCvc;
   private String cartId;
   
   public ProductDTO() {
      super();
   }
   
   //��ǰ ���̵�, �̸�, ������ �Ű������� ��ü �����ϴ� ������
   public ProductDTO(String productId, String pname, Integer unitPrice) {
      this.productId = productId;
      this.pname = pname;
      this.unitPrice = unitPrice;
   }

   public String getProductId() {
      return productId;
   }

   public void setProductId(String productId) {
      this.productId = productId;
   }

   public String getPname() {
      return pname;
   }

   public void setPname(String pname) {
      this.pname = pname;
   }

   public Integer getUnitPrice() {
      return unitPrice;
   }

   public void setUnitPrice(Integer unitPrice) {
      this.unitPrice = unitPrice;
   }

   public String getDescription() {
      return description;
   }

   public void setDescription(String description) {
      this.description = description;
   }

   public String getManufacturer() {
      return manufacturer;
   }

   public void setManufacturer(String manefacturer) {
      this.manufacturer = manefacturer;
   }

   public String getCategory() {
      return category;
   }

   public void setCategory(String category) {
      this.category = category;
   }

   

   public String getCondition() {
      return condition;
   }

   public void setCondition(String condition) {
      this.condition = condition;
   }

   public String getFilename() {
	   return filename;
   }

   public void setFilename(String filename) {
	  this.filename = filename;
   }



public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getNum() {
	return num;
}

public void setNum(String num) {
	this.num = num;
}

public java.sql.Date getPostdate() {
	return postdate;
}

public void setPostdate(java.sql.Date postdate) {
	this.postdate = postdate;
}

public String getVisitcount() {
	return visitcount;
}

public void setVisitcount(String visitcount) {
	this.visitcount = visitcount;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public Integer getUnitsInStock() {
	return unitsInStock;
}

public void setUnitsInStock(Integer unitsInStock) {
	this.unitsInStock = unitsInStock;
}

public Integer getQuantity() {
	return quantity;
}

public void setQuantity(Integer quantity) {
	this.quantity = quantity;
}

public String getOfile() {
	return ofile;
}

public void setOfile(String ofile) {
	this.ofile = ofile;
}

public String getSfile() {
	return sfile;
}

public void setSfile(String sfile) {
	this.sfile = sfile;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}

public java.sql.Date getDate() {
	return date;
}

public void setDate(java.sql.Date date) {
	this.date = date;
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

public String getCardNum() {
	return cardNum;
}

public void setCardNum(String cardNum) {
	this.cardNum = cardNum;
}

public String getCardDate() {
	return cardDate;
}

public void setCardDate(String cardDate) {
	this.cardDate = cardDate;
}

public String getCardCvc() {
	return cardCvc;
}

public void setCardCvc(String cardCvc) {
	this.cardCvc = cardCvc;
}

public String getCartId() {
	return cartId;
}

public void setCartId(String cartId) {
	this.cartId = cartId;
}



   
}