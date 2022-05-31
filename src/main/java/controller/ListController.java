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
		// DAO ���� - DB���� ����������(ObjectŸ��)
		ProductDAO dao = new ProductDAO();
		
		// �信 ������ �Ű����� ����� �� ����(String�� key�� �ǰ� Object�� DB�������� Ÿ��)
		Map<String, Object> map = new HashMap<String, Object>();
		
		String searchField = req.getParameter("searchField");
		String searchWord = req.getParameter("searchWord");
		if (searchWord != null) {
			//������Ʈ������ ���޹��� �Ű����� �� �˻�� �ִٸ� map�� ����
			map.put("searchField", searchField);
			map.put("searchWord", searchWord);
		}
		int totalCount = dao.selectCount(map); // �˻����ǿ� �´� �Խù��� ������ ����
		
		//!!������ ó�� start!!(����¡)
		ServletContext application = getServletContext();
		int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
		int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
		
		//���� ������ Ȯ��
		int pageNum = 1; //�⺻��
		String pageTemp = req.getParameter("pageNum");
		if (pageTemp != null && !pageTemp.equals(""))
			pageNum = Integer.parseInt(pageTemp); //��û���� �������� ����
		
		//��Ͽ� ����� �Խù� ���� ���
		int start = (pageNum -1) * pageSize + 1; //ù �Խù� ��ȣ
		int end = pageNum * pageSize; //������ �Խù� ��ȣ
		map.put("start", start);
		map.put("end", end);
		//!!������ ó��  end!!
		
		List<ProductDTO> boardLists = dao.selectListPage(map); //�Խù� ��� �ޱ� �˻��� ���������� ��ü/�˻�������
		dao.close(); // DB ���� �ݱ�
		
		//�信 ������ �Ű����� �߰�
		String pagingImg = BoardPage.pagingStr(totalCount, pageSize, blockPage,
				pageNum, "./list.do");//�ٷΰ��� ���� HTML ���ڿ�
		map.put("pagingImg", pagingImg);
		map.put("totalCount", totalCount);
		map.put("pageSize", pageSize);
		map.put("pageNum", pageNum);
		
		// ������ �����͸� request ������ ���� �� List.jsp�� ������
		req.setAttribute("boardLists", boardLists);
		req.setAttribute("map", map);//Ű�� ��
		req.getRequestDispatcher("/products.jsp").forward(req, resp);//�ش��ּҿ� ��û�ϰ� �����϶�
		
	}
}
//ServletContextŬ������ ��Ĺ �����̳� ���� �� �� ���ؽ�Ʈ(�� ���ø����̼�)���� �� ���� ServletContext��ü�� �����մϴ�. 
//�׸��� ��Ĺ �����̳ʰ� �����ϸ� ServletContext��ü ���� �Ҹ�˴ϴ�.
//ServletContext��ü�� �� ���ø����̼��� ����Ǹ鼭 ���ø����̼� ��ü�� ���� �ڿ��̳� ������ �̸� ���ε�(binding)�ؼ� �������� �����Ͽ� ����մϴ�. 