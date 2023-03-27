package movie.main.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.main.db.MovieDAO;

public class AdminBookingDelete implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
								 HttpServletResponse response) throws Exception {
		
		
		int B_num = Integer.parseInt(request.getParameter("B_num"));

		MovieDAO dao = new MovieDAO();
		dao.deleteBooking(B_num);
		
		System.out.println(B_num);
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminBookingList.mm");
		forward.setRedirect(true);
		
		return forward;
	}

}
