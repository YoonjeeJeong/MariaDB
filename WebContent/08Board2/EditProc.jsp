<%@page import="model.BbsDAO"%>
<%@page import="model.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/isLogin.jsp"%>

<!-- 해당 파일내에서 bname에 대한 폼값을 받고 있음-->
<%@ include file="../common/isFlag.jsp"%>

<%
request.setCharacterEncoding("UTF-8"); 

//폼값받기
String num = request.getParameter("num");
String title = request.getParameter("title");
String content = request.getParameter("content");

BbsDTO dto = new BbsDTO();
dto.setNum(num);
dto.setTitle(title);
dto.setContent(content);

BbsDAO dao = new BbsDAO(application);

//dto객체를 dao로 전달하여 게시물 업데이트(수정)
int affected = dao.updateEdit(dto);
if(affected==1){
	//정상적으로 수정 되었다면 수정된 내용확인을 위해 상세보기로 이동
	response.sendRedirect("BoardView.jsp?bname="+bname + "&num=" + dto.getNum());
}
else{
%>
<script>
	alert("수정하기에 실패");
	history.go(-1);
</script>
<%
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
</head>
<body>

</body>
</html>