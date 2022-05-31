package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import product.ProductDAO;
import product.ProductDTO;
import fileupload.FileUtil;
import utils.JSFunction;

@WebServlet("/write.do")
public class WriteController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/addProduct.jsp").forward(req, resp);
		
	}
//	RequestDispatcher�� Ŭ���̾�Ʈ�κ��� ���ʿ� ���� ��û�� JSP/Servlet ������ ���ϴ� �ڿ����� ��û�� �ѱ��(������) ������ �����ϰų�, Ư�� �ڿ��� ó���� ��û�ϰ� ó�� ����� ������ ����� �����ϴ� Ŭ�����Դϴ�. �� /a.jsp �� ���� ��û�� /a.jsp ������ RequestDispatcher�� ����Ͽ� b.jsp�� ��û�� ���� �� �ֽ��ϴ�. �Ǵ� a.jsp���� b.jsp�� ó���� ��û�ϰ� b.jsp���� ó���� ��� ������ a.jsp�� ����� ���Խ�ų �� �ֽ��ϴ�.
//	��û�� ������ ������δ� RequestDispatcher#forward()�� RequestDispatcher#include() �� ���� ����� �ֽ��ϴ�.

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1. ���� ���ε� ó�� ==============================
		// ���ε� ���͸��� ������ ��� Ȯ��
		String saveDirectory = req.getServletContext().getRealPath("/Uploads");
				
		// �ʱ�ȭ �Ű������� ������ ÷�� ���� �ִ� �뷮 Ȯ��
		ServletContext application = getServletContext();//ServletContext�� �������� ��� �̿ܿ��� ������ ���� �����̳� ���� ��� ��ɵ� ����
		int maxPostSize = Integer.parseInt(application.getInitParameter("maxPostSize"));
		
		// ���� ���ε�
		//  �� request ��ü,               �� ����� ���� ���,       �� ���� �ִ� ũ��,    �� ���ڵ� ���,       �� ���� �̸��� ���ϸ� ���� ó��
		// (HttpServletRequest request, String saveDirectory, int maxPostSize, String encoding, FileRenamePolicy policy)
		// �Ʒ��� ���� MultipartRequest�� ������ ���ָ� ������ ���ε� �ȴ�.(���� ��ü�� ���ε� �Ϸ�)
		MultipartRequest mr = FileUtil.uploadFile(req, saveDirectory, maxPostSize);
		if (mr == null) {
			//���� ���ε� ����
			JSFunction.alertLocation(resp, "÷�� ������ ���� �뷮�� �ʰ��մϴ�.","../mvcboard/write.do");
			
			return;
		}
		
		// 2. ���� ���ε� �� ó�� ==============================
		// ������ DTO�� ����
		ProductDTO dto = new ProductDTO();
		dto.setName(mr.getParameter("name"));
		dto.setTitle(mr.getParameter("title"));
		dto.setContent(mr.getParameter("content"));
		dto.setPass(mr.getParameter("pass"));
		
		//���� ���ϸ�� ����� ���� �̸� ����
		String fileName = mr.getFilesystemName("ofile");
		if (fileName != null) {
			// ÷�� ������ ���� ��� ���ϸ� ����
			// ���ο� ���ϸ� ����
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			String ext = fileName.substring(fileName.lastIndexOf("."));
			String newFileName = now + ext;
			
			// ���ϸ� ����
			File oldFile = new File(saveDirectory + File.separator + fileName);//separator�� �����ڸ� ����
			File newFile = new File(saveDirectory + File.separator + newFileName);
			oldFile.renameTo(newFile);
			
			dto.setOfile(fileName); // ���� ���� �̸�
			dto.setSfile(newFileName); // ������ ����� ���� �̸�
		}
		
		// DAO�� ���� DB�� �Խ� ���� ����
		ProductDAO dao = new ProductDAO();
		int result = dao.addProduct(dto);
		dao.close();
		
		// ���� or ����
		if (result == 1) { //�۾��� ����
			resp.sendRedirect("./list.do");
		}else { // �۾��� ����
			resp.sendRedirect("./write.do");
		}
	}
}
