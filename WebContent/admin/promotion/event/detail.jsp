<%@page import="com.teum.entity.Event"%>
<%@page import="java.util.List"%>
<%@page import="com.teum.service.EventService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	EventService service = new EventService();
	List<Event> list = service.getList();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/reset.css">
    <link rel="stylesheet" href="../../../css/admin/promotion/event/detail.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <title>이벤트 상세페이지</title>
</head>
<body>
    <header id="header" class="header">
        <h1><a href="http://127.0.0.1:5500/main.html">틈</a></h1>
        <nav>
            <h1>메인메뉴</h1>
            <ul>
                <li><a href="">공지사항</a></li>
                <li><a href="">이벤트</a></li>
                <li><a href="">더보기</a></li>
                <li><a href="">로그인</a></li>
            </ul>
        </nav>
    </header>

    <section class="body">
        <aside id="aside" class="aside">
            <h1>프로모션 관리</h1>
                <ul>
                    <li><a href="">골든타임 관리</a></li>
                    <li><a href="" class="active">이벤트 관리</a></li>
                </ul>
        </aside>
        <div class="container">
            <nav id="nav" class="nav">
                <ul>
                    <li><a href=""><i class="fas fa-hotel"></i><span>업체관리</span></li></a>
                    <li><a href=""><i class="fas fa-user-circle"></i><span> 회원관리</span></a></li>
                    <li class="current-tab"><a href=""><i class="far fa-calendar-alt"></i><span>프로모션관리</span></a></li>
                    <li><a href=""><i class="fas fa-headphones"></i><span>고객센터</span></a></li>
                </ul>
            </nav>
            <main id="main" class="main">
                <div class="sub-container">
                    <div class="breadcrumb">
                        <ul class="breadcrumb-list">
                            <li><i class="fas fa-home"></i>HOME ▶ </li>
                            <li>프로모션관리 ▶ </li>
                            <li>이벤트 관리</li>
                        </ul>
                    </div>
                    <section class="img-sec">
                        <div class="img-container">
                            <img src="../../../images/event/detail1.png" alt="">
                            <!-- <img src="../../../images/event/detail2.png" alt="">
                            <img src="../../../images/event/detail3.png" alt="">
                            <img src="../../../images/event/detail4.png" alt="">
                            <img src="../../../images/event/detail5.png" alt="">
                            <img src="../../../images/event/detail6.png" alt=""> -->
                        </div>
                    </section>
                    <section class="page-list-sec">
                    	<%Event e1 = list.get(1); %> <!-- 일단 1로 넣어놓음 -->
                    	<%Event e2 = list.get(2); %> <!-- 일단 1로 넣어놓음 -->
                		<div class="page next-page">
                            <a href="">
                                <span class="page-direction">다음글</span>
                                <span class="page-title"><%=e1.getTitle() %></span>
                                <span class="page-date">기간: <%=e1.getStartDate() %> ~ <%=e1.getEndDate() %></span>
                            </a>
                        </div>
                    	<div class="page prev-page">
                            <a href="">
                                <span class="page-direction">이전글</span>
                                <span class="page-title"><%=e2.getTitle() %></span>
                                <span class="page-date">기간: <%=e2.getStartDate() %> ~ <%=e2.getEndDate() %></span>
                            </a>
                        </div>
                        <div class="btn-container">
                            <button class="btn-list" onclick="location.href='list.jsp'">목록보기</button>
                        </div>
                    </section>
                </div>
            </main>
        </div>
    </section>
</body>

</html>