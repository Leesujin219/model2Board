package handler.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
//웹 > 소스보기 해서 hidden에 있는 값 넘어가는지 확인가능
public class DeleteFormAction implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int num=Integer.parseInt(req.getParameter("num"));
		String pageNum=req.getParameter("pageNum");
		req.setAttribute("num", num);
		req.setAttribute("pageNum", pageNum);
		return "/view/deleteForm.jsp";
	}

}
