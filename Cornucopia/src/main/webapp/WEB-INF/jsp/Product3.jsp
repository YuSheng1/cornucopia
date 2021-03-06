<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>企业网站模板</title>
  <link rel="stylesheet" href="../assets/css/amazeui.css" />
  <link rel="stylesheet" href="../assets/css/common.min.css" />
  <link rel="stylesheet" href="../assets/css/product.min.css" />
</head>
<body>
  <div class="layout">
    <!--===========layout-header================-->
    <div class="layout-header am-hide-sm-only">
      <!--topbar start-->
      <div class="topbar">
        <div class="container">
          <div class="am-g">
            <div class="am-u-md-3">
              <div class="topbar-left">
                <i class="am-icon-globe"></i>
                <div class="am-dropdown" data-am-dropdown>
                  <button class="am-btn am-btn-primary am-dropdown-toggle" data-am-dropdown-toggle>Language<span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="#">English</a></li>
                    <li class="am-divider"></li>
                    <li><a href="#">中文</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="am-u-md-9">
              <div class="topbar-right am-text-right am-fr">
                加入我们
                <i class="am-icon-facebook"></i>
                <i class="am-icon-twitter"></i>
                <i class="am-icon-google-plus"></i>
                <i class="am-icon-pinterest"></i>
                <i class="am-icon-instagram"></i>
                <i class="am-icon-linkedin"></i>
                <i class="am-icon-youtube-play"></i>
                <i class="am-icon-rss"></i>
                	<c:if test="${empty Lname}">  <a href="/Cornucopia/item/Login1">登录</a> <a
									href="/Cornucopia/item/Register">注册</a></c:if>	
									<c:if test="${not empty Lname}"> 欢迎您: ${Lname}
 <a
									href="/Cornucopia/item/Login1">退出登陆</a>
</c:if>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--topbar end-->


      <div class="header-box" data-am-sticky>
        <!--header start-->
          <div class="container">
            <div class="header">
              <div class="am-g">
                <div class="am-u-lg-2 am-u-sm-12">
                  <div class="logo">
                 <a href=""><img src="../assets/images/4.jpg" alt="" style="margin-top: -18px"/></a>
                  </div>
                </div>
                <div class="am-u-md-10">
                  <div class="header-right am-fr">
                    <div class="header-contact">
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
  												<strong>0575-84085869</strong>
  												<span>周一~周五, 8:00 - 20:00</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
  												<strong>13197176376@163.com</strong>
  												<span>随时欢迎您的来信！</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
  												<strong>汉水华城</strong>
  												<span>樊城区长虹路27号</span>
  											</div>
  										</div>
                    </div>
                    <a href="/Cornucopia/item/Contact" class="contact-btn">
                      <button type="button" class="am-btn am-btn-secondary am-radius">联系我们</button>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!--header end-->


        <!--nav start-->
        <div class="nav-contain">
          <div class="nav-inner">
            <ul class="am-nav am-nav-pills am-nav-justify">
              <li class=""><a href="/Cornucopia/item/Index">首页</a></li>
              <li><a href="/Cornucopia/AGSub/subject">产品中心</a></li>
              <li><a href="/Cornucopia/item/Solution">下载中心</a></li>
              <li>
                <a href="/Cornucopia/item/News">新闻中心</a>
                <!-- sub-menu start-->
                
                <!-- sub-menu end-->
              </li>
              <li><a href="/Cornucopia/item/About">盈+商学院</a></li>
              <li><a href="/Cornucopia/item/Join">投研中心</a></li>
              <li><a href="/Cornucopia/item/Contact">我的加法库</a></li>
            </ul>
          </div>
        </div>
      </div>

    </div>

    </div>




    <div class="section product3-main-container">
      <div class="container">
        <div class="section--header">
          <h2 class="section--title">跨平台企业级浏览器内核</h2>
          <p class="section--description">
            全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
            门户，快捷的移动适配开发能力，完备的数据安全保护
          </p>
        </div>

        <div class="product3-main">
          <div class="am-g">
            <div class="am-u-md-3 am-u-sm-6 product3-main-box">
              <div class="product3-icon">
                <i class="am-icon-star-o"></i>
              </div>
              <div class="product3-content">
                <h3>企业级浏览器内核</h3>
                <p>基于风靡社区的React.js封装组件沿袭高性能、可复用、易扩展等特性保证企业应用技术栈保持国际领先</p>
                <hr class="split-line">
              </div>
            </div>
            <div class="am-u-md-3 am-u-sm-6 product3-main-box">
              <div class="product3-icon">
                <i class="am-icon-heart-o"></i>
              </div>
              <div class="product3-content">
                <h3>企业级浏览器内核</h3>
                <p>基于风靡社区的React.js封装组件沿袭高性能、可复用、易扩展等特性保证企业应用技术栈保持国际领先</p>
                <hr class="split-line">
              </div>
            </div>
            <div class="am-u-md-3 am-u-sm-6 product3-main-box">
              <div class="product3-icon">
                <i class="am-icon-send-o"></i>
              </div>
              <div class="product3-content">
                <h3>企业级浏览器内核</h3>
                <p>基于风靡社区的React.js封装组件沿袭高性能、可复用、易扩展等特性保证企业应用技术栈保持国际领先</p>
                <hr class="split-line">
              </div>
            </div>
            <div class="am-u-md-3 am-u-sm-6 product3-main-box">
              <div class="product3-icon">
                <i class="am-icon-diamond"></i>
              </div>
              <div class="product3-content">
                <h3>企业级浏览器内核</h3>
                <p>基于风靡社区的React.js封装组件沿袭高性能、可复用、易扩展等特性保证企业应用技术栈保持国际领先</p>
                <hr class="split-line">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>



    <div class="section">
      <div class="container">
        <div class="section--header">
          <h2 class="section--title">跨平台企业级浏览器内核</h2>
          <p class="section--description">
            全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
            门户，快捷的移动适配开发能力，完备的数据安全保护
          </p>
        </div>
      </div>

      <div class="product1-show-container">
        <ul class="am-avg-md-5 am-avg-sm-2">
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show1.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show2.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show3.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show4.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show5.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show6.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show7.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show8.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show9.jpg" alt=""></a></li>
          <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show10.jpg" alt=""></a></li>
        </ul>
      </div>
    </div>



    <div class="section">
      <div class="container">
        <div class="section--header">
          <h2 class="section--title">跨平台企业级浏览器内核</h2>
          <p class="section--description">
            全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
            门户，快捷的移动适配开发能力，完备的数据安全保护
          </p>
        </div>
      </div>

      <div class="product3-show-container">
        <div class="container">
          <div class="am-g">
            <div class="am-u-md-6 product3-show-box">
              <div class="am-g">
                <div class="am-u-md-6">
                  <div class="product3-show-img">
                    <div class="product3-img-mask"><i class="am-icon-search"></i></div>
                    <img src="../assets/images/product/product3/product3_img_1.jpg" alt="" />
                  </div>
                </div>
                <div class="am-u-md-6">
                  <div class="product3-show-content">
                    <h3>国际先进技术，技术栈领先</h3>
                    <p>基于风靡社区的React.js封装组件，沿袭高性能、可复用、易扩展等特性，保证企业应用技术栈保持国际领先</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="am-u-md-6 product3-show-box">
              <div class="am-g">
                <div class="am-u-md-6">
                  <div class="product3-show-img">
                    <div class="product3-img-mask"><i class="am-icon-search"></i></div>
                    <img src="../assets/images/product/product3/product3_img_2.jpg" alt="" />
                  </div>
                </div>
                <div class="am-u-md-6">
                  <div class="product3-show-content">
                    <h3>国际先进技术，技术栈领先</h3>
                    <p>基于风靡社区的React.js封装组件，沿袭高性能、可复用、易扩展等特性，保证企业应用技术栈保持国际领先</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="am-u-md-6 product3-show-box">
              <div class="am-g">
                <div class="am-u-md-6">
                  <div class="product3-show-img">
                    <div class="product3-img-mask"><i class="am-icon-search"></i></div>
                    <img src="../assets/images/product/product3/product3_img_3.jpg" alt="" />
                  </div>
                </div>
                <div class="am-u-md-6">
                  <div class="product3-show-content">
                    <h3>国际先进技术，技术栈领先</h3>
                    <p>基于风靡社区的React.js封装组件，沿袭高性能、可复用、易扩展等特性，保证企业应用技术栈保持国际领先</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="am-u-md-6 product3-show-box">
              <div class="am-g">
                <div class="am-u-md-6">
                  <div class="product3-show-img">
                    <div class="product3-img-mask"><i class="am-icon-search"></i></div>
                    <img src="../assets/images/product/product3/product3_img_4.jpg" alt="" />
                  </div>
                </div>
                <div class="am-u-md-6">
                  <div class="product3-show-content">
                    <h3>国际先进技术，技术栈领先</h3>
                    <p>基于风靡社区的React.js封装组件，沿袭高性能、可复用、易扩展等特性，保证企业应用技术栈保持国际领先</p>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>



    <div class="section" style="margin-top:0px;background-image: url('../assets/images/pattern-light.png');">
      <div class="container">
        <!--index-container start-->
        <div class="index-container">
          <div class="am-g">
            <div class="am-u-md-4">
              <div class="contact_card">
  							<i style="color:#59bcdb" class="contact_card--icon am-icon-phone"></i>
  							<strong class="contact_card--title">Contact Us</strong>
  							<p class="contact_card--text">Feel free to call us on <br> <strong>0 (855) 233-5385</strong> <br> Monday - Friday, 8am - 7pm</p>
                <button type="button" class="am-btn am-btn-secondary">Order a Call Back</button>
  						</div>
            </div>
            <div class="am-u-md-4">
              <div class="contact_card">
  							<i style="color:#59bcdb" class="contact_card--icon am-icon-envelope-o"></i>
  							<strong class="contact_card--title">Our Email</strong>
  							<p class="contact_card--text">Drop us a line anytime at <br> <strong><a href="mailto:info@financed.com">info@financed.com</a>,</strong> <br> and we’ll get back soon.</p>
                <button type="button" class="am-btn am-btn-secondary">Start Writing</button>
  						</div>
            </div>
            <div class="am-u-md-4">
              <div class="contact_card">
  							<i style="color:#59bcdb" class="contact_card--icon am-icon-map-marker"></i>
  							<strong class="contact_card--title">Our Address</strong>
  							<p class="contact_card--text">Come visit us at <br> <strong>Stock Building, New York,</strong> <br> NY 93459</p>
                <button type="button" class="am-btn am-btn-secondary">See the Map</button>
  						</div>
            </div>
          </div>
        </div>
        <!--index-container end-->
      </div>
    </div>


    <!--===========layout-footer================-->
    <div class="layout-footer">
      <div class="footer">
        <div style="background-color:#383d61" class="footer--bg"></div>
        <div class="footer--inner">
          <div class="container">
            <div class="footer_main">
              <div class="am-g">
                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
                    <strong class="footer_main--column_title">关于我们</strong>
                    <div class="footer_about">
												<p class="footer_about--text">
													云适配(AllMobilize Inc.) 是全球领先的HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立.
												</p>
												<p class="footer_about--text">
                          云适配跨屏云也成功应用于超过30万家企业网站，包括微软、联想等世界500强企业
												</p>
											</div>
                  </div>
                </div>

                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
										<strong class="footer_main--column_title">产品中心</strong>
										<ul class="footer_navigation">
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Enterplorer 企业浏览器</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Xcloud 网站跨屏云</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
										</ul>
									</div>
                </div>

                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
										<strong class="footer_main--column_title">技术支持</strong>
										<ul class="footer_navigation">
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
										</ul>
									</div>
                </div>

                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
										<strong class="footer_main--column_title">联系详情</strong>
										<ul class="footer_contact_info">
											<li class="footer_contact_info--item"><i class="am-icon-phone"></i><span>服务专线：400 069 0309</span></li>
											<li class="footer_contact_info--item"><i class="am-icon-envelope-o"></i><span>yunshipei.com</span></li>
											<li class="footer_contact_info--item"><i class="am-icon-map-marker"></i><span>北京市海淀区海淀大街27号天使大厦（原亿景大厦）三层</span></li>
											<li class="footer_contact_info--item"><i class="am-icon-clock-o"></i><span>更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></span></li>
										</ul>
									</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
  <script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>

</html>
