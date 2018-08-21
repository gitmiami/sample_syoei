package to.msn.wings.lesson26_28;

import java.io.IOException;
import java.io.PrintWriter;
【ここに入力】

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

【ここに入力】
public class SearchServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html><html><head><meta charset='UTF-8' />");
		out.println("<title>簡易スケジュール帳</title>");
		out.println("</head><body>");
		out.println("<table border='1'>");
		out.println("<tr>");
		out.println("<th>日付</th><th>時刻</th><th>予定名</th><th>備考</th><th>編集</th>");
		out.println("</tr>");
【ここに入力】
		out.println("</table></body></html>");
	}
}
