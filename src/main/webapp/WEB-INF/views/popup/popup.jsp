<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />

<style>
font-family: SF Pro KR, SF Pro Display, SF Pro Icons, AOS Icons, Apple Gothic, HY Gulim, MalgunGothic, HY Dotum, Lexi Gulim, Helvetica Neue, Helvetica, Arial, sans-serif;
.layerPopup img { margin-bottom : 20px; }
.layerPopup .layerBox { z-index:10000; position:fixed; right: 1%; top:2%; background:#fff; }
.layerPopup .layerBox .title { margin-bottom:10px; padding-bottom:10px; font-weight:600; border-bottom:1px solid #d9d9d9;}
.layerPopup .layerBox .btnTodayHide {
font-size:14px; font-weight:600; color:black; 
float: left; text-decoration: none; width: 150px; 
height : 30px; line-height: 30px; border:black solid 1px; text-align : center;text-decoration:none;
}
.fz-10 { font-size: 0.75rem; }
</style>

<!-- layer popup content -->
<div class="layerPopup" id="layer_popup" style="visibility: visible;">
    <div class="layerBox">
        <!-- <h4 class="title">FineApple 공지사항</h4> -->
        <div class="cont"><img src="/img/popup/new_open.jpg" usemap="#popup" alt="event page" width="400px"></div>
         <form name="pop_form" class="px-3 m-0 py-2 d-flex justify-content-between align-items-center">
	        <div id="check" class="d-inline-flex"><input type="checkbox" name="chkbox" value="checkbox" id='chkbox'>
	        <label for="chkbox" class="fz-10 ps-1">오늘 하루동안 보지 않기</label></div>
			<div id="close"><a href="javascript:closePop();" class="text-decoration-none fz-10">닫기</a></div>    
		</form>
	</div>
</div>

<script language="JavaScript">
//head 태그 안에 스크립트 선언
        function setCookie( name, value, expiredays ) {
            var todayDate = new Date();
            todayDate.setDate( todayDate.getDate() + expiredays ); 
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
        }
        function closePop() {
            if ( document.pop_form.chkbox.checked ){
                setCookie( "maindiv", "done" , 1 );
            }
            document.all['layer_popup'].style.visibility = "hidden";
        }
</script>
 <script language="Javascript">
    cookiedata = document.cookie;   
    if ( cookiedata.indexOf("maindiv=done") < 0 ){     
        document.all['layer_popup'].style.visibility = "visible";
    }
    else {
        document.all['layer_popup'].style.visibility = "hidden";
    }
</script>