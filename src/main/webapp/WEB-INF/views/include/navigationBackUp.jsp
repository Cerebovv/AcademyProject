<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<% if(com.game.web.util.CookieUtil.getCookie(request,
(String)request.getAttribute("AUTH_COOKIE_NAME")) != null) { %>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-lg-2" style="padding: 15px">
        <div class="header__logo" style="padding: 0;">
          <a href="/index">
            <img src="/resources/icon/logo.png" alt="" />
          </a>
        </div>
      </div>
      <div class="col-lg-8" style="flex: 0 0 75%; max-width: 75%">
        <div class="header__nav">
          <nav class="header__menu mobile-menu">
            <ul>
              <li>
                <a href="/store"
                  >스토어<span class="arrow_carrot-down"></span
                ></a>
                <ul class="dropdown">
                  <li><a href="/store?tagParentNum=0100">액션</a></li>
                  <li><a href="/store?tagParentNum=0200">레이싱</a></li>
                  <li><a href="/store?tagParentNum=0300">FPS</a></li>
                  <li><a href="/store?tagParentNum=0400">시뮬레이션</a></li>
                </ul>
              </li>
              <li><a href="/board/qna">문의</a></li>
              <li><a href="/board/notice">공지사항</a></li>
              <li>
                <a href="/user/myPage"
                  >마이페이지<span class="arrow_carrot-down"></span
                ></a>
                <ul class="dropdown">
                  <li><a href="/user/userUpdate">회원정보수정</a></li>
                  <li><a href="/user/library">보유게임</a></li>
                  <li><a href="/user/point">포인트 상세내역</a></li>
                </ul>
              </li>
              <li><a href="/user/cart">장바구니</a></li>
              <li>
                <div class="search__head">
                  <input
                    type="text"
                    placeholder="스토어 검색"
                    id="productSearch"
                  />
                  <a id="search" onclick="fn_nameSearch()" href="javascript:void(0)">
                    <img
                      src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
                    />
                  </a>
                </div>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    <div id="mobile-menu-wrap"></div>
  </div>
  <div class="login__header__right">
    <a href="/user/loginOutProc"><span class="icon_profile">로그아웃</span></a>
  </div>
</header>

<!-- Header End -->
<% } else { %>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-lg-2">
        <div class="header__logo">
          <a href="/index">
            <img src="/resources/icon/logo.png" alt="" />
          </a>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="header__nav">
          <nav class="header__menu mobile-menu">
            <ul>
              <li class="active">
                <a href="/store"
                  >스토어<span class="arrow_carrot-down"></span
                ></a>
                <ul class="dropdown">
                  <li><a href="/store?tagParentNum=0100">액션</a></li>
                  <li><a href="/store?tagParentNum=0200">레이싱</a></li>
                  <li><a href="/store?tagParentNum=0300">FPS</a></li>
                  <li><a href="/store?tagParentNum=0400">시뮬레이션</a></li>
                </ul>
              </li>
              <li><a href="/board/qna">문의</a></li>
              <li><a href="/board/notice">공지사항</a></li>
              <li>
                <div class="search__head">
                  <input type="text" placeholder="스토어 검색" id="productSearch" />
                  <a id="search" onclick="fn_nameSearch()" href="javascript:void(0)">
                    <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" />
                  </a>
                </div>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    <div id="mobile-menu-wrap"></div>
  </div>
  <div class="login__header__right">
    <a href="/user/login"><span class="icon_profile">로그인</span></a>
  </div>
</header>
<!-- Header End -->
<% } %>
<script>
$(document).ready(function(){
	$("#productSearch").keyup(function(event)
			{
		        if (event.which === 13)
		        {
		            $("#search").click();
		        }
		    });
});
  function fn_nameSearch() {
    const productName = $("#productSearch").val();
    location.href = `/store?productName=${"${productName}"}`;
  }
</script>
