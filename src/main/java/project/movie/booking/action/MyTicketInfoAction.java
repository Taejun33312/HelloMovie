package project.movie.booking.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.movie.booking.db.BookingDAO;

public class MyTicketInfoAction implements Action {

	@Override
	public ActionForward execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" MyTicketInfoAction_execute() 호출 ");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		int Mem_num = (int) session.getAttribute("Mem_num");

		ActionForward forward = new ActionForward();
		
		if(id == null) { // 로그인 안 됐을때
			forward.setPath("./Login.mm");
			forward.setRedirect(true);
			return forward;
		}
		
		BookingDAO bdao = new BookingDAO();
		
		List totalList = bdao.myTicketInfo(Mem_num);
		
		request.setAttribute("totalList", totalList);
		
		System.out.println(totalList);

		forward.setPath("./booking/myTicket.jsp");
		forward.setRedirect(false); 
		
		return forward;
		
	}

}
