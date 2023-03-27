package movie.main.action;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import movie.main.db.MovieDAO;
import movie.main.db.MovieDTO;
import movie.movie.action.NaverAPI;
import movie.movie.db.NaverAPIDTO;
import movie.review.db.ReviewDAO;
public class MovieMainAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request,
								 HttpServletResponse response) throws Exception {
		System.out.println("MovieMainAction_execute 호출");
		
		
		movie.movie.db.MovieDAO dao = new movie.movie.db.MovieDAO();
		movie.movie.db.MovieDTO dto = new movie.movie.db.MovieDTO();
		NaverAPIDTO Ndto = new NaverAPIDTO();
		NaverAPI api = new NaverAPI();
		
		List dailyList = dao.getmovieAPI();
		List imgList = new ArrayList<>();
		
		for(int i=0; i<dailyList.size();i++) {
			dto = (movie.movie.db.MovieDTO)dailyList.get(i);
			Ndto = api.getNaverAPI(dto.getM_name());
			imgList.add(Ndto.getImg());
		}
		
		
		request.setAttribute("dailyList", dailyList);
		request.setAttribute("imgList", imgList);
		
		MovieDAO dao2 = new MovieDAO();
		
		List movieList = dao2.MList();
		
		
		
		request.setAttribute("movieList", movieList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./main/main.jsp");
		forward.setRedirect(false);
		return forward;
		
	}
}