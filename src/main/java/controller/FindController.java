package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import members.MembersDAO;
import members.MembersDTO;

@WebServlet("/find.do")
public class FindController extends HttpServlet { //�󼼺���
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//�Խù� �ҷ�����
		MembersDAO dao = new MembersDAO();
		String email = req.getParameter("email");
		MembersDTO dto = dao.findId(email);
		dao.close();
		
		
		//�Խù�(dto) ���� �� ��� ������
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/findResult.jsp").forward(req, resp);
	}
}
