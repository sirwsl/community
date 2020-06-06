<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>查看会员</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="keywords" content="">
		<meta name="description" content="">
		
		<link rel="shortcut icon" href="favicon.ico"> 
		<link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
		<link href="./css/font-awesome.css?v=4.4.0" rel="stylesheet">
		<link href="./css/animate.css" rel="stylesheet">
		<link href="./css/style.css?v=4.1.0" rel="stylesheet">
	</head>
	<body class="gray-bg">
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
		        <div class="col-sm-12">
		            <div class="ibox">
		                <div class="ibox-title">
		                    <h5>会员查看</h5>     
		                </div>
		                <div class="ibox-content">
		                    <div class="row m-b-sm m-t-sm">
								<div class="col-md-1">
								    <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
								</div>
								
								<div class="col-md-4" style="float: right;">
									<div class="input-group" >
										<input type="text" placeholder="请输入会员名称" class="input-sm form-control"> <span class="input-group-btn">
											<button type="button" class="btn btn-sm btn-primary" style="height: 32px;"> 搜索</button> </span>
									</div>
								</div>
		                    </div>
		                    <div class="project-list row">
		                        <table class="table table-hover">
		                            <thead class="table-header">
										<tr>
							                <th class="table-th-css">学号</th>
							                <th class="table-th-css">姓名</th>
							                <th class="table-th-css">学院</th>
							                <th class="table-th-css">年级</th>
											<th class="table-th-css">班级</th>
											<th class="table-th-css">联系电话</th>
							                <th class="table-th-css">微信</th>
							                <th class="table-th-css">加入时间</th>
											<!-- <th class="table-th-css">操作</th> -->
							            </tr>
							        </thread>       
		                            <tbody>
		                                <tr>
		                                    <td class="project-title"><a href="">201713453312</a></td>
		                                    <td class="project-title"><a href="">徐震宇</a></td>
		                                    <td class="project-title"><a>数学与计算机科学学院</a></td>
		                                    <td class="project-title"><a>2017级</a></td>
											<td class="project-title"><a>计算机科学与技术一班</a></td>
											<td class="project-title"><a>12345678901</a></td>
		                                    <td class="project-title"><a>12345678901</a></td>
		                                    <td class="project-title"><a>2020-05-25 15:00</a></td>
											<!-- <td>
											    <a class="btn btn-primary btn-sm" onclick="revise()"><i class="fa fa-pencil"></i>修改</a>
												<a class="btn btn-primary btn-sm" onclick="shanchu()"><i class="fa fa-remove"></i>删除</a>
											</td> -->
		                                </tr>
		                            </tbody>
		                        </table>
		                        <nav aria-label="Page navigation" style="float: right;">
		                          <ul class="pagination">
		                            <li>
		                              <a href="#" aria-label="Previous">
		                                <span aria-hidden="true">&laquo;</span>
		                              </a>
		                            </li>
		                            <li><a href="#">1</a></li>
		                            <li><a href="#">2</a></li>
		                            <li><a href="#">3</a></li>
		                            <li><a href="#">4</a></li>
		                            <li><a href="#">5</a></li>
		                            <li>
		                              <a href="#" aria-label="Next">
		                                <span aria-hidden="true">&raquo;</span>
		                              </a>
		                            </li>
		                          </ul>
		                        </nav>
		                    </div>
							
							</div>
						</div>
		            </div>
		        </div>
		    </div>
		</div>

		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    	<script src="./js/swal.js"></script>
	</body>
</html>
