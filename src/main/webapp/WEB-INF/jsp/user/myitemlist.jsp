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
    
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
	</script>
	<style type="text/css">
	
	
	</style>
</head>
<body>
<div>
<div class="result-title">
<h1>我的出租物品</h1>
</div>
	<form id="houseForm" name="houseForm"
		action="itemListByZuke.action"
		method=post >
						 <div class="result-title">
                    <div class="result-list">
                      
                        
                    </div>
                </div>

					<div class="result-content">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr
									style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>物品编号</td>
									<td>物品名称</td>
									<td>备注</td>
									<td>价格/天</td>
									<td>状态</td>
									<td>操作</td>
									
								</tr>
								<c:forEach items="${itemList}" var="item">								
									<tr
										style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
										<td>${item.itemNumber }</td>
										<td>${item.name}</td>
										<td>${item.note}</td>
										<td>${item.price}&nbsp;元</td>
										<td>${item.status}</td>
										<td>
										<c:choose>
										<c:when test="${ item.status=='未租赁'}">
											<a class="link-update"										
											href="zukeToUpdateItem.action?itemId=${item.itemId}">修改</a>
											&nbsp;&nbsp;
											<a class="link-del"
											 href="zukeDeleteItem.action?itemId=${item.itemId}"
											 onclick="return window.confirm('确定删除吗？')">删除</a>
											 &nbsp;&nbsp; 
												</c:when >
												<c:when test="${ item.status=='已租赁'}">
													该物品已被租赁
											 &nbsp;&nbsp; 
												</c:when >
												<c:otherwise>
												    该物品已被申请
												</c:otherwise>
										 </c:choose>
										 </td>										
									</tr>

								</c:forEach>

							</tbody>
						</table>
						</div>
					

						<tr>
						<tr>
							<span id=pagelink>
								<div style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right; margin-top:10px">
									共[<B>${p.total}</B>]条记录，共[<B>${p.pages}</B>]页
									,

									<c:if test="${ p.pageNum > 1 }">
													[<A href="javascript:to_page(${p.prePage})">前一页</A>]
												</c:if>
										<input type="hidden" name="page" id="page" value=""/>
									第<B>${p.pageNum}</B>页

									<c:if test="${ p.pageNum < p.pages }">
													[<A href="javascript:to_page(${p.nextPage})">后一页</A>] 
												</c:if>

									
								</div>
							</span>
						
						</tr>
						</tbody>
					
					

					
						</tbody>
				

					</form>
</div>
 <script language=javascript>
	// 提交分页的查询的表单
	function to_page(page) {
		if (page) {
			$("#page").val(page);
		}
		document.houseForm.submit();
	}
</script>
</body>
</html>