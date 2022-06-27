package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardPostServlet
 */
@WebServlet("/board/BoardPost")
public class BoardPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		BoardMgr bMgr = new BoardMgr();  // DB 관련 라이브러리
		bMgr.insertBoard(request);  // post에서 받아온 값(request)을 insertBoard의 매개변수로 전달
		response.sendRedirect("list.jsp");  // list.jsp 페이지로 이동
	}

}
