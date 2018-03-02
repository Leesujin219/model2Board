package handler.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;
import controller.CommandHandler;

public class DeleteProAction implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse res) throws Exception {
		String boardid=request.getParameter("boardid");
		if(boardid==null)
			boardid="1";
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null)
			pageNum="1";
		int num=Integer.parseInt(request.getParameter("num"));
		String passwd=request.getParameter("passwd");
		
		BoardDBBean dbPro=BoardDBBean.getInstance();
		int check=dbPro.deleteArticle(num, passwd, boardid);
		request.setAttribute("check", check);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("boardid", boardid);
		
		return "/view/deletePro.jsp";
	}

}
