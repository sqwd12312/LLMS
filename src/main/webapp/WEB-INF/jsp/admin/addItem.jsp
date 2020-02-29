<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>物品租赁系统-添加</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
   <style>
   

.info {
  
  font-size:13px;
  color: red;
  
}

   </style>
    <script type="text/javascript">
    $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单
        $("#myform").validate({
        	
            rules : {
            	itemNumber : {
                    required : true,
                },
                
                masterId : {
                    required : true,
                },
               
                name : {
                    required : true,
                  
                },
                
                price: {
                    required : true,
                    min: 0
                  
                }
                
            },
            messages : {
            	itemNumber : {
                    required : "物品编号不能为空！",
                },
                
                masterId : {
                    required : "出租人id不能为空！",
                },
               
                name : {
                    required : "物品名称不能为空！",
                  
                },
                price: {
                    required :  "租金不能为空！",
                    min:"请输入正确的租金"
                  
                }
                
            }
        });
    })
	</script>
	
</head>
<body>

<div class="result-title">
<h1>添加物品</h1>
</div>
<div class="result-content">
<div class="sidebar-title">
        <form action="addItem.action" method="post" id="myform" name="myform" enctype="multipart/form-data" >
                  <table class="insert-tab" width="100%">
                      <tr>
                          <font id="info" color="red">${info }</font>
                      </tr>
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>物品编号：</th>
                                <td>
                                    <input class="common-text required" value="${item.itemNumber}" id="itemNumber" name="itemNumber" size="50" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>物品名称：</th>
                                <td><input class="common-text" name="name" value="${item.name }" id="name" size="50" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>出租人Id：</th>
                                <td><input class="common-text" name="masterId" value="${item.masterId }" id="masterId" size="50" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red"></i>备注：</th>
                                <td><input class="common-text" name="note" value="${item.note }" id="note" size="50" type="text" ></td>
                            </tr>
                           <tr>
                                <th><i class="require-red">*</i>租金/天：</th>
                                <td><input class="common-text" name="price" value="${item.price }" id="price" size="50" type="text"
                                           placeholder="租金默认人民币,单位:元" ></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>状态：</th>
                            <td>
                                <select name="status" id="status" class="required">                                 
                                <option value="未租赁" <c:if test="${item.status == '未租赁'}">selected</c:if>>未租赁</option> 
                                </select>
                            </td>
                            </tr>
							<tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
	
                        </tbody></table>
                </form>
          </div>
          </div>
    
</body>
</html>