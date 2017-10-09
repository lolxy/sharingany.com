<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<title><?php echo ($site_seo_title); ?> <?php echo ($site_name); ?></title>
<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
<meta name="description" content="<?php echo ($site_seo_description); ?>">
	<?php  function _sp_helloworld(){ echo "hello ThinkCMF!"; } function _sp_helloworld2(){ echo "hello ThinkCMF2!"; } function _sp_helloworld3(){ echo "hello ThinkCMF3!"; } ?>
	<?php $portal_index_lastnews="2"; $portal_hot_articles="1,2"; $portal_last_post="1,2"; $tmpl=sp_get_theme_path(); $default_home_slides=array( array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/1.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/2.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/3.jpg", "slide_url"=>"", ), ); ?>
	<meta name="author" content="ThinkCMF">
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
	<link rel="icon" href="/themes/sharingany/Public/images/favicon.ico" type="image/x-icon">
	<link rel="shortcut icon" href="/themes/sharingany/Public/images/favicon.ico" type="image/x-icon">
    <link href="/themes/sharingany/Public/simpleboot/themes/simplebootx/theme.min.css" rel="stylesheet">
    <!--<link href="/themes/sharingany/Public/simpleboot/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">-->
    <link href="/themes/sharingany/Public/simpleboot/font-awesome/4.4.0/css/font-awesome.min.css"  rel="stylesheet" type="text/css">
	<!--[if IE 7]>
	<link rel="stylesheet" href="/themes/sharingany/Public/simpleboot/font-awesome/4.4.0/css/font-awesome-ie7.min.css">
	<![endif]-->
	<link href="/themes/sharingany/Public/css/style.css" rel="stylesheet">
	<meta name="Generator">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta property="qc:admins" content="">
	<!-- <meta content="user-scalable=no,width=device-width, initial-scale=1" name="viewport"> -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link href="/themes/sharingany/Public/css/public.css" type="text/css" rel="stylesheet">
	<style>.iepng{ behavior:url("css/iepngfix.htc"); }</style>
	<style>
		/*html{filter:progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);-webkit-filter: grayscale(1);}*/
		#backtotop{position: fixed;bottom: 50px;right:20px;display: none;cursor: pointer;font-size: 50px;z-index: 9999;}
		#backtotop:hover{color:#333}
		#main-menu-user li.user{display: none}
	</style>

	
<script src="/public/js/jquery.js"></script>
<script src="/public/js/wind.js"></script>
<script src="/themes/sharingany/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>
<script src="/public/js/frontend.js"></script>
<script src="/themes/sharingany/Public/js/lxb_002.js" charset="utf-8"></script>
<script src="/themes/sharingany/Public/js/hm_002.js"></script>
<script src="/themes/sharingany/Public/js/lxb.js" charset="utf-8"></script>
<script src="/themes/sharingany/Public/js/localStorage.js" async="" charset="utf-8" type="text/javascript"></script>
<script src="/themes/sharingany/Public/js/Panel.js" async="" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/jquery_002.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/lazyload.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/jquery.js"></script>
	<script type="text/javascript" src="/themes/sharingany/Public/js/public.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/slowscroll.js"></script>
	<script>
	$(function(){
		$('body').on('touchstart.dropdown', '.dropdown-menu', function (e) { e.stopPropagation(); });
		
		$("#main-menu li.dropdown").hover(function(){
			$(this).addClass("open");
		},function(){
			$(this).removeClass("open");
		});
		
		$.post("<?php echo U('user/index/is_login');?>",{},function(data){
			if(data.status==1){
				if(data.user.avatar){
					$("#main-menu-user .headicon").attr("src",data.user.avatar.indexOf("http")==0?data.user.avatar:"/data/upload/avatar/"+data.user.avatar);
				}
				
				$("#main-menu-user .user-nicename").text(data.user.user_nicename!=""?data.user.user_nicename:data.user.user_login);
				$("#main-menu-user li.login").show();
				
			}
			if(data.status==0){
				$("#main-menu-user li.offline").show();
			}
			
		});	
		;(function($){
			$.fn.totop=function(opt){
				var scrolling=false;
				return this.each(function(){
					var $this=$(this);
					$(window).scroll(function(){
						if(!scrolling){
							var sd=$(window).scrollTop();
							if(sd>100){
								$this.fadeIn();
							}else{
								$this.fadeOut();
							}
						}
					});
					
					$this.click(function(){
						scrolling=true;
						$('html, body').animate({
							scrollTop : 0
						}, 500,function(){
							scrolling=false;
							$this.fadeOut();
						});
					});
				});
			};
		})(jQuery); 
		
		$("#backtotop").totop();
		
		
	});

/*鼠标上移显示*/
$(function(){
//hover start
$("#32").hover(function(){
	$(this).oneTime(50,function(){ 
		$(this).addClass("hover");
  });
},function(){      
  $(this).oneTime(50,function(){ 
  	$("#cp_list").stopTime();
  	$(this).removeClass("hover");
  });     
});
//hover end 
//hover start
$("#35").hover(function(){
	$(this).oneTime(50,function(){ 
		$(this).addClass("hover");
  });
},function(){      
  $(this).oneTime(50,function(){ 
  	$("#cp_list").stopTime();
  	$(this).removeClass("hover");
  });
});
//hover end 
});
</script>
<script id="_da" src="/themes/sharingany/Public/js/i.js" async="" charset="utf-8"></script>


<style>
.wrapper li{float: left;}
</style>
</head>
<body>
<?php echo hook('body_start');?> 
<div class="navbar navbar-fixed-top" style="min-width:1200px;">
   <div class="navbar-inner">
     <div class="container">
       <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </a>
       <a class="brand link" href="/"><img src="/themes/sharingany/Public/images/55bed960185e7.png"></a>
       <div class="nav-collapse collapse" id="main-menu">
       	<?php
 $effected_id="main-menu"; $filetpl="<a href='\$href' target='\$target'>\$label</a>"; $foldertpl="<a href='\$href' target='\$target' class='dropdown-toggle' data-toggle='dropdown'>\$label <b class='caret'></b></a>"; $ul_class="dropdown-menu" ; $li_class="" ; $style="nav"; $showlevel=6; $dropdown='dropdown'; echo sp_get_menu("main",$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown); ?>
       </div>
     </div>
   </div>
 </div>
<script>
$(function(){
	$(".showhide").bind('click',function(){
		if($(this).next().attr('class')=='show'){
				$(this).next().attr('class','');
		}else{
			$(this).next().attr('class','show');
		}
	});
	$("#description_head li a").each(function(j){
		$("#description #description_content div").css('border','none');
			$(this).bind('click',function(){
			$("#description_head li a").attr('class','');
			$(this).attr('class','here');
			$("#description #description_content div").css('display','none');
			$("#description #description_content div").get(j).style.display='block';
		});
	});
});
</script> 
<link href="/themes/sharingany/Public/css/peizi.css" type="text/css" rel="stylesheet">
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
</style>
<!--<div class="nav_banner" style="background: url(<?php echo sp_get_asset_upload_path($service_ads[0]['slide_pic']);?>) no-repeat center 0 #f8f3f1;"></div>-->
<div class="blank30"></div>

	<div class="all_check all_check_0 wrapper">
		<?php echo htmlspecialchars_decode($product); ?>
	</div>
    
    <div class="clear"></div>
    
    <div class="wrapper">  
        <?php echo htmlspecialchars_decode($post_content); ?>
	</div>


<div class="clear"></div>
<?php echo hook('footer');?>
<div class="ftw">
<div id="ftbox">
	<div id="ft">
		<dl class="f_1 dl1">
			<dt class="end_1">
			    <img src="/themes/sharingany/Public/images/end_1.png">
				<div class="cpn_name">
					<?php echo ($company_name); ?>
				</div>
			</dt>
		</dl>
		<dl class="f_1 dl2">
			<dt class="end_2">
				<p class="_link">服务热线</p>
				<p class="lianxi_1"><?php echo ($service_tel); ?></p>
				<p class="_link">商务合作</p>
                <p class="shouqian swhz"><span><?php echo ($shangwuhezuo); ?></span></p>
			</dt>
		</dl>
		<dl class="f_1 dl3">
		<div class="_link_1">
				
				<p class="shouqian footqq"><a id="qyqq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($company_qq); ?>&site=qq&menu=yes" title="点击联系QQ"><span>企业QQ：<?php echo ($company_qq); ?></span></a></p>
				<p class="shouqian footemail"><span>企业邮箱：<?php echo ($company_email); ?></span></p>
				<p class="shouqian footadd"><span><?php echo ($company_main_address); ?></span></p>
				<p class="shouqian footnone"><span> <?php echo ($company_sub_address); ?></span></p>
		</div>
				
	</dl>
	<div class="clear"></div>
	</div>
</div>
<div class="clear"></div>
<div id="ftbox2">
  <div class="box">
  	<p>
	  	<?php echo ($site_copyright); ?>&nbsp;<?php echo ($site_icp); ?>
	</p>
  </div>
</div>
		</div>
		<div class="float-box simple call" float-box="box" style="bottom: 50px; right: 20px;">
			<span class="btn-2">
				<a id="qqbtn2" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($company_qq); ?>&site=qq&menu=yes" title="在线咨询"></a>
			</span>
			<div class="blank"></div>
			<span class="btn-3">
			<a alt="点我关掉" href="javascript:void(0);">
				<img src="<?php echo sp_get_asset_upload_path($site_erweima);?>" style="max-width:100px;">
            </a>
			</span>
			<div class="blank"></div>
			<span class="gotot" backtop="box" style="display: none;">
				<a href="javascript:;"></a>
			</span>
	</div>
	<!-- 侧边 float-box eng -->
<!--<div id="footer">
	<div class="links">
		<?php $links=sp_getlinks(); ?>
		<?php if(is_array($links)): foreach($links as $key=>$vo): ?><a href="<?php echo ($vo["link_url"]); ?>" target="<?php echo ($vo["link_target"]); ?>"><?php echo ($vo["link_name"]); ?></a><?php endforeach; endif; ?>
	</div>
	<p>
		Made by <a href="http://www.thinkcmf.com" target="_blank">ThinkCMF</a>
		Code licensed under the 
		<a href="http://www.apache.org/licenses/LICENSE-2.0" rel="nofollow" target="_blank">Apache License v2.0</a>.
		<br />
		Based on 
		<a href="http://getbootstrap.com/2.3.2/" target="_blank">Bootstrap</a>.
		Icons from 
		<a href="http://fortawesome.github.com/Font-Awesome/" target="_blank">Font Awesome</a>
	</p>
</div>
<div id="backtotop">
	<i class="fa fa-arrow-circle-up"></i>
</div>-->
<?php echo ($site_tongji); ?>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?cebfbdd88ef2a80b5d0576663646d620";
  var s =document.getElementsByTagName("script")[0]; 
 s.parentNode.insertBefore(hm, s);
})();
</script>

<script src="/public/js/jquery.js"></script>
<script src="/public/js/wind.js"></script>
<script src="/themes/sharingany/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>
<script src="/public/js/frontend.js"></script>
<script src="/themes/sharingany/Public/js/lxb_002.js" charset="utf-8"></script>
<script src="/themes/sharingany/Public/js/hm_002.js"></script>
<script src="/themes/sharingany/Public/js/lxb.js" charset="utf-8"></script>
<script src="/themes/sharingany/Public/js/localStorage.js" async="" charset="utf-8" type="text/javascript"></script>
<script src="/themes/sharingany/Public/js/Panel.js" async="" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/jquery_002.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/lazyload.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/jquery.js"></script>
	<script type="text/javascript" src="/themes/sharingany/Public/js/public.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/slowscroll.js"></script>
	<script>
	$(function(){
		$('body').on('touchstart.dropdown', '.dropdown-menu', function (e) { e.stopPropagation(); });
		
		$("#main-menu li.dropdown").hover(function(){
			$(this).addClass("open");
		},function(){
			$(this).removeClass("open");
		});
		
		$.post("<?php echo U('user/index/is_login');?>",{},function(data){
			if(data.status==1){
				if(data.user.avatar){
					$("#main-menu-user .headicon").attr("src",data.user.avatar.indexOf("http")==0?data.user.avatar:"/data/upload/avatar/"+data.user.avatar);
				}
				
				$("#main-menu-user .user-nicename").text(data.user.user_nicename!=""?data.user.user_nicename:data.user.user_login);
				$("#main-menu-user li.login").show();
				
			}
			if(data.status==0){
				$("#main-menu-user li.offline").show();
			}
			
		});	
		;(function($){
			$.fn.totop=function(opt){
				var scrolling=false;
				return this.each(function(){
					var $this=$(this);
					$(window).scroll(function(){
						if(!scrolling){
							var sd=$(window).scrollTop();
							if(sd>100){
								$this.fadeIn();
							}else{
								$this.fadeOut();
							}
						}
					});
					
					$this.click(function(){
						scrolling=true;
						$('html, body').animate({
							scrollTop : 0
						}, 500,function(){
							scrolling=false;
							$this.fadeOut();
						});
					});
				});
			};
		})(jQuery); 
		
		$("#backtotop").totop();
		
		
	});

/*鼠标上移显示*/
$(function(){
//hover start
$("#32").hover(function(){
	$(this).oneTime(50,function(){ 
		$(this).addClass("hover");
  });
},function(){      
  $(this).oneTime(50,function(){ 
  	$("#cp_list").stopTime();
  	$(this).removeClass("hover");
  });     
});
//hover end 
//hover start
$("#35").hover(function(){
	$(this).oneTime(50,function(){ 
		$(this).addClass("hover");
  });
},function(){      
  $(this).oneTime(50,function(){ 
  	$("#cp_list").stopTime();
  	$(this).removeClass("hover");
  });
});
//hover end 
});
</script>
<script id="_da" src="/themes/sharingany/Public/js/i.js" async="" charset="utf-8"></script>


<script type="text/javascript" src="/themes/sharingany/Public/js/j.js"></script>
</body>
</html>