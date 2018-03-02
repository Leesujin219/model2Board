package handler.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;
import board.BoardDataBean;
import controller.CommandHandler;

public class UpdateProAction implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String boardid = req.getParameter("boarid");
		if (boardid==null) 
			boardid = "1";
		String pageNum = req.getParameter("pageNum");
	  	if (pageNum == null || pageNum == "") 
			pageNum = "1";	
	  	BoardDataBean article=new BoardDataBean();
	  	if(req.getParameter("num")!=null && !req.getParameter("num").equals("")) {
			article.setNum(Integer.parseInt(req.getParameter("num")));
			article.setRef(Integer.parseInt(req.getParameter("ref")));
			article.setRe_step(Integer.parseInt(req.getParameter("re_step")));
			article.setRe_level(Integer.parseInt(req.getParameter("re_level")));
			//updateForm 문에서 데이터 안넘어가서 에러남(updateform에서 hidden으로 넘어가게 수정함)
		}
		article.setBoardid(boardid);
		article.setWriter(req.getParameter("writer"));
		article.setEmail(req.getParameter("email"));
		article.setSubject(req.getParameter("subject"));
		article.setPasswd(req.getParameter("passwd"));
		article.setContent(req.getParameter("content"));
		article.setIp(req.getRemoteAddr());
	  	System.out.println(article);
	  	
	  	BoardDBBean dbPro=BoardDBBean.getInstance(); //인스턴스 가져옴
		int chk=dbPro.updateArticle(article);
		req.setAttribute("chk", chk);
		req.setAttribute("pageNum", pageNum);
		return "/view/updatePro.jsp";
	}

}
