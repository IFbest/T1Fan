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
public class ViewController extends HttpServlet { //상세보기
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//게시물 불러오기
		ProductDAO dao = new ProductDAO();
		String productId = req.getParameter("productId");
		//dao.updateVisitCount(productId); //해당 게시글번호 참조 조회수 1 증가
		ProductDTO dto = dao.selectView(productId);//게시글 정보 가져오기
		dao.close();
		
		
		//게시물(dto) 저장 후 뷰로 포워드
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/product.jsp").forward(req, resp);
	}
}
