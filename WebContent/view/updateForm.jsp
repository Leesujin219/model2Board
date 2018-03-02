<%@page import="board.BoardDataBean"%>
<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>	


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
</head>

	<body>
	<div class="w3-container">
	<!-- writeForm의 폼문 가져옴 -->
		<center><b>글수정</b>
	<br>
	<form method="post" name="writeform" action="updatePro" >
	<input type="hidden" name="ref" value="${article.ref }">
	<input type="hidden" name="re_step" value="${article.re_step}">
	<input type="hidden" name="re_level" value="${article.re_level}">
	
	
	<input type="hidden" name="boardid" value="${boardid }">	
	<input type="hidden" name="num" value="${article.num }">
	<input type="hidden" name="pageNum" value="${pageNum }">
	<!-- post 방식으로 값 넘겨주는 방법 > hidden. num,boardid,pageNum을 form에 채운 것-->
	<table class="w3-table-all"  style="width:70%;" >
	   <tr>
	    <td align="right" colspan="2" >
		    <a href="list.jsp"> 글목록</a> 
	   </td>
	   </tr>
	   <tr>
	    <td  width="70"   align="center">이 름</td>
	    <td  width="330">
	  <!-- value값을 넣어줌 -->
	       <input type="text" size="10" maxlength="10" name="writer" value="${article.writer }"></td>
	  </tr>
	  <tr>
	    <td  width="70"   align="center" >제 목
	    </td>
	    <td width="330">
	       <input type="text" size="40" maxlength="50" name="subject" value="${article.subject }">   
	   </td>
	  </tr>
	  <tr>
	    <td  width="70"   align="center">Email</td>
	    <td  width="330">
	       <input type="text" size="40" maxlength="30" name="email" value="${article.email }"></td>
	  </tr>
	  <tr>
	    <td  width="70"   align="center" >내 용</td>
	    <td  width="330" ><!-- textarea는 아래와 같이 value 값을 채워야함. 띄어쓰기 하지 말 것 -->
	     <textarea name="content" rows="13" cols="40">${article.content }</textarea> </td>
	  </tr>
	  <tr>
	    <td  width="70"   align="center" >비밀번호</td>
	    <td  width="330" >
	     <input type="password" size="8" maxlength="12" name="passwd" value="${article.passwd }"> 
		 </td>
	  </tr>
	<tr>      
	 <td colspan=2  align="center"> 
	  <input type="submit" value="글쓰기" >  
	  <input type="reset" value="다시작성">
	  <input type="button" value="목록보기" OnClick="window.location='list'">
	  <!-- pageNum 안넘겨줌 (list에서 pageNum=1이 될것) -->
	</td></tr></table>    
	     
	</form></center>
		
		
	</div>


</body>
</html>