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
	<!-- writeForm�� ���� ������ -->
		<center><b>�ۼ���</b>
	<br>
	<form method="post" name="writeform" action="updatePro" >
	<input type="hidden" name="ref" value="${article.ref }">
	<input type="hidden" name="re_step" value="${article.re_step}">
	<input type="hidden" name="re_level" value="${article.re_level}">
	
	
	<input type="hidden" name="boardid" value="${boardid }">	
	<input type="hidden" name="num" value="${article.num }">
	<input type="hidden" name="pageNum" value="${pageNum }">
	<!-- post ������� �� �Ѱ��ִ� ��� > hidden. num,boardid,pageNum�� form�� ä�� ��-->
	<table class="w3-table-all"  style="width:70%;" >
	   <tr>
	    <td align="right" colspan="2" >
		    <a href="list.jsp"> �۸��</a> 
	   </td>
	   </tr>
	   <tr>
	    <td  width="70"   align="center">�� ��</td>
	    <td  width="330">
	  <!-- value���� �־��� -->
	       <input type="text" size="10" maxlength="10" name="writer" value="${article.writer }"></td>
	  </tr>
	  <tr>
	    <td  width="70"   align="center" >�� ��
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
	    <td  width="70"   align="center" >�� ��</td>
	    <td  width="330" ><!-- textarea�� �Ʒ��� ���� value ���� ä������. ���� ���� �� �� -->
	     <textarea name="content" rows="13" cols="40">${article.content }</textarea> </td>
	  </tr>
	  <tr>
	    <td  width="70"   align="center" >��й�ȣ</td>
	    <td  width="330" >
	     <input type="password" size="8" maxlength="12" name="passwd" value="${article.passwd }"> 
		 </td>
	  </tr>
	<tr>      
	 <td colspan=2  align="center"> 
	  <input type="submit" value="�۾���" >  
	  <input type="reset" value="�ٽ��ۼ�">
	  <input type="button" value="��Ϻ���" OnClick="window.location='list'">
	  <!-- pageNum �ȳѰ��� (list���� pageNum=1�� �ɰ�) -->
	</td></tr></table>    
	     
	</form></center>
		
		
	</div>


</body>
</html>