package handler.board;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;
import board.BoardDataBean;
import controller.CommandHandler;

public class ContentAction implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		//content�� num���� ��ü�� ���, writePro�� �׼��±׷� ��ü�� ����
		String boardid=request.getParameter("boardid");
		if(boardid==null) 
			boardid="1";
	
		int num=Integer.parseInt(request.getParameter("num"));
	
		String pageNum=request.getParameter("pageNum");
		//pageNum < �� ��� ���⸦ ���� �Ѿ�� 
		if(pageNum==null||pageNum==""){
			pageNum="1";
		}
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try{
			BoardDBBean dbPro=BoardDBBean.getInstance();
			BoardDataBean article=dbPro.getArticle(num,boardid,"content");
			//num,boardid,������ Ÿ�� ���ǿ� �´� BoardDataBean��ü�� �޾ƿ�
			int ref=article.getRef();
			int re_step=article.getRe_step();
			int re_level=article.getRe_level();
			request.setAttribute("article", article);
			request.setAttribute("pageNum", pageNum);
		}catch(Exception e){ e.printStackTrace();
		
		}
		
		
		return "/view/content.jsp";
		
	}

}
