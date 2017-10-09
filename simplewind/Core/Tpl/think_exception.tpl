<!DOCTYPE html>

	<html>

	<head>

		<title>找不到您要找的页面！</title>

		<meta name="keywords" content="{$post_keywords}" />

		<meta name="description" content="{$post_excerpt}">

		<tc_include file="Public:head" />
        <link href="__TMPL__Public/css/bootstrap.css" rel="stylesheet" type="text/css">
			
		<style>
		.text
		{
			line-height:28px;
			font-family: microsoft yahei,microsoft jhenghei,verdana,tahoma;
			font-size:13px;
			color:#62261c;
			float:left;
			padding-top:10px;
		}
		.text a,.text a:link
		{
			color:#66261c;
			text-decoration:underline;
			font-weight:bold;
		}
		.text a:hover
		{
			text-decoration:none;
		}
		</style>

	</head>

<body class="">

<tc_include file="Public:nav"/>

<div class="container tc-main">

	<div class="row">
    
    	<!--bof rightbox-->
    
    	<div class="col-xs-12">

			<div class="tc-box">

				<div style="width:100%; height:100%;">
                    <div style="padding:50px 0px;overflow:hidden;">
                        <div class="col-xs-6" style="width:50%;float:left">
                        <img src="__TMPL__Public/images/404/nu.gif" class="img-responsive pull-right">
                        </div>
                        <div class="col-xs-6" style="width:50%;float:left">
                            <img src="__TMPL__Public/images/404/err_404.gif" class="img-responsive">
                            <br>
                            <div class="text">莫有办法,找不到这个页面<br>回到 <a href="{$site_host}">众享网络官网</a>首页</div>
                        </div>
                    </div>
                </div>
                
		    </div>	    

		</div>
        
        <!--eof rightbox-->
		
	</div>

</div>

<tc_include file="Public:footer"/>

<tc_include file="Public:scripts"/>

</body>

</html>