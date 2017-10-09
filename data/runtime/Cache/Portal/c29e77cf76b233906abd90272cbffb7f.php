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
<script type="text/javascript" src="/themes/sharingany/Public/js/jquery_004.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/jquery_003.js"></script>
<script type="text/javascript" src="/themes/sharingany/Public/js/index.js"></script>
<link href="/themes/sharingany/Public/css/index.css" type="text/css" rel="stylesheet">
<!--.............滚动的广告<script type="text/javascript" src="./app/Tpl/new/coupon/js/adv.js"></script>..............-->
<script type="text/javascript">
$(document).ready(function(){
	$('.hd ul').css({'position':'absolute','left':($("#slideBox2").width()-$('.hd ul').width())/2});
	$('.hd ul').show();
	$("img",".main_adv_img").each(function(){
       var img_str = $(this).attr("src");
       $(this).hide();
       $(this).parent().css({"background":"url("+img_str+") no-repeat center 0","width":"100%","height":"100%"});
    });
	jQuery("#slideBox2").slide({
		mainCell:"#bd2 ul",
		titCell:".hd li",
		effect:"leftLoop",
		easing:"swing",
		trigger:"click",
		triggerTime:"0",
		interTime:5000,
		delayTime:500,
		autoPlay:true,
		pnLoop: true,
		prevCell:"#prev2",
		nextCell:"#next2"
	});
//box_img start
$(".section1 .box ").hover(function(){
  var idx = $(this).attr("rel");
  $(this).oneTime(10,function(){ 
  	 $(".imgcover[rel='"+idx+"']").animate({opacity:'0.6'},100);
  	 $(".t_f[rel='"+idx+"']").animate({top:'46px'},100);		
  	 $(".l_o[rel='"+idx+"']").animate({left:'148px'},100);	
  	 $(".r_f[rel='"+idx+"']").animate({right:'148px'},100);	 
  });
},function(){
  var idx = $(this).attr("rel");
  $(this).oneTime(10,function(){ 
    $(".imgcover[rel='"+idx+"']").stop().animate({opacity:'0'},50);
   	$(".t_f[rel='"+idx+"']").stop().animate({top:'-50px'},50);
    $(".l_o[rel='"+idx+"']").stop().animate({left:'-80px'},50);
    $(".r_f[rel='"+idx+"']").stop().animate({right:'-80px'},50);
  });
        
});
 
});
 
  
 </script>

<?php $home_slides=sp_getslide("index_slider"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>

<div id="slideBox2" class="main_adv_box">
	<div class="main_adv_img" id="bd2">
        <ul>
            <?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><li>
				<span>
				<a style="background: transparent url(<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>) no-repeat scroll center 0px; width: 100%; height: 100%;" href="<?php echo ($vo["slide_url"]); ?>">
					<img style="display: none;" alt="" src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>">
				</a>
				</span>
			</li><?php endforeach; endif; ?>
		</ul>
	</div>
	<div class="hd">
        <ul>
        	<?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><li></li><?php endforeach; endif; ?>
        </ul>
	</div>
	<a style="left: -52px;" class="prev" id="prev2" href="javascript:void(0)"></a>
	<a style="right: -52px;" class="next" id="next2" href="javascript:void(0)"></a>
	
</div>
<div class="blank"></div>
<div class="section1">
<div class="warp">
	<div class="main_title">
		<div class="title_img"></div>
		<div class="title_tit">
			<tg>从技术、战略、资本各方面提供全方位的创新服务，帮助企业互联网化升级</tg>
		</div>
	</div>
	<div class="boxes">
	<!-- 焦点图 -->
    <div id="slideBox" class="slideBox">
    <div class="bd">
    <ul>
            <li>
                <div class="box" rel="1">
                    <div class="box_img">
                        <a href="<?php echo leuu('page/index',array('id'=>'13'));?>">
                        <div class="imgcover" rel="1"></div>
                        <div class="t_f" rel="1">创新模式互联网+软件产品</div>
                        <div class="l_o" rel="1"></div>
                        <div class="r_f" rel="1"></div>
                        <img src="/data/upload/20160723/5792cb69e602d.png" alt="创新模式互联网+软件产品">
                        </a>
                    </div>
                    <div class="box_txt">
                        <a href="<?php echo leuu('page/index',array('id'=>'13'));?>">
                        <h1>创新模式互联网+软件产品</h1>
                        </a>
                        <h2>技术驱动商业创新</h2>
                        <h3>研发符合企业需求的产品</h3>
                        <div class="blank15"></div>
                        <a class="btna btn_a btn_green" href="<?php echo leuu('page/index',array('id'=>'13'));?>">服务介绍</a>
                        <a class="btna btn_b b_g" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($company_qq); ?>&site=qq&menu=yes">马上咨询</a>
                        <div class="blank"></div>
                    </div>
                </div>
			</li>
            
            <li>
                <div class="box" rel="2">
                    <div class="box_img">
                        <a href="<?php echo leuu('page/index',array('id'=>'41'));?>">
                        <div class="imgcover" rel="2"></div>
                        <div class="t_f" rel="2">政务与行业软件产品</div>
                        <div class="l_o" rel="2"></div>
                        <div class="r_f" rel="2"></div>
                        <img src="/data/upload/20160723/5792cb9c86a4c.png" alt="政务与行业软件产品">
                        </a>
                    </div>
                    <div class="box_txt">
                        <a href="<?php echo leuu('page/index',array('id'=>'41'));?>">
                        <h1>政务与行业软件产品</h1>
                        </a>
                        <h2>政府、金融、国土、水利、环保</h2>
                        <h3>研发符合行业需求智慧解决方案</h3>
                        <div class="blank15"></div>
                        <a class="btna btn_a btn_green" href="<?php echo leuu('page/index',array('id'=>'41'));?>">服务介绍</a>
                        <a class="btna btn_b b_g" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($company_qq); ?>&site=qq&menu=yes">马上咨询</a>
                        <div class="blank"></div>
                    </div>
                </div>
			</li>
            
            <li>
                <div class="box" rel="3" style="margin-right:0;">
                    <div class="box_img">
                        <a href="<?php echo leuu('page/index',array('id'=>'42'));?>">
                        <div class="imgcover" rel="3"></div>
                        <div class="t_f" rel="3">移动互联网营销服务</div>
                        <div class="l_o" rel="3"></div>
                        <div class="r_f" rel="3"></div>
                        <img src="/data/upload/20160723/5792cbc07f03a.png" alt="移动互联网营销服务">
                        </a>
                    </div>
                    <div class="box_txt">
                        <a href="<?php echo leuu('page/index',array('id'=>'42'));?>">
                        <h1>移动互联网营销服务</h1>
                        </a>
                        <h2>网络营销助力品牌成长</h2>
                        <h3>帮助企业快速传播价值</h3>
                        <div class="blank15"></div>
                        <a class="btna btn_a btn_green" href="<?php echo leuu('page/index',array('id'=>'42'));?>">服务介绍</a>
                        <a class="btna btn_b b_g" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($company_qq); ?>&site=qq&menu=yes">马上咨询</a>
                        <div class="blank"></div>
                    </div>
                </div>
			</li>
       														
	</ul>
	</div>
	<div class="hd">
       <ul></ul>
    </div>
	</div>
	<div class="blank"></div>
	</div>
</div>	
<div class="blank30"></div>
</div>
<div class="section2">
<div class="warp">
	<div class="s_tit"><h1>公司优势</h1><span>深耕互联网产业，坚持技术创新与商业模式创新</span></div>
	<div class="blank15"></div>
	<div class="boxes">
		<div class="box">
		<div class="blank15"></div>
		<div class="box_img">
			<h1>10+</h1>
			<h2>创新产品</h2>
		</div>
		<div class="box_txt">
			<div class="b_c">
			拥有<em>10</em>余款互联网创新产品<br>
			自主知识产权
			</div>
			<div class="blank15"></div>
		</div>
		</div>
		<div class="box">
		<div class="blank15"></div>
		<div class="box_img">
			<h1>3</h1>
			<h2>产品&服务</h2>
		</div>
		<div class="box_txt">
			<div class="b_c">
			<em>3</em>大类产品&服务<br>
			为您提供一站式互联网解决方案
			</div>
			<div class="blank15"></div>
		</div>
		</div>
		<div class="box">
		<div class="blank15"></div>
		<div class="box_img">
			<h1>20+</h1>
			<h2>专业团队</h2>
		</div>
		<div class="box_txt">
			<div class="b_c">
			<em>20</em>余名互联网领域<em>10</em>余年从业经验<br>
            的专业团队
			</div>
			<div class="blank15"></div>
		</div>
		</div>
	<div class="blank"></div>
	</div>
</div>	
</div>
<div class="section3">
<div class="warp">
	<div class="s_tit"><h1>合作客户</h1><span>为企业客户实现商业与技术的完美融合</span></div>
	<div class="blank30"></div>
	<div class="fff anlibox">
		<div class="clearfix" style=" width:100%; overflow:hidden; margin:0 auto;">
			<ul>
     <?php
 $termid=4; $cates=sp_get_child_terms($termid); foreach($cates as $val){ $alids[]=$val['term_id']; } $alids = implode(',',$alids); $alids = !empty($alids)?$termid.','.$alids:$termid; ?>
<?php $anlilist=sp_sql_posts("cid:$alids;field:tid,term_id,smeta;order:listorder asc,post_modified desc;limit:5;",array('recommended'=>'1')); ?>
		<?php if(is_array($anlilist)): foreach($anlilist as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>
		<li class="f_l link">
            <div class="linkct">
            <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
                <?php if(empty($smeta['thumb'])): ?><img src="/themes/sharingany/Public/images/default_tupian1.png" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>"/>
                <?php else: ?> 
                    <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive img-thumbnail" alt="<?php echo ($vo["post_title"]); ?>" /><?php endif; ?>
            </a>
            </div>
        </li><?php endforeach; endif; ?>
			</ul>
		</div>
		
	</div>
	<div class="blank30"></div>
		<a class="more" target="_blank" href="<?php echo leuu('list/index',array('id'=>4));?>">更多案例 <em>&gt;</em></a>
	<div class="blank30"></div>
	<div class="blank15"></div>
</div>
<div class="article">
	<div class="warp">
	<div class="article_m article_m_l">
			<div class="article_m_title clearfix">
				<span>众享资讯</span>
				<a href="<?php echo leuu('list/index',array('id'=>6));?>" target="_blank" class="f_r view_more">更多&gt;</a>
			</div>
			<div class="article_m_content">
            <?php $zxzx=sp_sql_posts("cid:6;field:tid,term_id,post_title,post_excerpt,post_modified,smeta;order:listorder asc,post_modified desc;limit:1;",array('istop'=>'1')); ?>
		<?php if(is_array($zxzx)): foreach($zxzx as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>
				<div class="headlines clearfix">
						<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" target="_blank">
							<div class="img">
								<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
                <?php if(empty($smeta['thumb'])): ?><img src="/themes/sharingany/Public/images/default_tupian1.png" alt="<?php echo ($vo["post_title"]); ?>" width="180" height="117"/>
                <?php else: ?> 
                    <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" alt="<?php echo ($vo["post_title"]); ?>" width="180" height="117"/><?php endif; ?>
            </a>
							</div>
							<div class="text">
								<h3><a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo ($vo["post_title"]); ?></a></h3>
								<div class="brief"><a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo msubstr($vo['post_excerpt'],0,32);?></a></div>
								<div class="time">
									<span class="time_span"><?php echo ($vo["post_modified"]); ?></span>
								</div>
							</div>
						</a>
					</div><?php endforeach; endif; ?>         																																											<div class="footlines">
					<ul>
						<?php $zxzxlist=sp_sql_posts("cid:6;field:tid,term_id,post_title,post_modified;order:listorder asc,post_modified desc;limit:0,4;",array('recommended'=>'1')); ?>
		<?php if(is_array($zxzxlist)): foreach($zxzxlist as $key=>$vo): ?><li class="clearfix">
    <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo msubstr($vo['post_title'],0,24);?></a>
    <span><?php echo date('Y-m-d',strtotime($vo['post_modified']));?></span>
</li><?php endforeach; endif; ?>																																								
					</ul>
				</div>
			</div>
		</div>
						<div class="article_m article_m_r">
			<div class="article_m_title clearfix">
				<span>产品动态</span>
				<a href="<?php echo leuu('list/index',array('id'=>7));?>" target="_blank" class="f_r view_more">更多&gt;</a>
			</div>
			<div class="article_m_content">
															<?php $cpdt=sp_sql_posts("cid:7;field:tid,term_id,post_title,post_excerpt,post_modified,smeta;order:listorder asc,post_modified desc;limit:1;",array('istop'=>'1')); ?>
		<?php if(is_array($cpdt)): foreach($cpdt as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>
				<div class="headlines clearfix">
						<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" target="_blank">
							<div class="img">
								<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
                <?php if(empty($smeta['thumb'])): ?><img src="/themes/sharingany/Public/images/default_tupian1.png" alt="<?php echo ($vo["post_title"]); ?>" width="180" height="117"/>
                <?php else: ?> 
                    <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" alt="<?php echo ($vo["post_title"]); ?>" width="180" height="117"/><?php endif; ?>
            </a>
							</div>
							<div class="text">
								<h3><a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo ($vo["post_title"]); ?></a></h3>
								<div class="brief"><a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo msubstr($vo['post_excerpt'],0,32);?></a></div>
								<div class="time">
									<span class="time_span"><?php echo ($vo["post_modified"]); ?></span>
								</div>
							</div>
						</a>
					</div><?php endforeach; endif; ?>         																																											<div class="footlines">
					<ul>
						<?php $cpdtlist=sp_sql_posts("cid:7;field:tid,term_id,post_title,post_modified;order:listorder asc,post_modified desc;limit:0,4;",array('recommended'=>'1')); ?>
		<?php if(is_array($cpdtlist)): foreach($cpdtlist as $key=>$vo): ?><li class="clearfix">
    <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo msubstr($vo['post_title'],0,24);?></a>
    <span><?php echo date('Y-m-d',strtotime($vo['post_modified']));?></span>
</li><?php endforeach; endif; ?>																																								
					</ul>
				</div>
			</div>
		</div>
			</div>
</div>
</div>
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

<!--<div style="width:100%;height:100%;display:table;position:fixed;left:0;top:0;z-index:10000" class="maskbox">
	<div style="width:100%;height:100%;background:#000000;opacity:0.85;filter:alpha(opacity=85)"></div>
    <div style="width:900px;height:50px;line-height:50px;font-size:50px;text-align:center;color:#ffffff;position:absolute;top:50%;left:50%;margin-left:-450px;margin-top:-25px;">
    	网站正在努力改版中，敬请期待！<span class="closess" title="点我可关闭哦！！！" style="display:inline-block;width:50px;height:50px;text-align:center;line-height:50px;cursor:pointer;color:#fff;font-size:50px;">&times;</span>
    </div>
</div>-->
<script>
$('.closess').click(function(){
	$('.maskbox').hide();
	});
</script>
</body></html>