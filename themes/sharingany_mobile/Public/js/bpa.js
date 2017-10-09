function mouseClickEvent(e){e=e||window.event,bpaEvent={x:e.clientX,y:e.clientY,t:(new Date).getTime(),m:0},bpaMonitor.pushEvent(bpaEvent)}function mouseMoveEvent(e){e=e||window.event
var t={}
t={x:e.clientX,y:e.clientY,t:(new Date).getTime(),m:1},bpaMonitor.pushEvent(t)}function mouseWheelEvent(e){e=e||window.event
var t={}
t={x:e.clientX,y:e.clientY,t:(new Date).getTime()}
var n=0
e.wheelDelta?(n=e.wheelDelta,window.opera&&(n=-n)):e.detail&&(n=-e.detail),t.m=n>0?2:3,bpaMonitor.pushEvent(t)}function mouseDownEvent(e){e=e||window.event,bpaEvent={x:e.clientX,y:e.clientY,t:(new Date).getTime(),m:4},bpaMonitor.pushEvent(bpaEvent)}function mouseUpEvent(e){e=e||window.event,bpaEvent={x:e.clientX,y:e.clientY,t:(new Date).getTime(),m:5},bpaMonitor.pushEvent(bpaEvent)}function getUserAgent(){return navigator.userAgent?navigator.userAgent:""}function getRefer(){return document.referrer?document.referrer:""}function getUrl(){return window.location.href?window.location.href:""}function base64Encoder(e){var t,n,o,r,a,i,u="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
for(o=e.length,n=0,t="";o>n;){if(r=255&e.charCodeAt(n++),n==o){t+=u.charAt(r>>2),t+=u.charAt((3&r)<<4),t+="=="
break}if(a=e.charCodeAt(n++),n==o){t+=u.charAt(r>>2),t+=u.charAt((3&r)<<4|(240&a)>>4),t+=u.charAt((15&a)<<2),t+="="
break}i=e.charCodeAt(n++),t+=u.charAt(r>>2),t+=u.charAt((3&r)<<4|(240&a)>>4),t+=u.charAt((15&a)<<2|(192&i)>>6),t+=u.charAt(63&i)}return t}function updateBpaId(){jsonp(URL.GET_TOKEN,function(e){bpaMonitor.bpaId=0==e.status?e.uuid:bpaMonitor.getID()})}function jsonp(e,t){var n="_BPA_jsonp_"+(new Date).getTime()+"_",o=document.getElementsByTagName("head")[0]
window[n]=function(){window[n]=null
try{delete window[n]}catch(e){}t.apply(null,Array.prototype.slice.call(arguments))
var o=document.getElementById(n)
o&&o.parentNode.removeChild(o)}
var r=document.createElement("script")
r.setAttribute("type","text/javascript"),r.setAttribute("id",n),r.setAttribute("charset","utf-8"),e+=e.indexOf("?")>=0?"&":"?",e+="callback="+n,r.setAttribute("src",e),o.appendChild(r)}if("object"!=typeof JSON&&(JSON={}),function(){"use strict"
function f(e){return 10>e?"0"+e:e}function this_value(){return this.valueOf()}function quote(e){return escapable.lastIndex=0,escapable.test(e)?'"'+e.replace(escapable,function(e){var t=meta[e]
return"string"==typeof t?t:"\\u"+("0000"+e.charCodeAt(0).toString(16)).slice(-4)})+'"':'"'+e+'"'}function str(e,t){var n,o,r,a,i,u=gap,p=t[e]
switch(p&&"object"==typeof p&&"function"==typeof p.toJSON&&(p=p.toJSON(e)),"function"==typeof rep&&(p=rep.call(t,e,p)),typeof p){case"string":return quote(p)
case"number":return isFinite(p)?p+"":"null"
case"boolean":case"null":return p+""
case"object":if(!p)return"null"
if(gap+=indent,i=[],"[object Array]"===Object.prototype.toString.apply(p)){for(a=p.length,n=0;a>n;n+=1)i[n]=str(n,p)||"null"
return r=0===i.length?"[]":gap?"[\n"+gap+i.join(",\n"+gap)+"\n"+u+"]":"["+i.join(",")+"]",gap=u,r}if(rep&&"object"==typeof rep)for(a=rep.length,n=0;a>n;n+=1)"string"==typeof rep[n]&&(o=rep[n],r=str(o,p),r&&i.push(quote(o)+(gap?": ":":")+r))
else for(o in p)Object.prototype.hasOwnProperty.call(p,o)&&(r=str(o,p),r&&i.push(quote(o)+(gap?": ":":")+r))
return r=0===i.length?"{}":gap?"{\n"+gap+i.join(",\n"+gap)+"\n"+u+"}":"{"+i.join(",")+"}",gap=u,r}}"function"!=typeof Date.prototype.toJSON&&(Date.prototype.toJSON=function(){return isFinite(this.valueOf())?this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(this.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f(this.getUTCSeconds())+"Z":null},Boolean.prototype.toJSON=this_value,Number.prototype.toJSON=this_value,String.prototype.toJSON=this_value)
var cx,escapable,gap,indent,meta,rep
"function"!=typeof JSON.stringify&&(escapable=/[\\\"\u0000-\u001f\u007f-\u009f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,meta={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"},JSON.stringify=function(e,t,n){var o
if(gap="",indent="","number"==typeof n)for(o=0;n>o;o+=1)indent+=" "
else"string"==typeof n&&(indent=n)
if(rep=t,t&&"function"!=typeof t&&("object"!=typeof t||"number"!=typeof t.length))throw Error("JSON.stringify")
return str("",{"":e})}),"function"!=typeof JSON.parse&&(cx=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,JSON.parse=function(text,reviver){function walk(e,t){var n,o,r=e[t]
if(r&&"object"==typeof r)for(n in r)Object.prototype.hasOwnProperty.call(r,n)&&(o=walk(r,n),void 0!==o?r[n]=o:delete r[n])
return reviver.call(e,t,r)}var j
if(text+="",cx.lastIndex=0,cx.test(text)&&(text=text.replace(cx,function(e){return"\\u"+("0000"+e.charCodeAt(0).toString(16)).slice(-4)})),/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,"")))return j=eval("("+text+")"),"function"==typeof reviver?walk({"":j},""):j
throw new SyntaxError("JSON.parse")})}(),window.bpaMonitor=window.bpaMonitor||{},bpaMonitor.instance=bpaMonitor.instance||0,!bpaMonitor.instance++){var ROOT="http://bpa.baidu.com",URL={POST_DATA:ROOT+"/bpa/bpa.gif",GET_TOKEN:ROOT+"/bpa/bpaId"},EVENT_SIZE=100
bpaMonitor.container=null,bpaMonitor.startRecord=function(){bpaMonitor.eventQueue=[],document.onclick=mouseClickEvent,document.onmousemove=mouseMoveEvent,document.onmousewheel=mouseWheelEvent,document.onmousedown=mouseDownEvent,document.onmouseup=mouseUpEvent},bpaMonitor.getData=function(){var e={userAgent:getUserAgent(),referrer:getRefer(),url:getUrl(),event:bpaMonitor.eventQueue,screenWidth:window.screen.width,screenHeight:window.screen.height}
return base64Encoder(JSON.stringify(e))},bpaMonitor.getID=function(){return"d73c414d-73df-4c86-ab24-db213d296f6d"},bpaMonitor.getBpaId=function(){return updateBpaId(),bpaMonitor.bpaId},bpaMonitor.pushEvent=function(e){var t=bpaMonitor.eventQueue.push(e)
t>EVENT_SIZE&&bpaMonitor.eventQueue.shift()},bpaMonitor.sendData=function(){var e,t
bpaMonitor.container||(bpaMonitor.container=document.createElement("div"),bpaMonitor.container.style.display="none"),2==arguments.length?(e=arguments[0],t=arguments[1]):(e=bpaMonitor.getData(),t=bpaMonitor.getID()),bpaMonitor.container.innerHTML='<form action="'+URL.POST_DATA+'" method="post" target="bpaHideIframe"><input name="p" value="'+e+'"/><input name="bpaId" value="'+t+'"/></form><iframe id="bpaHideIframe" name="bpaHideIframe" src="about:blank"></iframe>',document.body&&(document.body.appendChild(bpaMonitor.container),form=bpaMonitor.container.getElementsByTagName("form")[0],form.submit())},bpaMonitor.startRecord(),bpaMonitor.getBpaId()}