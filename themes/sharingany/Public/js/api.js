!function(e){function t(e){var t=!0;return/^\d{11,12}$/.test(e)||(t=!1,alert(E.ERROR_PHONE)),t}function n(e){alert(e)}function o(e){var t=e.msg||E.ERROR_FAIL;alert(t+" ( code: "+e.status+" )")}function r(e,t){var n="_lxb_jsonp_"+(new Date).getTime()+"_",o=document.getElementsByTagName("head")[0];window[n]=function(){window[n]=null;try{delete window[n]}catch(e){}t.apply(null,Array.prototype.slice.call(arguments));var o=document.getElementById(n);o&&o.parentNode.removeChild(o)};var r=document.createElement("script");r.setAttribute("type","text/javascript"),r.setAttribute("id",n),r.setAttribute("charset","utf-8"),e+=e.indexOf("?")>=0?"&":"?",e+="callback="+n,r.setAttribute("src",e),o.appendChild(r)}function i(e,t,n,o){var r=e+"="+t;if(n&&(r+="; path="+n),o){var i=new Date;i.setTime(i.getTime()+24*o*3600*1e3),r+="; expires="+i.toGMTString()}document.cookie=r}function a(e){var t=new RegExp("(^| )"+e+"=([^;]*)(;|$)"),n=t.exec(document.cookie);return n?n[2]||null:null}function c(e){return e=e.replace(/^https?:\/\//,"").split("/"),e[0].replace(/:.*$/,"")}function d(e){e=e.replace(/\r\n/g,"\n");for(var t="",n=0;n<e.length;n++){var o=e.charCodeAt(n);128>o?t+=String.fromCharCode(o):o>127&&2048>o?(t+=String.fromCharCode(o>>6|192),t+=String.fromCharCode(63&o|128)):(t+=String.fromCharCode(o>>12|224),t+=String.fromCharCode(o>>6&63|128),t+=String.fromCharCode(63&o|128))}return t}function l(e){var t,n,o,r,i,a,c,l="",s=0;for(e=d(e);s<e.length;)t=e.charCodeAt(s++),n=e.charCodeAt(s++),o=e.charCodeAt(s++),r=t>>2,i=(3&t)<<4|n>>4,a=(15&n)<<2|o>>6,c=63&o,isNaN(n)?a=c=64:isNaN(o)&&(c=64),l=l+_keyStr.charAt(r)+_keyStr.charAt(i)+_keyStr.charAt(a)+_keyStr.charAt(c);return l}function s(){if(-1!==I)return I;var e=c(window.location.href),t=c(document.referrer);return document.referrer?I=e!==t:"loaded"===a("isLoadPage")?I=!1:(i("isLoadPage","loaded","/"),I=!0)}function u(e,t){var n=512,o=y+"/vt/lxb.gif",r=(document.title||"").substr(0,n),i=(document.referrer||"").substr(0,n),a=(document.URL||"").substr(0,n),c=C.BDCBID,d=[];d.push(encodeURIComponent(e||"")),d.push(encodeURIComponent(r||"")),d.push(encodeURIComponent(i||"")),d.push(encodeURIComponent(a||"")),d.push(+s());var u=l(d.join(",")),p=function(){if(w||(w=document.createElement("div"),w.style.display="none"),w.innerHTML='<form action="'+o+'" method="post" target="lxbHideIframe"><input name="p" value="'+u+'"/><input name="uid" value="'+t+'"/><input name="bdcbid" value="'+c+'"/><input name="t" value="'+(new Date).valueOf()+'"/></form><iframe id="lxbHideIframe" name="lxbHideIframe" src="about:blank"></iframe>',document.body){document.body.appendChild(w);var e=w.getElementsByTagName("form")[0];e.submit()}};document.body?p():window.onload=p}function p(){try{return bpaMonitor.getID()}catch(e){return""}}function m(){try{bpaMonitor.sendData()}catch(e){return}}function g(e){var t=[];for(var n in e)t.push(n+"="+encodeURIComponent(e[n]));return t.join("&")}function f(e,i,a){if("[object String]"!=Object.prototype.toString.call(e)&&(e=e.value),!x.status&&t(e)&&x.uid){var c={uid:x.uid,g:x.gid,t:(new Date).getTime(),f:4,r:document.referrer,bdcbid:C.BDCBID};r(v.GET_TOKEN+"?"+g(c),function(t){if(t&&0==t.status&&t.data.tk){var c={bpaId:p(),uid:x.uid,g:x.gid,tk:t.data.tk,vtel:e,bdcbid:C.BDCBID};x.sCode&&(c.scode=x.sCode),x.status=1;var d=setTimeout(function(){x.status=0},5e3);r(v.CALL+"?"+g(c),function(e){d&&clearTimeout(d),x.status=0,e.status?(a=a||o,a.call(null,e)):(i=i||n,i.call(null,e.msg||E.SUCCESS))}),"1"==C.LXBVT&&u(2,x.uid)}})}}function b(){if(!document.getElementById("sCodeCon")){var e=document.createElement("ins"),t=document.createElement("ins"),n=document.createElement("ins"),o=document.createElement("ins"),r=document.createElement("input"),i=document.createElement("ins"),a=document.createElement("ins"),c=document.createElement("img"),d=document.createElement("ins");c.id="sCodeImg",e.id="sCodeCon",e.style.cssText="width: 330px;height: 230px;background-color: rgb(250, 250, 250);border: 1px solid rgb(235,235,235);position: absolute;left: 50%;top: 50%;margin-left: -165px;margin-top: -115px;z-index: 9999;display: block;text-decoration: none;",t.style.cssText='height: 50px;background-color: rgb(63,178,232);color: rgb(255,255,255);font-size: 18px;letter-spacing: 2px;font-family:"Microsoft YaHei",\u5fae\u8f6f\u96c5\u9ed1;line-height: 50px;text-align: center;display: block;text-decoration: none;',n.style.cssText="height: 75px;display: block;text-decoration: none;",o.style.cssText="height: 75px;display: block;text-decoration: none;",r.maxLength=4,r.style.cssText="width: 185px;height: 45px;border: 1px solid rgb(235,235,235);background-color: rgb(255,255,255);float: left;font-size: 30px;line-height: 45px;margin-top: 30px;margin-left: 30px;_margin-left: 20px;display: block;text-decoration: none;",c.style.cssText="width: 80px;height: 45px;float: left;margin-top: 30px;cursor: pointer;",i.style.cssText='width: 100px;height: 35px;float: left;margin-top: 30px;margin-left: 20px;border: 1px solid rgb(63,178,232);background-color: rgb(63,178,232);color: rgb(255,255,255);font-size: 16px;font-family:"Microsoft YaHei",\u5fae\u8f6f\u96c5\u9ed1;line-height: 35px;text-align: center;cursor: pointer;display: block;text-decoration: none;',a.style.cssText='width: 100px;height: 35px;float: left;margin-top: 30px;margin-left: 50px;_margin-left: 25px;border: 1px solid rgb(63,178,232);color: rgb(63,178,232);font-size: 16px;font-family:"Microsoft YaHei",\u5fae\u8f6f\u96c5\u9ed1;line-height: 35px;text-align: center;cursor: pointer;display: block;text-decoration: none;',d.style.cssText='position: absolute;width: 42px;height: 34px;right: 0;bottom: 0;background: url("http://lxb.baidu.com/lxb/pic/api/corner.png") no-repeat!important;_background: none;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=noscale, src="http://lxb.baidu.com/lxb/pic/api/corner.png")',t.innerHTML="\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801",i.innerHTML="\u786e \u8ba4",a.innerHTML="\u53d6 \u6d88",c.onclick=function(){c.src=v.imagePath+(new Date).getTime()},i.onclick=function(){x.sCode=r.value,x.sCode?(r.value="",e.style.display="none",f(x.tel)):alert("\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801\uff01")},a.onclick=function(){r.value="",e.style.display="none"},n.appendChild(r),n.appendChild(c),o.appendChild(a),o.appendChild(i),e.appendChild(t),e.appendChild(n),e.appendChild(o),e.appendChild(d),document.body.appendChild(e)}document.getElementById("sCodeImg").src=v.imagePath+(new Date).getTime(),document.getElementById("sCodeCon").style.display="block"}function h(e){x.tel=e,m();var t={uid:x.uid,bpaId:p()};r(v.SCODEON+"?"+g(t),function(e){e.scodeOn?b():f(x.tel)})}var x={status:0},C={BDCBID:'193cf273-c62b-4295-a1ad-07c8a29519ba',LXBVT:1},y="http://lxbjs.baidu.com",v={GET_TOKEN:y+"/cb/user/check",CALL:y+"/cb/call",SCODEON:y+"/cb/call/getScode",imagePath:y+"/cb/scode?t="},E={SUCCESS:"\u56de\u547c\u6210\u529f\uff01",ERROR_FAIL:"\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5",ERROR_PHONE:"\u8bf7\u60a8\u8f93\u5165\u6b63\u786e\u7684\u53f7\u7801\uff0c\u624b\u673a\u53f7\u7801\u8bf7\u76f4\u63a5\u8f93\u5165\uff0c\u5ea7\u673a\u8bf7\u52a0\u533a\u53f7"};_keyStr="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";var T=e.lxb||{};if(!T.call){T.call=h,e.lxb=T;for(var k,w=null,I=-1,S=document.getElementsByTagName("script"),A=0;k=S[A];A++){var R=k.getAttribute("data-lxb-gid");if(k=k.getAttribute("data-lxb-uid"),R&&!x.gid&&(x.gid=R),k&&!x.uid){x.uid=k;break}}x.uid&&"1"==C.LXBVT&&u(1,x.uid),document.write("<script language='javascript' src='http://bpa.baidu.com/bpa/bpa.js'></script>")}}(window);
