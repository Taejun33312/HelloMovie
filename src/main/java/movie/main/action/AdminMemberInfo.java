package movie.main.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.main.db.MovieDAO;

public class AdminMemberInfo implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = new ActionForward();
		if (id == null || !id.equals("admin")) {
			forward.setPath("./Login.me");
			forward.setRedirect(true);
			return forward;
		}
		MovieDAO dao = new MovieDAO();

		int cnt = dao.getMemberCount();

		int pageSize = 10;

		// 현페이지가 몇페이지 인가 판단
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;

		List memberList = dao.getMemberList(startRow, pageSize);

		int pageCount = cnt / pageSize + (cnt % pageSize == 0 ? 0 : 1);

		// 한 화면에 출력할 페이지 블럭의 개수
		int pageBlock = 3;

		// 페이지블럭 시작번호
		int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
		// 페이지블럭 끝번호
		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) {
			endPage = pageCount;
		}

		request.setAttribute("memList", memberList);

		request.setAttribute("pageNum", pageNum);
		request.setAttribute("cnt", cnt);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);

		forward.setPath("./admin_movie/adminMemberList.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
