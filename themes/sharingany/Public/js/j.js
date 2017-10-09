$(document).ready(function(){
	              $(".all_check_nav a").click(function(){
						var this_rel=$(this).attr("rel");
						$(this).addClass("current").removeClass("y").siblings().removeClass("current");
					    $(".all_check_"+this_rel).show().siblings(".all_check").hide();
					});
					$(".o2o_page_check  a").hover(function(){if (!$(this).hasClass("current")){$(this).addClass("current y")};},function(){if($(this).hasClass("y")){$(this).removeClass("current y");}});

			//---------------------------------------------------------------------------------------------------------
			$(".terminal  li").hover(function(){if (!$(this).hasClass("current")){$(this).addClass("current y")};},function(){if($(this).hasClass("y")){$(this).removeClass("current y");}});
			$(".terminal  li").click(function(){
				 var index_num=$(this).attr("rel");
			     $(this).addClass("current").removeClass("y").siblings().removeClass("current");				
				 $('.terminal_'+index_num).css("display","block").siblings().css("display","none");
			});
			//---------------------------------------------------------------------------------------------------------
			$(window).bind("scroll", function(){ 
					    var x=$(document).scrollTop();
						var to_top=$("#to_top").offset().top;
						 if(x>to_top){ //在wap，滚动条是弹性的，没有个定性，会跳来跳去的
					 	$("#centop").addClass("pf ");
					 }else{
					 	$("#centop").removeClass("pf");
					}	 	
					}); 
		
			});
			

 function DY_scroll(wraper,prev,next,img,speed,or)         
 { 
  var wraper = $(wraper);                                  
  var prev = $(prev);                                       
  var next = $(next);                                       
  var img = $(img).find('ul');                             
  var w = img.find('li').outerWidth(true);                  
  var s = speed;                                            
  next.click(function()                                     
       {
        img.animate({'margin-left':-w},1000,function()          
                  {
                   img.find('li').eq(0).appendTo(img);     
                   img.css({'margin-left':0});              
                   });
        });
  prev.click(function()
       {
        img.find('li:last').prependTo(img);                
        img.css({'margin-left':-w});                       
        img.animate({'margin-left':0},1000);                    
        });
  if (or == true)
  {
      wraper.hover(function(){$(".but_span").show();},function(){$(".but_span").hide();});
  }
 }
 
 $(document).ready(function(){
 	 DY_scroll('.img-scroll_0','.prev_0','.next_0','.img-list_0',3,true);//
 });
						