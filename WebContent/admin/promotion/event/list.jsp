<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/admin/layout.css">
    <link rel="stylesheet" href="/css/admin/promotion/event/list.css">
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<script src="/js/admin/promotion/event/list.js"></script>
    <title>이벤트 리스트</title>
</head>
<body>
	<header class="sec-header">
        <div id="header" class="header">
            <div class="header-h1">
                <h1><a class="teum-logo" href="http://127.0.0.1:5500/main.html">틈</a></h1>
            </div>
            <div>
                <ul class="main-menu">
                    <li class="header-search"><input type="text"><a href=""><i class="fas fa-search"></i></a></li>
                    <li><a href="">공지사항</a></li>
                    <li><a href="">이벤트</a></li>
                    <li><a href="">더보기</a></li>
                    <li class="mypage"><a href="">로그인</a>
                        <div class="mega-menu">
                            <ul>
                                <li><a href="">submenu</a></li>
                                <li><a href="">submenu</a></li>
                                <li><a href="">submenu</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>
	<main>
	    <section class="body">
	        <aside id="aside" class="aside">
	            <h1>프로모션 관리</h1>
	                <ul>
	                    <li><a href="/admin/promotion/goldenTime/list">골든타임 관리</a></li>
	                    <li><a href="/admin/promotion/event/list" class="active">이벤트 관리</a></li>
	                </ul>
	        </aside>
	        <div class="container">
	            <nav id="nav" class="nav">
	                <ul>
	                    <li><a href="/admin/accommodations/list"><i class="fas fa-hotel"></i><span>업체관리</span></li></a>
	                    <li><a href="/admin/userInfo/list"><i class="fas fa-user-circle"></i><span> 회원관리</span></a></li>
	                    <li class="current-tab"><a href="/admin/promotion/goldenTime/list"><i class="far fa-calendar-alt"></i><span>프로모션관리</span></a></li>
	                    <li><a href="/admin/customerService/notice/list"><i class="fas fa-headphones"></i><span>고객센터</span></a></li>
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
	                    <h1>이벤트 리스트</h1>
	                    <section>
	                        <form action="delete" method="post" class="list-board">
	                        	<input type="hidden" name="eventNo" value="${ev.eventNo}">
	                            <table>
	                                <thead>
	                                    <tr>
	                                        <td class="col-s">No.</td>
	                                        <td class="col-s">진행상태</td>
	                                        <td class="col-m">종료일</td>
	                                        <td>제목</td>
	                                        <td class="col-m">작성자</td>
	                                        <td class="col-m">작성일</td>
	                                        <td class="col-s">공개<input type="checkbox" class="open-chk-all"></td>
	                                        <td class="col-s">삭제<input type="checkbox" class="del-chk-all"></td>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                	
                                	<c:forEach var="ev" items="${list}">
	                                	<c:choose>
	                                		<c:when test="${ev.status == 1}" >
	                                			<c:set var="status" value="진행중"/>
	                                		</c:when>
	                                		<c:otherwise>
	                                			<c:set var="status" value="종료"/>
	                                		</c:otherwise>
	                                	</c:choose>
	                                    <tr>
	                                        <td>${ev.eventNo}</td>
	                                        <td class="event-ing">${status}</td>
	                                        <td>${ev.endDate}</td>
	                                        <td class="text-left text-short"><a href="detail?eventNo=${ev.eventNo}">${ev.title}</a></td>
	                                        <td>관리자</td>
	                                        <td>${ev.regDate}</td>
	                                        <td><input type="checkbox" name="open" class="open-chk"></td>
	                                        <td><input type="checkbox" name="del" class="del-chk"></td>
	                                    </tr>
                                    </c:forEach>
	                                    
	                                    <tr>
	                                        <td colspan="8" class="no-border btn-row">
	                                            <input type="button" onclick="location.href='reg'" value="글쓰기">
	                                            <input type="submit" value="일괄공개">
	                                            <input type="submit" value="일괄삭제">
	                                        </td>
	                                    </tr>
	                                    <tr>
	                                    	<td colspan="8" class="no-border">
	                                    		<div class="pager-container">
						                            <div class="btn btn-prev">
						                                <span><a href="">이전</a></span>
						                            </div>
						                            <ul class="pager-list">
						                                <li class="active-page"><a href="">1</a></li>
						                                <li><a href="">2</a></li>
						                                <li><a href="">3</a></li>
						                                <li><a href="">4</a></li>
						                                <li><a href="">5</a></li>
						                                <li><a href="">6</a></li>
						                                <li><a href="">7</a></li>
						                                <li><a href="">8</a></li>
						                                <li><a href="">9</a></li>
						                                <li><a href="">10</a></li>
						                            </ul>
						                            <div class="btn btn-next">
						                                <span><a href="">다음</a></span>
						                            </div>
						                       	</div>
	                                    	</td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                        </form>
	                    </section>
	                </div>
	            </main>
	        </div>
	    </section>
	</main>
	
</body>

</html>