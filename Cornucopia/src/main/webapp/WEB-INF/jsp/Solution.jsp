<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>企业网站模板</title>
  <link rel="stylesheet" href="../assets/css/amazeui.css" />
  <link rel="stylesheet" href="../assets/css/common.min.css" />
  <link rel="stylesheet" href="../assets/css/solution.min.css" />
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
                  <button class="am-btn am-btn-primary am-dropdown-toggle" data-am-dropdown-toggle>Language <span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="#">English</a></li>
                    <li class="am-divider"></li>
                    <li><a href="#">Chinese</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="am-u-md-9">
              <div class="topbar-right am-text-right am-fr">
                Follow us
                <i class="am-icon-facebook"></i>
                <i class="am-icon-twitter"></i>
                <i class="am-icon-google-plus"></i>
                <i class="am-icon-pinterest"></i>
                <i class="am-icon-instagram"></i>
                <i class="am-icon-linkedin"></i>
                <i class="am-icon-youtube-play"></i>
                <i class="am-icon-rss"></i>
                <a href="./login.html">登录</a>
                <a href="./register.html">注册</a>
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
                    <a href=""><img src="../assets/images/logo.png" alt="" /></a>
                  </div>
                </div>
                <div class="am-u-md-10">
                  <div class="header-right am-fr">
                    <div class="header-contact">
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
  												<strong>0 (855) 233-5385</strong>
  												<span>周一~周五, 8:00 - 20:00</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
  												<strong>cn@yunshipei.com</strong>
  												<span>随时欢迎您的来信！</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
  												<strong>天使大厦,</strong>
  												<span>海淀区海淀大街27</span>
  											</div>
  										</div>
                    </div>
                    <a href="html/contact.html" class="contact-btn">
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
              <li class=""><a href="../index.html">首页</a></li>
              <li>
                <a href="#">产品中心</a>
                <!-- sub-menu start-->
                <ul class="sub-menu">
									<li class="menu-item"><a href="./product1.html">产品展示1</a></li>
									<li class="menu-item"><a href="./product2.html">产品展示2</a></li>
									<li class="menu-item"><a href="./product3.html">产品展示3</a></li>
								</ul>
                <!-- sub-menu end-->
              </li>
              <li><a href="./example.html">客户案例</a></li>
              <li><a href="./solution.html">解决方案</a></li>
              <li>
                <a href="./news.html">新闻中心</a>
                <!-- sub-menu start-->
                <ul class="sub-menu">
									<li class="menu-item"><a href="./news-content.html">公司动态</a></li>
									<li class="menu-item"><a href="./404-dark.html">行业动态</a></li>
									<li class="menu-item"><a href="./404-light.html">精彩专题</a></li>
								</ul>
                <!-- sub-menu end-->
              </li>
              <li><a href="./about.html">关于我们</a></li>
              <li><a href="./join.html">加入我们</a></li>
              <li><a href="./contact.html">联系我们</a></li>
            </ul>
          </div>
        </div>
        <!--nav end-->
      </div>

    </div>
    <!--mobile header start-->
    <div class="m-header">
      <div class="am-g am-show-sm-only">
        <div class="am-u-sm-2">
          <div class="menu-bars">
            <a href="#doc-oc-demo1" data-am-offcanvas="{effect: 'push'}"><i class="am-menu-toggle-icon am-icon-bars"></i></a>
            <!-- 侧边栏内容 -->
            <nav data-am-widget="menu" class="am-menu  am-menu-offcanvas1" data-am-menu-offcanvas >
              <a href="javascript: void(0)" class="am-menu-toggle"></a>

              <div class="am-offcanvas" >
                <div class="am-offcanvas-bar">
                  <ul class="am-menu-nav am-avg-sm-1">
                    <li><a href="../index.html" class="" >首页</a></li>
                    <li class="am-parent">
                      <a href="#" class="" >产品中心</a>
                      <ul class="am-menu-sub am-collapse ">
                        <li class="">
                          <a href="./product1.html" class="" >产品展示1</a>
                        </li>
                        <li class="">
                          <a href="./product2.html" class="" >产品展示2</a>
                        </li>
                        <li class="">
                          <a href="./product3.html" class="" >产品展示3</a>
                        </li>
                      </ul>
                    </li>
                    <li class=""><a href="./example.html" class="" >客户案例</a></li>
                    <li class=""><a href="./solution.html" class="" >解决方案</a></li>
                    <li class="am-parent">
                      <a href="./news.html" class="" >新闻中心</a>
                      <ul class="am-menu-sub am-collapse  ">
                        <li class="">
                          <a href="./news-content.html" class="" >公司动态</a>
                        </li>
                        <li class="">
                          <a href="./404-dark.html" class="" >行业动态</a>
                        </li>
                        <li class="">
                          <a href="./404-light.html" class="" >精彩专题</a>
                        </li>
                      </ul>
                    </li>
                    <li class=""><a href="./about.html" class="" >关于我们</a></li>
                    <li class=""><a href="./join.html" class="" >加入我们</a></li>
                    <li class=""><a href="./contact.html" class="" >联系我们</a></li>
                    <li class="am-parent">
                      <a href="./news.html" class="nav-icon nav-icon-globe" >Language</a>
                      <ul class="am-menu-sub am-collapse  ">
                        <li>
                          <a href="#" >English</a>
                        </li>
                        <li class="">
                          <a href="#" >Chinese</a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-share-contain">
                      <div class="nav-share-links">
                        <i class="am-icon-facebook"></i>
                        <i class="am-icon-twitter"></i>
                        <i class="am-icon-google-plus"></i>
                        <i class="am-icon-pinterest"></i>
                        <i class="am-icon-instagram"></i>
                        <i class="am-icon-linkedin"></i>
                        <i class="am-icon-youtube-play"></i>
                        <i class="am-icon-rss"></i>
                      </div>
                    </li>
                    <li class=""><a href="./login.html" class="" >登录</a></li>
                    <li class=""><a href="./register.html" class="" >注册</a></li>
                  </ul>

                </div>
              </div>
            </nav>

          </div>
        </div>
        <div class="am-u-sm-5 am-u-end">
          <div class="m-logo">
            <a href=""><img src="../assets/images/logo.png" alt=""></a>
          </div>
        </div>
      </div>
      <!--mobile header end-->
    </div>




    <!--===========layout-container================-->
    <div class="layout-container">
      <div class="solution-page">
        <div class="container">
          <h2>自主创新跨平台企业级解决方案</h2>
          <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
          <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
        </div>
      </div>
    </div>

    <div class="section">
      <div class="container">
        <div class="section--header">
          <h2 class="section--title">解决方案案例展示</h2>
          <p class="section--description">
            全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
            <br>门户，快捷的移动适配开发能力，完备的数据安全保护
          </p>
        </div>

        <div class="solution-container">
          <div data-am-widget="tabs"
               class="am-tabs "
                >
              <ul class="am-tabs-nav am-cf">
                  <li class="am-active"><a href="[data-tab-panel-0]">青春</a></li>
                  <li class=""><a href="[data-tab-panel-1]">彩虹</a></li>
                  <li class=""><a href="[data-tab-panel-2]">歌唱</a></li>
                  <li class=""><a href="[data-tab-panel-3]">歌唱</a></li>
              </ul>
              <div class="am-tabs-bd">
                  <div data-tab-panel-0 class="am-tab-panel am-active">
                    <div class="am-g">
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-1.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-2.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-3.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-4.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-5.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-6.png" alt="" /></a>
                      </div>
                    </div>
                  </div>
                  <div data-tab-panel-1 class="am-tab-panel ">
                    <div class="am-g">
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-1.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-2.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-3.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-4.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-5.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-6.png" alt="" /></a>
                      </div>
                    </div>
                  </div>
                  <div data-tab-panel-2 class="am-tab-panel ">
                    <div class="am-g">
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-1.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-2.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-3.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-4.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-5.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-6.png" alt="" /></a>
                      </div>
                    </div>
                  </div>
                  <div data-tab-panel-3 class="am-tab-panel ">
                    <div class="am-g">
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-1.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-2.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-3.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-4.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-5.png" alt="" /></a>
                      </div>
                      <div class="am-u-md-4 am-u-sm-6">
                        <a href="#"><img src="../assets/images/solution/solution-show-6.png" alt="" /></a>
                      </div>
                    </div>
                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>



    <div class="section" style="background:#f3f4f4;">
      <div class="container">
        <div class="section--header">
          <h2 class="section--title">O2O解决方案</h2>
          <p class="section--description">
            全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
            <br/>门户，快捷的移动适配开发能力，完备的数据安全保护
          </p>
        </div>

        <div class="o2o-container">
          <div class="am-g">
            <div class="am-u-md-4">
              <div class="o2o-box">
                <img src="../assets/images/solution/o2o-img-1.png" alt="" />
                <div class="o2o-content">
                  <h3>遭遇黑客攻击</h3>
                  <p>安全意识很重要，要提前做好预防工作，保障系统安全。推荐使用大禹分布式防御</p>
                </div>
              </div>
            </div>
            <div class="am-u-md-4">
              <div class="o2o-box">
                <img src="../assets/images/solution/o2o-img-2.png" alt="" />
                <div class="o2o-content">
                  <h3>UGC内容鉴别</h3>
                  <p>安全意识很重要，要提前做好预防工作，保障系统安全。推荐使用大禹分布式防御</p>
                </div>
              </div>
            </div>
            <div class="am-u-md-4">
              <div class="o2o-box">
                <img src="../assets/images/solution/o2o-img-3.png" alt="" />
                <div class="o2o-content">
                  <h3>处理能力</h3>
                  <p>安全意识很重要，要提前做好预防工作，保障系统安全。推荐使用大禹分布式防御</p>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>




    <div class="section">
      <div class="container">
        <div class="section--header">
          <h2 class="section--title">服务合作厂家</h2>
          <p class="section--description">
            全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
            <br/>门户，快捷的移动适配开发能力，完备的数据安全保护
          </p>
        </div>

        <div class="cooperation-container">
          <div data-am-widget="tabs"
             class="am-tabs"
              >
            <ul class="am-tabs-nav am-cf">
                <li class="am-active"><a href="[data-tab-panel-0]">营销推广</a></li>
                <li class=""><a href="[data-tab-panel-1]">金融服务</a></li>
                <li class=""><a href="[data-tab-panel-2]">行业软件</a></li>
                <li class=""><a href="[data-tab-panel-3]">托管服务</a></li>
            </ul>
            <div class="am-tabs-bd">
                <div data-tab-panel-0 class="am-tab-panel am-active">
                  <ul class="am-avg-md-5 am-avg-sm-3 am-thumbnails">
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo1.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo2.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo3.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo4.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo5.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo6.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo7.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo8.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo9.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo10.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo11.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo12.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo13.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo14.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo15.jpg" /></a></li>
                  </ul>
                </div>
                <div data-tab-panel-1 class="am-tab-panel ">
                  <ul class="am-avg-md-5 am-avg-sm-3 am-thumbnails">
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo1.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo2.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo3.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo4.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo5.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo6.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo7.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo8.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo9.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo10.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo11.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo12.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo13.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo14.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo15.jpg" /></a></li>
                  </ul>
                </div>
                <div data-tab-panel-2 class="am-tab-panel ">
                  <ul class="am-avg-md-5 am-avg-sm-3 am-thumbnails">
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo1.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo2.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo3.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo4.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo5.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo6.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo7.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo8.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo9.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo10.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo11.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo12.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo13.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo14.jpg" /></a></li>
                    <li><a href="#"><img class="am-thumbnail" src="../assets/images/solution/cooperation-logo15.jpg" /></a></li>
                  </ul>
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
