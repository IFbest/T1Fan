package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;
import product.ProductDTO;

@WebServlet("/view.do")
public class ViewController extends HttpServlet { //�󼼺���
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//�Խù� �ҷ�����
		ProductDAO dao = new ProductDAO();
		String productId = req.getParameter("productId");
		//dao.updateVisitCount(productId); //�ش� �Խñ۹�ȣ ���� ��ȸ�� 1 ����
		ProductDTO dto = dao.selectView(productId);//�Խñ� ���� ��������
		dao.close();
		
		
		//�Խù�(dto) ���� �� ��� ������
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/product.jsp").forward(req, resp);
	}
}