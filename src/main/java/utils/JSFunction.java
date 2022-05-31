package utils;
//경고창 출력 설정을 위한 파일
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class JSFunction {
	// 메시지 알림창을 띄운 후 명시한 URL로 이동합니다.
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script = "" // 삽입할 자바스크립트 코드
						  + "<script>"
						  + "   alert('" + msg + "');"
						  + "   location.href='" + url + "';"
						  + "</script>";
			out.println(script); //자바스크립트 코드를 out 내장 객체로 출력(삽입)
		}catch (Exception e) {}
	}
	// 메시지 알림창을 띄운 후 이전 페이지로 돌아갑니다
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = ""
						  + "<script>"
						  + "   alert('" + msg + "');"
						  + "   history.back();"
						  + "</script>";
			out.println(script);
		}catch (Exception e) {}
	}
	// 메시지 알림창을 띄운 후 명시한 URL로 이동합니다.
	public static void alertLocation(HttpServletResponse resp, String msg, String url) {
			try {
				resp.setContentType("text/html;charset=UTF-8");
				PrintWriter writer = resp.getWriter();
				String script = ""
							  + "<script>"
							  + "   alert('" + msg + "');"
							  + "   location.href='" + url + "';"
							  + "</script>";
				writer.print(script);
			}catch (Exception e) {}
	}
	// 메시지 알림창을 띄운 후 이전 페이지로 돌아갑니다
	public static void alertBack(HttpServletResponse resp, String msg) {
		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = ""
						  + "<script>"
						  + "   alert('" + msg + "');"
						  + "   history.back();"
						  + "</script>";
			writer.print(script);
		}catch (Exception e) {}
	}
}

//alertLocation()메서드는 알림창으로 메시지를 보여준 후 URL 이동하는 동작을 함 매개변수 3개 필요(msg,url,out)
//Out : js 코드를 삽입 출력 스트림
//
//alrertBack() 메서드는 알림창으로 메시지를 보여준 후 무조건 이전페이지로 이동 매개변수 2개 필요(msg.out)
