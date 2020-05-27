<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
<%
//폼값 받기 - 파라미터로 전달된 게시물의 일련번호
String num = request.getParameter("num");
BbsDAO dao = new BbsDAO(application);

//게시물을 가져와서 dto객체로 반환
BbsDTO dto = dao.selectView(num);
dao.close();
%>
 --%>


	<div class="row">		
		<div class="col-12">			 
			<!-- 
				.bg-primary, .bg-success, .bg-info, .bg-warning, .bg-danger, .bg-secondary, 
				.bg-dark, .bg-light
			-->
			<nav class="navbar navbar-expand-sm bg-light navbar-dark">
				<!-- Brand/logo -->
				<a class="navbar-brand" href="#">
					<img src="http://www.ikosmo.co.kr/images/common/logo_center_v2.jpg" style="width:150px;">
				</a>
				
				<!-- Links -->
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link text-dark" href="../08Board2/BoardList.jsp?bname=freeboard">자유게시판</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="../08Board2/BoardList.jsp?bname=notice">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="../08Board2/BoardList.jsp?bname=qna">질문과 답변</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="../08Board2/BoardList.jsp?bname=faq">FAQ</a>
					</li>
				</ul>

				<form class="form-inline mt-3 ml-3" method="get" action="">
					<div class="input-group mb-3">
					<%--여기 000님 로그인 중으로 나오도록 변견 --%>
					<% if(session.getAttribute("USER_ID")!=null){ %>
						<h5 class="ml-4"><%=session.getAttribute("USER_NAME") %>님,
							로그인 하셨습니다.</h5>
							<%} %>
					<%-- 
					<div class="input-group mb-3">
						<td><%=dto.getName() %>님이 로그인했음 << 페이지가 넘어가지 않는 경우에는 이걸 써도 괜찮다</td>
					</div>
					 --%>		
						<!-- <input type="text" class="form-control" placeholder="Search">
						<div class="input-group-append">
							<button class="btn btn-warning" type="submit"><i class='fas fa-search' style='font-size:20px'></i></button>
						</div> -->
					<%--여기 변경 --%>	
					</div>
				</form>
				<ul class="navbar-nav ml-auto" >
				<% if(session.getAttribute("USER_ID")==null){ %>
					<li class="nav-item"><!-- 회원가입 -->
						<a class="nav-link text-dark" href="#"><i class='fas fa-edit' style='font-size:20px'></i>회원가입</a>
					</li>
					<li class="nav-item"><!-- 로그인 -->
						<a class="nav-link text-dark" href="../06Session/Login.jsp"><i class='fas fa-sign-in-alt' style='font-size:20px'></i>로그인</a>
					</li>
					<%} 
						else { %> <!-- 회원정보 수정 -->
					<li class="nav-item">
						<a class="nav-link text-dark" href="#"><i class='fa fa-cogs' style='font-size:20px'></i>회원정보수정</a>
					</li>
					
					<li class="nav-item"><!-- 로그아웃 -->
						<a class="nav-link text-dark" href="../06Session/Logout.jsp"><i class='fas fa-sign-out-alt' style='font-size:20px'></i>로그아웃</a>
					</li>
					<%} %>
				</ul>
			</nav>
		</div>
	</div>