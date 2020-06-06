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
									
		                        <div class="col-md-4" style="float: right;">
		                            <div class="input-group">
		                                <input type="text" placeholder="请输入活动名称" class="input-sm form-control"> <span class="input-group-btn">
		                                    <button type="button" class="btn btn-sm btn-primary">搜索</button> </span>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="project-list table-responsive">
		                        <table class="table table-hover">
		                            <thead class="table-header">
										<tr>
											<th class="table-th-css">活动名称</th>
											<th class="table-th-css">活动地点</th>
											<th class="table-th-css">活动人数</th>
							                <th class="table-th-css">申请时间</th>
							                <th class="table-th-css">活动开始时间</th>
											<th class="table-th-css">活动结束时间</th>
											<th class="table-th-css">活动范围</th>
											<th class="table-th-css">申请社团</th>
											<th class="table-th-css">申请人</th>
											<th class="table-th-css">活动主题</th>
											<th class="table-th-css">活动简介</th>
											<th class="table-th-css">活动须知</th>
											<th class="table-th-css">下载策划案</th>
											<th class="table-th-css">操作</th>
							            </tr>
							        </thread>       
		                            <tbody>
		                                <tr>
											<td class="project-title">计算机技能培训</td>
											<td class="project-title">广智院A-201</td>
											<td class="project-title">60</td>
		                                    <td class="project-title">03-15 18:00</td>
		                                    <td class="project-title">03-16 18:00</td>
											<td class="project-title">03-17 18:00</td>
											<td class="project-title">学院</td>
											<td class="project-title">计算机协会</td>
											<td class="project-title">王世磊</td>
											<td class="project-title">培训</td>
											<td class="project-title">关于计算机技能的培训</td>
											<td class="project-title">
												XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
											</td>
											<td>
												<a href="#" class="btn btn-primary btn-sm">
													<i class="fa fa-download"></i>
													下载
												</a>
											</td>
											<td>
												<a href="projects.jsp#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>备案</a>
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
