package handler.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;
import board.BoardDataBean;
import controller.CommandHandler;

public class UpdateFormAction implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub

		String boardid=request.getParameter("boardid");
		if(boardid==null)
			boardid="1";
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null||pageNum==""){
			pageNum="1";
		}
		
		int num=Integer.parseInt(request.getParameter("num"));
		try{
			BoardDBBean dbPro=BoardDBBean.getInstance();
			BoardDataBean article=dbPro.getArticle(num,boardid,"update");
	
		request.setAttribute("article", article);
		request.setAttribute("boardid", boardid);
		request.setAttribute("pageNum", pageNum);
		}catch(Exception e){}
	
		
		return "/view/updateForm.jsp";
	
	}

}
