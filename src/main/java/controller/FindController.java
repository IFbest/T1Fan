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
public class FindController extends HttpServlet { //상세보기
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//게시물 불러오기
		MembersDAO dao = new MembersDAO();
		String email = req.getParameter("email");
		MembersDTO dto = dao.findId(email);
		dao.close();
		
		
		//게시물(dto) 저장 후 뷰로 포워드
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/findResult.jsp").forward(req, resp);
	}
}
