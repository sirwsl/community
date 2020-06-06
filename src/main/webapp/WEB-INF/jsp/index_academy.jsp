<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>学生社团｜保卫科</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.jsp" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico"> <link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="./css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="./css/animate.css" rel="stylesheet">
    <link href="./css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">保卫科</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">保卫科
                        </div>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">概况</span>
                    </li>
                    <li>
                        <a class="J_menuItem" href="/cen_index">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">信息主页</span>
                        </a>
                    </li>
                   
                    
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">活动审批</span>
                    </li>
					<li>
					    <a class="J_menuItem" href="/cen_fin_act_W"><i class="fa fa-paste"></i> <span class="nav-label">待备案</span></a>
					    
					</li>
					
					<li>
					    <a class="J_menuItem" href="/cen_fin_act" ><i class="fa fa-asterisk"></i> <span class="nav-label">已备案</span></a>
					</li>
                   
				    <li class="line dk"></li>
				    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
				        <span class="ng-scope">个人管理</span>
				    </li>
					<li>
                        <a href="/mailbox"><i class="fa fa-envelope"></i> <span class="nav-label">信箱 </span><span class="label label-warning pull-right">16</span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="/mailbox">收件箱</a>
                            </li>
                            <li><a class="J_menuItem" href="/mail_detal">查看邮件</a>
                            </li>
                            <li><a class="J_menuItem" href="/mail_compose">写信</a>
                            </li>
                        </ul>
                    </li>
					
					<li>
                        <a class="J_menuItem" href="/cen_info"><i class="fa fa-archive"></i> <span class="nav-label">信息修改</span></a>
				
                    </li>                    

                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" method="post" action="search_results.jsp">
                            <div class="form-group">
                                <input type="text" placeholder="请输入备案号查询" class="form-control" name="top-search" id="top-search">
                            </div>
                        </form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-envelope"></i> <span class="label label-warning">2</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                <li class="m-t-xs">
                                    <div class="dropdown-messages-box">
                                        <a href="#" class="pull-left">
                                            <img alt="image" class="img-circle" src="img/a7.jpg">
                                        </a>
                                        <div class="media-body">
                                            <small class="pull-right">2小时前</small>
                                            <strong>小四</strong>
                                            <br>
                                            <small class="text-muted">1天前 2020.5.8</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>

                                <li class="m-t-xs">
                                    <div class="dropdown-messages-box">
                                        <a href="#" class="pull-left">
                                            <img alt="image" class="img-circle" src="img/a3.jpg">
                                        </a>
                                        <div class="media-body">
                                            <small class="pull-right">6小时前</small>
                                            <strong>小张</strong>
                                            <br>
                                            <small class="text-muted">2天前 2014.5.7</small>
                                        </div>
                                    </div>
                                </li>                               
                                <li class="divider"></li>

                                <li>
                                    <div class="text-center link-block">
                                        <a class="J_menuItem" href="/mailbox">
                                            <i class="fa fa-envelope"></i> <strong> 查看所有消息</strong>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
						
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-bell"></i> <span class="label label-primary">1</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="/mailbox">
                                        <div>
                                            <i class="fa fa-envelope fa-fw"></i> 活动申请更新啦
                                            <span class="pull-right text-muted small">4分钟前</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a class="J_menuItem" href="#">
                                            <strong>查看所有 </strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="/cen_index?v=1.0" frameborder="0" data-id="/cen_index.jsp" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>

    <!-- 全局js -->
    <script src="./js/jquery.min.js?v=2.1.4"></script>
    <script src="./js/bootstrap.min.js?v=3.3.6"></script>
    <script src="./js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="./js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="./js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="./js/hAdmin.js?v=4.1.0"></script>
    <script type="./text/javascript" src="js/index.js"></script>

    <!-- 第三方插件 -->
    <script src="./js/plugins/pace/pace.min.js"></script>
</body>

</html>
