package movie.movie.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.review.db.ReviewDAO;

public class ReviewDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" ReviewDeleteAction_excute() 실행 ");
		
		String M_num = request.getParameter("M_num");
		int Mem_num = Integer.parseInt(request.getParameter("Mem_num"));
		
		ReviewDAO dao = new ReviewDAO();
		dao.deleteReview(Mem_num, M_num);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.write("<script>");
		out.write("alert('리뷰 삭제 완료!');");
		out.write("history.back();");
		out.write("location.reload();");
		out.write("</script>");
		out.close();
		
		return null;
	}

}
