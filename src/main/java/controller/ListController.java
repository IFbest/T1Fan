package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;
import product.ProductDTO;
import utils.BoardPage;

@WebServlet("/list.do")
public class ListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// DAO 생성 - DB에서 정보가져옴(Object타입)
		ProductDAO dao = new ProductDAO();
		
		// 뷰에 전달할 매개변수 저장용 맵 생성(String은 key가 되고 Object는 DB데이터의 타입)
		Map<String, Object> map = new HashMap<String, Object>();
		
		String searchField = req.getParameter("searchField");
		String searchWord = req.getParameter("searchWord");
		if (searchWord != null) {
			//쿼리스트링으로 전달받은 매개변수 중 검색어가 있다면 map에 저장
			map.put("searchField", searchField);
			map.put("searchWord", searchWord);
		}
		int totalCount = dao.selectCount(map); // 검색조건에 맞는 게시물의 개수를 대입
		
		//!!페이지 처리 start!!(페이징)
		ServletContext application = getServletContext();
		int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
		int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
		
		//현재 페이지 확인
		int pageNum = 1; //기본값
		String pageTemp = req.getParameter("pageNum");
		if (pageTemp != null && !pageTemp.equals(""))
			pageNum = Integer.parseInt(pageTemp); //요청받은 페이지로 수정
		
		//목록에 출력할 게시물 범위 계산
		int start = (pageNum -1) * pageSize + 1; //첫 게시물 번호
		int end = pageNum * pageSize; //마지막 게시물 번호
		map.put("start", start);
		map.put("end", end);
		//!!페이지 처리  end!!
		
		List<ProductDTO> boardLists = dao.selectListPage(map); //게시물 목록 받기 검색어 유무에따라 전체/검색어포함
		dao.close(); // DB 연결 닫기
		
		//뷰에 전달할 매개변수 추가
		String pagingImg = BoardPage.pagingStr(totalCount, pageSize, blockPage,
				pageNum, "./list.do");//바로가기 영역 HTML 문자열
		map.put("pagingImg", pagingImg);
		map.put("totalCount", totalCount);
		map.put("pageSize", pageSize);
		map.put("pageNum", pageNum);
		
		// 전달할 데이터를 request 영역에 저장 후 List.jsp로 포워드
		req.setAttribute("boardLists", boardLists);
		req.setAttribute("map", map);//키와 값
		req.getRequestDispatcher("/products.jsp").forward(req, resp);//해당주소에 요청하고 응답하라
		
	}
}
//ServletContext클래스는 톰캣 컨테이너 실행 시 각 컨텍스트(웹 애플리케이션)마다 한 개의 ServletContext객체를 생성합니다. 
//그리고 톰캣 컨테이너가 종료하면 ServletContext객체 역시 소멸됩니다.
//ServletContext객체는 웹 애플리케이션이 실행되면서 애플리케이션 전체의 공통 자원이나 정보를 미리 바인딩(binding)해서 서블릿들이 공유하여 사용합니다. 