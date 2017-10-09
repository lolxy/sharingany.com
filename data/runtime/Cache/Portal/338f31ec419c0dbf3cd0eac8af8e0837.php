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
<?php echo hook('body_start');?> 
<ul id="nav" class="flex-box">
  <li class="flex-1 active"><a class="main-txt" href="<?php echo ($site_host); ?>">首页</a></li>
  <li class="flex-1 "><a class="main-txt" href="<?php echo U('list/index',array('id'=>3));?>">产品</a></li>
  <li class="flex-1 "><a class="main-txt" href="<?php echo U('list/index',array('id'=>4));?>">案例</a></li>
  <li class="flex-1"><a class="main-txt" href="<?php echo U('page/index',array('id'=>1));?>">公司实力</a></li>
</ul>
<!-- 首页轮播图 --> 
<?php $home_slides=sp_getslide("mobile_index_slide"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
<div id="banner-1">
  <div class="banner-nav">
    <ul class="clearfix">
      <?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><li></li><?php endforeach; endif; ?>
    </ul>
  </div>
  <div class="banner-list">
      <ul>
        <?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><li>
            <span>
            <a href="<?php echo ($vo["slide_url"]); ?>">
                <img alt="" src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>">
            </a>
            </span>
        </li><?php endforeach; endif; ?>
      </ul>
  </div>
</div>

<div class="section threeservice">
  <div class="main-tit hot split-line">
    <h1>三大服务</h1>
  </div>
  <ul class="hot-list clearfix">
  <li class="split-line"> 
    <a href="<?php echo leuu('page/index',array('id'=>'13'));?>">
     <div class="hot-img"><img src="/data/upload/20160723/5792cb69e602d.png" alt="创新模式互联网+软件产品"></div>
     <h2 class="hot-tit">互联网+平台产品</h2>
     <p>技术驱动商业创新</br>
     研发符合企业需求的产品</p>
      </a> 
      </li>
  
  <li class="split-line"> 
    <a href="<?php echo leuu('page/index',array('id'=>'41'));?>">
     <div class="hot-img"><img src="/data/upload/20160723/5792cb9c86a4c.png" alt="政务与行业软件产品"></div>
     <h2 class="hot-tit">行业应用系统</h2>
     <p>政府、金融、国土、水利、环保</br>
     研发符合行业需求智慧解决方案</p>
      </a> 
      </li>
      
    <li class="split-line"> 
    <a href="<?php echo leuu('page/index',array('id'=>'42'));?>">
     <div class="hot-img"><img src="/data/upload/20160723/5792cbc07f03a.png" alt="移动互联网营销服务"></div>
     <h2 class="hot-tit">移动互联网营销</h2>
     <p>网络营销助力品牌成长</br>
     帮助企业快速传播价值</p>
      </a> 
      </li>
  </ul>
</div>

<div class="blank15"></div>

<!-- 热销产品 -->
<div class="section">
  <div class="main-tit hot split-line">
    <h1>热销产品</h1>
  </div>
  <?php
 $term_id=3; $terms=sp_get_child_terms($term_id); ?>
<ul class="hot-list clearfix">
	<?php if(is_array($terms)): foreach($terms as $key=>$vo): $id = $vo['term_id']; $where['recommended'] = 1; $fuwu=sp_sql_posts("cid:$id;field:tid,term_id,post_title,post_excerpt,post_modified,smeta;order:listorder asc,post_modified desc;limit:0,2",$where); ?>
    <?php if(is_array($fuwu)): foreach($fuwu as $key=>$vo): $smeta=json_decode($vo['smeta'],true); $jieshao = explode('|',$vo['post_excerpt']); ?>
    <li class="split-line"> <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
      <div class="hot-img"><?php if(empty($smeta['thumb'])): ?><img src="/themes/sharingany_mobile/Public/images/default_tupian1.png" alt="<?php echo ($vo["post_title"]); ?>"/>
                <?php else: ?> 
                    <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" alt="<?php echo ($vo["post_title"]); ?>"/><?php endif; ?></div>
     <h2 class="hot-tit"><?php echo ($vo["post_title"]); ?></h2>
     <p>
      <?php if(is_array($jieshao)): foreach($jieshao as $key=>$vos): echo ($vos); endforeach; endif; ?>
                </p>
      </a> </li><?php endforeach; endif; endforeach; endif; ?>
    </ul>
</div>

<div class="blank15"></div>
<!-- 成功案例 -->
<div class="section">
  <div class="main-tit flex-box split-line">
    <h1 class="flex-1">成功案例</h1>
    <a href="<?php echo leuu('list/index',array('id'=>'4'));?>" class="more">更多<i class="iconfont"></i></a> </div>
  <div class="case">
    <ul class="case-list clearfix">
     <?php
 $termid=4; $cates=sp_get_child_terms($termid); foreach($cates as $val){ $alids[]=$val['term_id']; } $alids = implode(',',$alids); $alids = !empty($alids)?$termid.','.$alids:$termid; ?>
<?php $anlilist=sp_sql_posts("cid:$alids;field:tid,term_id,smeta;order:listorder asc,post_modified desc;limit:0,6;",array('recommended'=>'1')); ?>
		<?php if(is_array($anlilist)): foreach($anlilist as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>
		<li>
            <div class="linkct">
            <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
                <?php if(empty($smeta['thumb'])): ?><img src="/themes/sharingany_mobile/Public/images/default_tupian1.png" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>"/>
                <?php else: ?> 
                    <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive img-thumbnail" alt="<?php echo ($vo["post_title"]); ?>" /><?php endif; ?>
            </a>
            </div>
        </li><?php endforeach; endif; ?>
    </ul>
  </div>
</div>
<div class="blank15"></div>
<div class="section">
  <div class="main-tit flex-box split-line">
    <h1 class="flex-1">众享资讯</h1>
    <!--<a href="<?php echo leuu('list/index',array('id'=>6));?>" target="_blank" class="more">更多<i class="iconfont">&#xe605;</i></a>-->
  </div>
  <div class="news">
    <ul class="news-list">
    <?php $zxzxlist=sp_sql_posts("cid:6;field:tid,term_id,post_title,post_modified;order:listorder asc,recommended desc,post_modified desc;limit:0,5;"); ?>
		<?php if(is_array($zxzxlist)): foreach($zxzxlist as $key=>$vo): ?><li class="clearfix">
    <a class="flex-box" href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
        <p class="time"><?php echo date('Y-m-d',strtotime($vo['post_modified']));?></p>
        <p class="news-info el flex-1"><?php echo msubstr($vo['post_title'],0,24);?></p>
        </a>
</li><?php endforeach; endif; ?>													
    </ul>
  </div>
</div>

<div class="blank15"></div>
<div class="section">
  <div class="main-tit flex-box split-line">
    <h1 class="flex-1">产品动态</h1>
    <!--<a href="<?php echo leuu('list/index',array('id'=>7));?>" target="_blank" class="more">更多<i class="iconfont">&#xe605;</i></a>-->
  </div>
  <div class="news">
    <ul class="news-list">
    <?php $zxzxlist=sp_sql_posts("cid:7;field:tid,term_id,post_title,post_modified;order:listorder asc,recommended desc,post_modified desc;limit:0,5;"); ?>
		<?php if(is_array($zxzxlist)): foreach($zxzxlist as $key=>$vo): ?><li class="clearfix">
    <a class="flex-box" href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
        <p class="time"><?php echo date('Y-m-d',strtotime($vo['post_modified']));?></p>
        <p class="news-info el flex-1"><?php echo msubstr($vo['post_title'],0,24);?></p>
        </a>
</li><?php endforeach; endif; ?>													
    </ul>
  </div>
</div>
<script type="text/javascript" src="/themes/sharingany_mobile/Public/js/index.js"></script>
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