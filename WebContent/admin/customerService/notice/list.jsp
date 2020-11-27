<%@page import="com.teum.entity.Notice"%>
<%@page import="java.util.List"%>
<%@page import="com.teum.service.NoticeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	NoticeService service = new NoticeService();
	List<Notice> list =service.getList();
%>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/reset.css" type="text/css">
    <link rel="stylesheet" href="../../../css/jun.css">
    <link rel="stylesheet" href="../../../css/admin-form.css">
    <link rel="stylesheet" href="../../../css/admin/notice/list.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <title>noticeList</title>
</head>
<body>
    <div class="sec_header">
        <header class="header pcHeader">
            <div class="header_h1">
                <h1><a class="teum_logo" href="http://127.0.0.1:5500/main.html">틈</a></h1>
            </div>
            <div>
                <ul class="main_menu">
                    <li class="mypage"><a href="">로그아웃</a>
                        <div class="mega_menu">
                            <ul>
                                <li><a href="">submenu</a></li>
                                <li><a href="">submenu</a></li>
                                <li><a href="">submenu</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </header>
    </div>
    <section class="body">
        <aside id="aside" class="aside">
            <h1>고객센터</h1>
                <ul>
                    <li><a href="" class="active">공지사항</a></li>
                    <li><a href="">QnA</a></li>
                </ul>
        </aside>
        <div class="container">
            <nav id="nav" class="nav">
                <ul>
                    <li><a href=""><i class="fas fa-hotel"></i><span>업체관리</span></a></li>
                    <li><a href=""><i class="fas fa-user-circle"></i><span>회원관리</span></a></li>
                    <li><a href=""><i class="far fa-calendar-alt"></i><span>프로모션관리</span></a></li>
                    <li class="current-tab"><a href=""><i class="fas fa-headphones"></i><span>고객센터</span></a></li>
                </ul>
            </nav>
            <main id="main" class="main">
                <h1 class="d-none">공지사항</h1>
                <section class="sub-container">
                    <div class="breadcrumb">
                        <ul class="breadcrumb-list">
                            <li><i class="fas fa-home"></i>HOME ▶ </li>
                            <li>고객센터 ▶ </li>
                            <li>공지사항 리스트</li>
                        </ul>
                    </div>
                    <section class="list-board">
                        <h1>공지사항 리스트</h1>
                        <table>
                            <thead>
                                <tr>
                                    <td class="col-s">No.</td>
                                    <td class="col-m">제목</td>
                                    <td class="col-sm">날짜</td>
                                    <td class="col-sm">작성자</td>
                                    <td class="col-s"><input type="checkbox" class="selectAllMembers"></td>
                                </tr>
                            </thead>
                            <tbody>
                            	<% for(Notice n : list){ %>
                                <tr>
                                    <td><%= n.getId() %></td>
                                    <td><%=n.getTitle() %></td>
                                    <td>2020/11/01</td>
                                    <td><%=n.getWriterId() %></td>
                                    <td>
                                        <input type="checkbox" name="" class="memberChk" >
                                    </td>
                                </tr>
                                <%}%>
                                <tr class="btn-delete">
                                    <td colspan="5">
                                        <form action="">
                                            <input type="submit" value="생성">
                                            <input type="submit" value="수정">
                                            <input type="submit" value="삭제">
                                        </form>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <article class="d-none">
                        <p>
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore sit earum provident alias? Neque ex <br> molestias nostrum suscipit reprehenderit a ratione! Vitae neque quae enim temporibus non magnam quibusdam necessitatibus!
                        </p>
                    </article>
                    <section>
                        <h1 class="d-none">페이지 정보</h1>
                        <div>
                            1 / 2 pages
                        </div>
                    </section>
                    <section>
                        <h1 class="d-none">페이지 요청목록</h1>
                        <ul>
                            <li>1</li>
                            <li>2</li>
                        </ul>
                    </section>
                </section>
            </main>
        </div>
    </section>
    <script>
        var selectAll = document.querySelector(".selectAllMembers");
        selectAll.addEventListener('click', function(){
            var objs = document.querySelectorAll(".memberChk");
            for (var i = 0; i < objs.length; i++) {
              objs[i].checked = selectAll.checked;
            };
        }, false);
         
        var objs = document.querySelectorAll(".memberChk");
        for(var i=0; i<objs.length ; i++){
          objs[i].addEventListener('click', function(){
            var selectAll = document.querySelector(".selectAllMembers");
            for (var j = 0; j < objs.length; j++) {
              if (objs[j].checked === false) {
                selectAll.checked = false;
                return;
              };
            };
            selectAll.checked = true;                                   
        }, false);
        } 
      </script>
</body>
</html>