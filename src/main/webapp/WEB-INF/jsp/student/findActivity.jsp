<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>活动记录</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="keywords" content="">
		<meta name="description" content="">
		
		<link rel="shortcut icon" href="favicon.ico"> <link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
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
		                    <h5>所有活动</h5>     
		                </div>
		                <div class="ibox-content">
		                    <div class="row m-b-sm m-t-sm">
		                        <div class="col-md-1">
		                            <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
		                        </div>
		                        
		                        <div class="col-sm-2">
		                        	<select class="form-control" style="font-size: 13px;">
		                        		<option></a>全部</option>
		                        		<option>未处理</option>
		                        		<option>已审批</option>
		                        		<option>已驳回</option>
		                        		<option>已完成</option>
		                        		<option>待举办</option>
		                        		<option>进行中</option>
		                        		<option>已结束</option>
		                        	</select>
		                        </div>
									
		                        <div class="col-md-4" style="float: right;">
		                            <div class="input-group">
		                                <input type="text" placeholder="请输入活动名称" class="input-sm form-control"> <span class="input-group-btn">
		                                    <button type="button" class="btn btn-sm btn-primary" style="height: 32px;"> 搜索</button> </span>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="project-list table-responsive">
		                        <table class="table table-hover">
		                            <thead class="table-header">
										<tr>
							                <th class="table-th-css">状态</th>
							                <th class="table-th-css">活动名称</th>
							                <th class="table-th-css">申请时间</th>
							                <th class="table-th-css">活动开始时间</th>
											<th class="table-th-css">活动结束时间</th>
											<th class="table-th-css">活动范围</th>
							                <th class="table-th-css">申请人</th>
							                <th class="table-th-css">进度</th>
							            </tr>
							        </thread>       
		                            <tbody>
		                                <tr>
		                                    <td class="project-status">
		                                        <span class="label label-primary">进行中</span>
											</td>
		                                    <td class="project-title"><a href="">计算机技能培训</a></td>
		                                    <td class="project-title"><a>03-15 18:00</a></td>
		                                    <td class="project-title"><a>03-16 18:00</a></td>
											<td class="project-title"><a>03-17 18:00</a></td>
											<td class="project-title"><a>学院</a></td>
		                                    <td class="project-title"><a>王世磊</a></td>
		                                    <td class="project-completion">
		                                        <small>当前进度： 48%</small>
		                                        <div class="progress progress-mini">
		                                            <div style="width: 48%;" class="progress-bar"></div>
		                                        </div>
		                                    </td>
		                                </tr>
		
		                            </tbody>
		                        </table>
		                        <nav aria-label="Page navigation" style="float: right;">
								  <ul class="pagination" style="margin: 0;padding: 0;">
								    <li class="disabled">
								      <a href="#" aria-label="Previous">
								        <span aria-hidden="true">&laquo;</span>
								      </a>
								    </li>
								    <li><a href="#">1<span class="sr-only">(current)</span></a></li>
								    <li><a href="#">2</a></li>
								    <li><a href="#">……</a></li>
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
	</body>
</html>
