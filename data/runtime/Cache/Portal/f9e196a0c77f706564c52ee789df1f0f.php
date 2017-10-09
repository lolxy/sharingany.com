<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<title><?php echo ($site_seo_title); ?> <?php echo ($site_name); ?></title>
<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
<meta name="description" content="<?php echo ($site_seo_description); ?>">
	<?php  function _sp_helloworld(){ echo "hello ThinkCMF!"; } function _sp_helloworld2(){ echo "hello ThinkCMF2!"; } function _sp_helloworld3(){ echo "hello ThinkCMF3!"; } ?>
	<?php $portal_index_lastnews="2"; $portal_hot_articles="1,2"; $portal_last_post="1,2"; $tmpl=sp_get_theme_path(); $default_home_slides=array( array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/1.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/2.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/3.jpg", "slide_url"=>"", ), ); ?>
	<meta name="author" content="">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

   	<!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
	<link rel="icon" href="/themes/sharingany_mobile/Public/images/favicon.ico" type="image/x-icon">
	<meta name="Generator">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta property="qc:admins" content="">
	<!-- <meta content="user-scalable=no,width=device-width, initial-scale=1" name="viewport"> -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link href="/themes/sharingany_mobile/Public/css/public.css" type="text/css" rel="stylesheet">
    <link href="/themes/sharingany_mobile/Public/css/index.css" type="text/css" rel="stylesheet">
   <link href="/public/iconfont/iconfont.css" type="text/css" rel="stylesheet">
    <link rel="shortcut icon" href="./favicon.ico">
	<style>.iepng{ behavior:url("css/iepngfix.htc"); }</style>
	<style>
		/*html{filter:progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);-webkit-filter: grayscale(1);}*/
		#backtotop{position: fixed;bottom: 50px;right:20px;display: none;cursor: pointer;font-size: 50px;z-index: 9999;}
		#backtotop:hover{color:#333}
		#main-menu-user li.user{display: none}
	</style>

	
<script type="text/javascript" src="/themes/sharingany_mobile/Public/js/lxb.js" charset="utf-8"></script>
<script type="text/javascript" src="/themes/sharingany_mobile/Public/js/jquery.min.js"></script>
<script type="text/javascript" src="/themes/sharingany_mobile/Public/js/public.js"></script>
<script type="text/javascript" src="/themes/sharingany_mobile/Public/js/slowscroll.js"></script>
<script type="text/javascript" src="/themes/sharingany_mobile/Public/js/TouchSlide.1.1.js"></script>
</head>
<body>
<div id="header" class="split-line flex-box">
  <div class="logo flex-1"><a href="<?php echo ($site_host); ?>"><img src="<?php echo sp_get_asset_upload_path($site_logo);?>"></a></div>
  <div class="contact-btn"> <a href="tel:18259170940" id="header-phone" class="flex-box"><i class="iconfont flex-1"></i></a> </div>
  <div class="contact-btn"> <a id="header-qq" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($company_qq); ?>&site=qq&menu=yes" title="点击联系QQ" class="flex-box"><i class="iconfont flex-1"></i></a> </div>
</div>
<link href="/themes/sharingany_mobile/Public/css/peizi.css" type="text/css" rel="stylesheet">
<?php $service_ads=sp_getslide("service_ads"); ?>
<div class="blank"></div>
<style type="text/css">
.nav_banner {
  width: 100%;
  overflow: hidden;
  margin: 0 auto;
  text-align: center;
  height:283px;
}

.servicewrapper{
width: 100%;
overflow: hidden;
background-color: #fff;	
}
</style>
<div id="banner">
	<div class="banner-list">
		<ul>
			<li><a href="javascript:void(0);"><img src="<?php echo sp_get_asset_upload_path($service_ads[0]['slide_pic']);?>"></a></li>
		</ul>
	</div>
</div>

<div class="servicewrapper">
<div class="all_check all_check_0 wrapper">
    <?php echo htmlspecialchars_decode($product); ?>
</div>

<div class="clear"></div>

<div class="wrapper">  
    <?php echo htmlspecialchars_decode($post_content); ?>
</div>

<div class="clear"></div>
</div>
<?php echo hook('footer');?>
<div id="footer">
  <div class="code-box">
    <p>关注我们</p>
    <div class="imgbox code"><img src="<?php echo sp_get_asset_upload_path($site_erweima);?>"></div>
  </div>
  <div class="copy-box flex-1">
    <p>服务热线：<?php echo ($service_tel); ?></p>
    <p><?php echo ($site_copyright); ?></p>
    <p><?php echo ($site_icp); ?></p>
  </div>
</div>
<!-- 导航 -->
<div id="footer-nav">
  <ul class="flex-box">
    <li class="flex-1"> <a href="<?php echo ($site_host); ?>"> <i class="iconfont"></i>
      <p>返回首页</p>
      </a> </li>
    <li class="flex-1"> <a href="<?php echo U('list/index',array('id'=>3));?>"> <i class="iconfont"></i>
      <p>众享产品</p>
      </a> </li>
    
    <li class="flex-1"> <a id="footer-qs" href="<?php echo U('page/index',array('id'=>4));?>"> <i class="iconfont"></i>
      <p>联系我们</p>
      </a> </li>
    <li class="flex-1"><a href="tel:18259170940" id="header-phone"><i class="iconfont flex-1"></i>
      <p>手机拨号</p>
      </a> </li>
  </ul>
</div>
<div class="code-click flex-box">
<img src="<?php echo sp_get_asset_upload_path($site_erweima);?>"></div>
<script>
$("#nav a").each(function(){
	if ($(this)[0].href == String(window.location) && $(this).attr('href')!="") {
		$(this).parents("li").addClass("active").siblings("li").removeClass("active");
	}
});

var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?cebfbdd88ef2a80b5d0576663646d620";
  var s =document.getElementsByTagName("script")[0]; 
 s.parentNode.insertBefore(hm, s);
})();
</script>
</body>
</html>