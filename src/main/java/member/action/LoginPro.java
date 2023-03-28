package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginPro implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" LoginPro_execute() 실행 ");
		
		String referer = request.getHeader("Referer");
		System.out.println(referer);
		
		request.setAttribute("referer", referer);
		ActionForward forward = new ActionForward();
		forward.setPath("./member/loginForm.jsp");
		forward.setRedirect(false); 
		
		
		return forward;
	}

}
