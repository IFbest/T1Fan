package utils;

public class BoardPage {
	public static String pagingStr(int totalCount, int pageSize, int blockPage,
			int pageNum, String reqUrl) {
		String pagingStr = "";
		
		// �ܰ� 3 : ��ü ������ �� ���
		int totalPages = (int) (Math.ceil(((double) totalCount / pageSize)));
		
		// �ܰ� 4 : '���� ������ ��� �ٷΰ���' ���
		int pageTemp = (((pageNum - 1) / blockPage) * blockPage) + 1;
		if (pageTemp != 1) {
			pagingStr += "<a href='" + reqUrl + "?pageNum=1'>[ù ������]</a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + reqUrl + "?pageNum=" + (pageTemp - 1)
					  + "'>[���� ���]</a>";
		}
		// �ܰ� 5 : �� ������ ��ȣ ���
		int blockCount = 1;
		while (blockCount <= blockPage && pageTemp <= totalPages) {
			if (pageTemp == pageNum) {
				//���� �������� ��ũ�� ���� ����
				pagingStr += "&nbsp;" + pageTemp + "&nbsp;";
			} else {
				pagingStr += "&nbsp;<a href='" + reqUrl + "?pageNum=" + pageTemp
						  + "'>" + pageTemp + "</a>&nbsp;";
			}
			pageTemp++;
			blockCount++;
		}
		// �ܰ� 6 : '���� ������ ��� �ٷΰ���' ���
		if (pageTemp <= totalPages) {
			pagingStr += "<a href='" + reqUrl + "?pageNum=" + pageTemp
					  + "'>[���� ���]</a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + reqUrl + "?pageNum=" + totalPages
					  + "'>[������ ������]</a>";
		}
		return pagingStr;
	}

}//pages_per_page �� ȭ�鿡 ����� ������ ��ȣ ��
//1�ܰ� : board ���̺� ����� ��ü ���ڵ� ���� ī��Ʈ (ex)�Խù��� 105���� ����)
//2�ܰ� : �� ���������� ����� �Խù��� ������ ���
//������ ���۰� : (���� ������ -1) * POSTS_PER_PAGE + 1 (���������� ����� �Խù� ��)
//������ ���ᰪ : (���� ������ * POSTS_PER_PAGE)
//���۰�: (1 - 1) * 10 + 1 = 1          ���ᰪ : 1 * 10 = 10
//���۰�: (2 - 1) * 10 + 1 = 11		  ���ᰪ : 2 * 10 = 20

//1�������� ���۰�1 ���ᰪ10
//2�������� ���۰�11 ���ᰪ20
//...

//3�ܰ� : ��ü ������ ���� ��� ������ �ø�ó��
//���� : Math.ceil(��ü ��ù� �� / POSTS_PER_PAGE) -> 105/10 = 11

//4�ܰ� : ���� ������ ��� �ٷΰ��⸦ ���
//���� : ((���� ������ -1) / PAGES_PER_BLOCK ) * PAGES_PER_BLOCK + 1
//1������ �� �� 1 ((1-1)/5) * 5 + 1 = 1
//5������ �� �� 1 ((5-1)/5) * 5 + 1 = 1 (4/5 = 0.8������ int�� 0���� ������)
//6������ �� �� 6 ((6-1)/5) * 5 + 1 = 6
//10������ �� �� 6 ((10-1/5) * 5 + 1 = 6
//11������ �� ��  ((11-1/5) * 5 + 1 = 11
//1�� �ƴ� ���� pageTemp -1 ����� ���� ������ ��� �ٷΰ��⸦ ���.
//��, ���� ������ ����� 5�� ��

//5�ܰ� : �� ������ ��ȣ�� ���
//4�ܰ迡�� ����� pageTemp�� BLOCK_PAGE��ŭ �ݺ��ϸ鼭 +1 ���� �� ���
//pageTemp�� 1�� ��� : 1 2 3 4 5 �� ���
//pageTemp�� 6�� ��� : 6 7 8 9 10�� ���

//6�ܰ� : ���������� ��� �ٷΰ��� ���
//�� ������ ��ȣ�� ����� �� pageTemp + 1 �Ͽ� ���� ������ ��� �ٷΰ��⸦ ����
//�� �������������� 5��� ������������ 6
