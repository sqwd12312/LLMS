<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>物品租赁系统</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="css/nav.css">
    <link rel="stylesheet" type="text/css" href="font/iconfont.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/nav.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    
    <style>
   
    a:hover{
    cursor:pointer;
    }
    </style>
    <script language=javascript>
	// 提交分页的查询的表单
	function to_page(url1){

                
                 $.ajax({ url:url1,
                         type:"post",
                         async : false, 
                        
                        success:function(data){
                                // 你的具体操作
                                // alert(data);
                                $("#inside").html(data);
                                alert("成功");
                                
                        },
                        error: function() {  
                            alert("失败，请稍后再试！");  
                        }  
                });
        }
	
</script>



</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on sendRequest" href="javascript::void(0)" onclick="to_page('toindex.action')">首页</a></li>              
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li>欢迎您  :  ${sessionScope.user.username}</li>               
                <li><a href="javascript:if(confirm('确实要退出登录吗?'))location='login.action'">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
<div class="nav">
     <div class="sidebar-wrap" style="background:rgba(38,50,56)">
        <div class="sidebar-content" style="background:rgba(38,50,56)">
       	<div class="nav-top">
		  <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png" ></div>
	    </div> 	
        <ul>
		<li class="nav-item">
			<a href="javascript:;"><i class="iconfont nav-icon icon_4"></i><span>物品信息</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="itemList.action"><span>物品列表</span></a></li>
				<li><a href="toAddItem.action"><span>添加物品</span></a></li>				
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="iconfont nav-icon icon_9"></i><span>租赁信息</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="hetong/findAllHetong.action"><span>在租列表</span></a></li>
				<li><a href="checkout/getallcheckout.action"><span>已退租列表</span></a></li>
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="iconfont nav-icon icon_10"></i><span>申请列表</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="findapplylist.action"><span>租赁申请</span></a></li>
				<li><a href="applyout/findallapplyout.action"><span>退租申请</span></a></li>
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="iconfont nav-icon icon_6"></i><span>租金信息</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="paid/getAllPaidRent.action"><span>已缴租金</span></a></li>
				<li><a href="paid/getAllPaidBackRent.action"><span>退回租金</span></a></li>
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="iconfont nav-icon icon_8"></i><span>评价信息</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="getItemEvaluationsByAdmin.action"><span>所有评价</span></a></li>
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="iconfont nav-icon icon_7"></i><span>其他操作</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="findalluserlist.action"><span>用户信息</span></a></li>
			</ul>
		</li>						
	</ul>
        </div>
         </div>
     </div>
     
     
     
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用本系统！</span></div>
        </div>
        
        <div class="result-wrap" id="inside">
       <jsp:include page="${mainPage==null?'../admin/index.jsp':mainPage}"></jsp:include>
            </div>
        </div>
        
    </div>
    <!--/main-->
</div>
</body>
</html>