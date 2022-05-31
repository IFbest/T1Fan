package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;
import product.ProductDTO;

@WebServlet("/order.do")
public class OrderController extends HttpServlet { //�󼼺���
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//�Խù� �ҷ�����
		ProductDAO dao = new ProductDAO();
		String cartId = req.getParameter("cartId");
		ProductDTO dto = dao.viewCartId(cartId);//�Խñ� ���� ��������
		dao.close();
		
		//�Խù�(dto) ���� �� ��� ������
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/orderConfirmation.jsp").forward(req, resp);
	}
}
