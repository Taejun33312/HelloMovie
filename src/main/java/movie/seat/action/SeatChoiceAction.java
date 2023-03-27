package movie.seat.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.movie.db.MovieDAO;
import movie.movie.db.TimeDTO;
import movie.seat.db.SeatDAO;
import movie.seat.db.SeatDTO;
import project.movie.screen.db.ScreenDAO;
import project.movie.screen.db.ScreenDTO;

public class SeatChoiceAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : SeatChoiceAction_execute() 실행 ");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		
		ActionForward forward = new ActionForward();
		if(id == null) {
			forward.setPath("./Login.me");
			forward.setRedirect(true);
			
			return forward;
		}
		
		String M_num = request.getParameter("M_num");
		int T_num = Integer.parseInt(request.getParameter("T_num"));
		String Sc_num = request.getParameter("Sc_num");
		
		System.out.println(Sc_num);
		System.out.println(T_num);
		System.out.println(M_num);
		
		SeatDTO dto = new SeatDTO();
		SeatDAO dao = new SeatDAO();
		
		List SList = dao.getSeatStatus(Sc_num, T_num, M_num);
		
		MovieDAO mdao = new MovieDAO();
		String M_name = mdao.getMovieName(M_num);
		TimeDTO tdto = mdao.getTime(T_num);
		
		ScreenDAO Scdao = new ScreenDAO();
		ScreenDTO Scdto = Scdao.screendetail(Sc_num);
		
		System.out.println(M_name);
		System.out.println("SList:"+SList.size());
		request.setAttribute("Scdto", Scdto);
		request.setAttribute("tdto", tdto);
		request.setAttribute("SList", SList);
		request.setAttribute("T_num", T_num);
		request.setAttribute("Sc_num", Sc_num);
		request.setAttribute("M_name", M_name);
		
		
		forward.setPath("./seat/seat.jsp");
		forward.setRedirect(false);
		
		
		return forward;
	}

}
