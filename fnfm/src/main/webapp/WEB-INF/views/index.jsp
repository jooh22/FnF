<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Fishers N Farmers</title>
  </head>
  <body>
  
  <jsp:include page="header.jsp"></jsp:include>


  <!-- 슬라이드 사진  -->
  <section id="aa-slider">
    <div class="aa-slider-area">
      <div id="sequence" class="seq">
        <div class="seq-screen">
          <ul class="seq-canvas">
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/slider2.jpg" alt="Men slide img" />
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/slider1.jpg" alt="Wristwatch slide img" />
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/slider2.jpg" alt="Women Jeans slide img" />
              </div>
            </li>
            <!-- single slide item -->           
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/slider1.jpg" alt="Shoes slide img" />
              </div>
            </li>
            <!-- single slide item -->  
             <li>
              <div class="seq-model">
                <img data-seq src="img/slider/slider2.jpg" alt="Male Female slide img" />
              </div>
            </li>                   
          </ul>
        </div>
        <!-- slider navigation btn -->
        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
          <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a> 
        </fieldset>
      </div>
    </div>
  </section>


  <!-- 인기상품(MD's Pick) -->
  <section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
            	<h3><a href="#">MD's Pick</a></h3>
              <!-- promo left -->
              <div class="col-md-5 no-padding">                
                <div class="aa-promo-left">
                  <div class="aa-promo-banner">                    
                    <img src="img/mdpick1.jpg" alt="img">                    
                    <div class="aa-prom-content">
                      <!-- <span>75% Off</span> -->
                      <h4><a href="#">제품 이름(링크)</a></h4>                      
                    </div>
                  </div>
                </div>
              </div>
              <!-- promo right -->
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/mdpick.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <!-- <span>Exclusive Item</span> -->
                        <h4><a href="#">제품 이름</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/mdpick2.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <!-- <span>Sale Off</span> -->
                        <h4><a href="#">제품 이름</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/mdpick3.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <!-- <span>New Arrivals</span> -->
                        <h4><a href="#">제품 이름</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/mdpick4.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <!-- <span>25% Off</span> -->
                        <h4><a href="#">제품 이름</a></h4>                        
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
  </section>


  <!-- 메뉴 별 판매게시물  -->
  <section id="aa-product">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-product-area">
              <div class="aa-product-inner">
                <!-- start prduct navigation -->
                 <ul class="nav nav-tabs aa-products-tab">
                    <li class="active"><a href="#men" data-toggle="tab">농산물</a></li>
                    <li><a href="#women" data-toggle="tab">수산물</a></li>
                    <li><a href="#electronics" data-toggle="tab">가공식품</a></li>
                  </ul>
                  <div class="tab-content">


                    <!-- 농산물 -->
                    <div class="tab-pane fade in active" id="men">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a> 
                          </figure>
                          <figcaption>
                              <h4 class="aa-product-title"><a href="#">제품 이름</a></h4>
                              <span class="aa-product-price"><del>￦가격</del></span><span class="aa-product-price">&nbsp;&nbsp;￦할인 가격</span>
                            </figcaption>                                                
                          <span class="aa-badge aa-sale" href="#">SALE</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#">Sold Out</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                          <!-- product badge -->
                          <span class="aa-badge aa-hot" href="#">HOT</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                        </li>                        
                      </ul>
                      <a class="aa-browse-btn" href="productn.html">더 보기 <span class="fa fa-long-arrow-right"></span></a>
                    </div>
                    <!-- /농산물 -->
                    
                    <!-- 수산물-->
                    <div class="tab-pane fade" id="women">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-1.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#">SALE</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-2.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                          <!-- product badge -->
                           <span class="aa-badge aa-hot" href="#">HOT</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-3.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-4.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                          <!-- product badge -->
                          <span class="aa-badge aa-sold-out" href="#">Sold Out</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-5.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-6.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-7.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#">SALE</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/women/girl-1.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#">Sold Out</span>
                        </li>                       
                      </ul>
                      <a class="aa-browse-btn" href="products.html">더 보기 <span class="fa fa-long-arrow-right"></span></a>
                    </div>
                    <!-- /수산물-->

                    


                    <!-- 가공식품 -->
                    <div class="tab-pane fade" id="electronics">
                       <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-1.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#">SALE</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-2.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#">Sold Out</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-3.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-4.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                          <!-- product badge -->
                          <span class="aa-badge aa-hot" href="#">HOT</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-5.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-6.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                         
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-7.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#">SALE!</span>
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="img/electronics/electronic-8.png" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                          </figure>                          
                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#">Sold Out</span>
                        </li>                        
                      </ul>
                      <a class="aa-browse-btn" href="productg.html">더 보기 <span class="fa fa-long-arrow-right"></span></a>
                    </div>
                  </div>
                  <!-- 가공식품 -->

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / 메뉴 별 판매게시물 -->



  <!-- 인기 상품  -->
  <section id="aa-popular-category">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-popular-category-area">
              <!-- start prduct navigation -->
             <ul class="nav nav-tabs aa-products-tab">
                <li class="active"><a href="#" data-toggle="tab">인기 상품</a></li>
                <!-- <li><a href="#featured" data-toggle="tab">Featured</a></li>
                <li><a href="#latest" data-toggle="tab">Latest</a></li>    -->                 
              </ul>
              <!-- Tab panes -->
              <div class="tab-content">
                <!-- Start men popular category -->
                <div class="tab-pane fade in active" id="popular">
                  <ul class="aa-product-catg aa-popular-slider">

                    <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>                     
                      <!-- product badge -->
                      <span class="aa-badge aa-sale" href="#">SALE</span>
                    </li>

                     <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>                      
                      <!-- product badge -->
                       <span class="aa-badge aa-sold-out" href="#">Sold Out</span>
                    </li>
                    <!-- start single product item -->

                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>
                      <!-- product badge -->
                       <span class="aa-badge aa-sold-out" href="#">Sold Out</span>
                    </li>

                    <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>                     
                    </li>

                    <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>                      
                    </li>

                    <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>                     
                      <!-- product badge -->
                      <span class="aa-badge aa-hot" href="#">HOT</span>
                    </li>    

                    <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>                     
                      <!-- product badge -->
                      <span class="aa-badge aa-hot" href="#">HOT</span>
                    </li> 

                    <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href="#"><img src="img/farm/farm3.jpg" alt="polo shirt img"></a>
                        <a class="aa-add-card-btn"href="#"><span class="fa fa-search"></span>View Detail</a>
                      </figure>                     
                      <!-- product badge -->
                      <span class="aa-badge aa-sale" href="#">SALE</span>
                    </li>                                                                                   
                  </ul>
                  <a class="aa-browse-btn" href="#">더 보기 <span class="fa fa-long-arrow-right"></span></a>
                </div>
                <!-- / 인기 상품  -->
              </div>
            </div>
          </div> 
        </div>
      </div>
    </div>
  </section>



<jsp:include page="footer.jsp"></jsp:include>

  

  </body>
</html>