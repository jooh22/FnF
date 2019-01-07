<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피셔스 앤 파머스</title>
<!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
   <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">
    <!-- Main style sheet -->
    <link href="css/style1.css" rel="stylesheet">    
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="css/sidebar.css" rel="stylesheet">
    
</head>
<body>
<!-- ---------------------------------------------------------------------- -->
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">
              </div>

              <!-- 상단바 로그인  -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                  <li><a href="#">로그인</a></li>
                  <li class="hidden-xs"><a href="#">회원가입</a></li>
                  <li class="hidden-xs"><a href="#">고객센터</a></li>
                  <!-- <li class="hidden-xs"><a href="#">마이페이지</a></li> -->
                  <!-- <li class="hidden-xs"><a href="checkout.html">Checkout</a></li> -->
                  <li><a href="#" data-toggle="modal" data-target="#login-modal">마이페이지</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- 로그인 확인창 -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>로그인이 필요한 서비스입니다.<br/>로그인 하시겠습니까?</h4>
          <button class="aa-browse-btn" type="submit">로그인</button>
          <button class="aa-browse-btn" type="button" data-dismiss="modal" aria-hidden="true">취소</button>
          <form class="aa-login-form" action="">
            <div class="aa-register-now">
              <a href="#">회원가입 하러가기</a>
            </div>
          </form>
        </div>                        
      </div>
    </div>
  </div>  


    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- 로고 -->
              <div class="aa-logo">
                <a href="index.html">
                  <!-- <strong>Fishers N Farmers</strong> -->
                </a>
                <!-- img -->
                <a href="index.html"><img src="img/logo.png" alt="logo img"></a>
              </div>

               <!-- 장바구니  -->
              <div class="aa-cartbox">
                <a class="aa-cart-link" href="#">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">SHOPPING CART</span>
                  <!-- <span class="aa-cart-notify">2</span> -->
                </a>
                <div class="aa-cartbox-summary">
                  <ul>
                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="img/cart.jpg" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#">제품 이름</a></h4>
                        <p>1 x ￦30,000</p>
                      </div>
                      <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                    </li>
                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="img/cart1.jpg" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#">제품 이름</a></h4>
                        <p>1 x ￦3,500</p>
                      </div>
                      <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                    </li>                    
                    <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                      <span class="aa-cartbox-total-price">
                        ￦33,500
                      </span>
                    </li>
                  </ul>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="checkout.html">Checkout</a>
                </div>
              </div>


              <!-- 검색 창 -->
              <div class="aa-search-box">
                <form action="">
                  <input type="text" name="" id="" placeholder="검색어 입력">
                  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>          
            </div>
          </div>
        </div>
      </div>
    </div>


  <!-- 메뉴 -->
  </header>
  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <ul class="nav navbar-nav">
              <!-- <li><a href="index.html">Home</a></li> -->
              <!-- <li><a href="index.html">전체상품</a></li> -->
              <li><a href="#">농산물<span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">채소</a></li>
                  <li><a href="#">과일</a></li>
                  <li><a href="#">쌀·잡곡류</a></li>
                  <li><a href="#">견과류</a></li>                                                
                </ul>
              </li>
              <li><a href="#">수산물 <span class="caret"></span></a>
                <ul class="dropdown-menu">  
                  <li><a href="#">생선</a></li>                                                                
                  <li><a href="#">갑각류</a></li>              
                  <li><a href="#">해조류</a></li>
                  <li><a href="#">건어물</a></li>
                </ul>
              </li>
              <li><a href="#">가공식품 <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">즙류</a></li>
                  <li><a href="#">분말류</a></li>
                  <li><a href="#">잼류</a></li>
                </ul>
              </li>
             <li><a href="#">추천상품 <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">농산물</a></li>
                  <li><a href="#">수산물</a></li>
                  <li><a href="#">가공식품</a></li>               
                </ul>
              </li>
              <li><a href="#">인기상품 <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">농산물</a></li>
                  <li><a href="#">수산물</a></li>  
                  <li><a href="#">가공식품</a></li>                 
                </ul>
              </li>
              <li><a href="#">Event</span></a>
                <!-- <ul class="dropdown-menu">                
                  <li><a href="#">진행중인 이벤트</a></li>
                  <li><a href="#">지난 이벤트</a></li>              
                </ul> -->
              </li>
            </ul>
          </div>
        </div>
      </div>       
    </div>
  </section>





<!-- ------------------------------------------------------------------------------- -->

<section id="aa-popular-category" style="
    padding-top: 0px;
    padding-bottom: 0px;
">
	<div id="wrapper">
		<!-- 사이드바 -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li><img src="img/user.png" id="us"
					class="img-reponsive img-circle" width="100px" height="100px">
				</li>
				<li><a href="#">[상품관리]</a></li>
				<li><a href="selectproduct.html">상품리스트[수정:삭제]</a></li>
				<li><a href="#">상품등록</a></li>
				<li><a href="#"><hr></a></li>
				<li><a href="#">[주문관리]</a></li>
				<li><a href="selectorder.html">전체주문관리</a></li>
				<li><a href="#"><hr></a></li>
				<li><a href="#">[취소|교환|반품|환불]</a></li>
				<li><a href="productcancel.html">취소내역</a></li>
				<li><a href="#">교환내역</a></li>
				<li><a href="#">반품내역</a></li>
				<li><a href="#">환불내역</a></li>
			</ul>
		</div>

		<!-- 본문 -->

		<h1>상품 관리</h1>
			<h3>상품등록</h3>
			<hr>
			<form action="/FNF/productInsert_ok.jsp" method="post" enctype="multipart/form-data">
			
				<ul style="list-style-type: none; margin: 10px 0px">
				<div class="input-group">
					  <span class="input-group-addon" id="sizing-addon2">상품종류</span>
					  <select class="form-control" name="category" id="category">
					  	  <option>--선택--</option>
						  <option>농산물</option>
						  <option>수산물</option>
						</select>
					</div>
					
					<input type="hidden" name="sellerid" value="김민호"/>
					<!-- ${sessionScope.sellerid} -->
					
					<div class="input-group">
					  <span class="input-group-addon" id="sizing-addon2">상품코드</span>
					  <input type="text" class="form-control"  name="pcode"  aria-describedby="sizing-addon2">
					</div>
					<div class="input-group">
					  <span class="input-group-addon" id="sizing-addon2">상품명</span>
					  <input type="text" class="form-control"  name="pname"  aria-describedby="sizing-addon2">
					</div>
					<div class="input-group">
					  <span class="input-group-addon" id="sizing-addon2">원산지</span>
					  <input type="text" class="form-control"  name="origin"  aria-describedby="sizing-addon2">
					</div>
					<div class="input-group">
					  <span class="input-group-addon" id="sizing-addon2">단위</span>
					  <input type="text" class="form-control"  name="unit"  aria-describedby="sizing-addon2">
					</div>
					<div class="input-group">
					  <span class="input-group-addon" id="sizing-addon2">재고</span>
					  <input type="text" class="form-control"  name="stock"  aria-describedby="sizing-addon2">
					</div>
					<div class="input-group">
					  <span class="input-group-addon" id="sizing-addon2">판매가</span>
					  <input type="text" class="form-control"  name="price"  aria-describedby="sizing-addon2">
					</div>
					
					<textarea class="form-control" name="pcontents" rows="5" placeholder="내용"></textarea>
					
					<div class="form-group">
						    <label for="exampleFormControlFile1">상품 이미지1</label>
						    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="filename" >
					</div>
					
				</ul>
				<hr>
				<div style="text-align: center;">
					<button type="submit" class="btn btn-primary btn-lg">등록하기</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger btn-lg">취소하기</button>
				</div>
			</form>

		<!-- /본문 -->
	</div>
	</section>
	
	<!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Main Menu</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">Our Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Knowledge Base</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Delivery</a></li>
                      <li><a href="#">Returns</a></li>
                      <li><a href="#">Services</a></li>
                      <li><a href="#">Discount</a></li>
                      <li><a href="#">Special Offer</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Useful Links</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Site Map</a></li>
                      <li><a href="#">Search</a></li>
                      <li><a href="#">Advanced Search</a></li>
                      <li><a href="#">Suppliers</a></li>
                      <li><a href="#">FAQ</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p> 25 Astor Pl, NY 10003, USA</p>
                      <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                      <p><span class="fa fa-envelope"></span>dailyshop@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Designed by <a href="http://www.markups.io/">MarkUps.io</a></p>
            <div class="aa-footer-payment">
              <span class="fa fa-cc-mastercard"></span>
              <span class="fa fa-cc-visa"></span>
              <span class="fa fa-paypal"></span>
              <span class="fa fa-cc-discover"></span>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="js/sequence.js"></script>
  <script src="js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="js/custom.js"></script> 
</body>
</html>