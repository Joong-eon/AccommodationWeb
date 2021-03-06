<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="/images/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/admin/layout.css">
	<link rel="stylesheet" href="/css/admin/promotion/event/reg.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="/js/admin/promotion/event/reg.js"></script>
    <title>이벤트 등록</title>
</head>
<body>
    <header class="sec-header-page">
        <section class="header-sec pcHeader">
            <div class="header-logo">
                <h1><a class="teum-logo" href="http://127.0.0.1:5500/main.html">틈</a></h1>
            </div>
            <div>
                <ul class="main-menu">
                    <li class="sub-page">
                        <a href="">로그인</a>
                    </li>
                </ul>
            </div>
        </section>
    </header>

	<main>
	    <section class="body">
	        <aside id="aside" class="aside">
	            <h1>프로모션 관리</h1>
	                <ul>
	                    <li><a href="/admin/promotion/goldenTime/list">골든타임 관리</a></li>
	                    <li class="active"><a href="/admin/promotion/event/list">이벤트 관리</a></li>
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
                                <li><i class="fas fa-home"></i>&nbsp;&nbsp;HOME&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-right"></i></li>
                                <li>&nbsp;&nbsp;&nbsp;프로모션 관리&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-right"></i></li>
                                <li>&nbsp;&nbsp;&nbsp;이벤트 관리&nbsp;&nbsp;&nbsp;</li>
                            </ul>
	                    </div>
	                    <h1>이벤트 등록</h1>
	                    <section class="form-sec">
	                        <form action="reg" method="post" class="reg-form" enctype="multipart/form-data">
	                            <table class="table">
	                                <tr>
	                                    <th class="col-m">제목</th>
	                                    <td class="col-l text-left">
	                                        <input type="text" name="title" class="input-title" autofocus required>
	                                        <input type="checkbox" name="open" value="1" class="checkbox-open"><span>즉시 공개</span>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th class="col-m">이벤트 기간</th>
	                                    <td class="col-l text-left">
                                            <input type="date" name="start-date" class="input-date start-date" required> ~ 
                                            <input type="date" name="end-date" class="input-date end-date" required>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th>첨부파일(타이틀용)</th>
	                                    <td class="text-left">
	                                        <input type="file" name="file">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th>첨부파일(컨텐츠용)</th>
	                                    <td class="text-left">
	                                        <input type="file" name="file">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <th>내용</th>
	                                    <td class="text-left">
	                                        <textarea class="textarea" cols="75" rows="25"></textarea>
	                                    </td>
	                                </tr>
	                            </table>
	                            <div>
	                                <input class="btn-submit" type="submit" value="등록" />
	                                <button class="btn-cancel" onclick="location.href='list'">취소</button>
	                            </div>
	                        </form>
	                    </section>
	                </div>
	            </main>
	        </div>
	    </section>
	</main>
</body>

</html>