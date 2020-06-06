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

    <title>学生社团｜教师</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.jsp" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
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
                                        <strong class="font-bold">讲座</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">讲座
                        </div>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">概况</span>
                    </li>
                    <li>
                        <a class="J_menuItem" href="/tea_index">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">信息主页</span>
                        </a>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">社团详情</span>
                    </li>
                    <li>
                        <a class="J_menuItem" >
                            <i class="fa fa-building"></i>
                            <span class="nav-label">计算机协会</span>
                        </a>
                    <ul class="nav nav-second-level">
					        <li><a class="J_menuItem" href="tea_employ">任职查看</a>
					        </li>
					        <li><a class="J_menuItem" href="/tea_fin_stu">会员查看</a>
					        </li>
					        <li><a class="J_menuItem" href="/tea_fin_meet">会议查看</a>
					        </li>
					        <li><a class="J_menuItem" href="/tea_look_meet">活动查看</a>
					        </li>
					        <li><a class="J_menuItem" href="/tea_cost">财务查看</a>
					        </li>
					    </ul>
                    </li>
                    <li class="line dk"></li>
                    
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">活动审批</span>
                    </li>
					<li>
					    <a class="J_menuItem" href="/tea_fin_activ"><i class="fa fa-paste"></i> <span class="nav-label">未处理</span></a>
					    
					</li>
					
					<li>
					    <a class="J_menuItem" href="/tea_fin_activ_W"><i class="fa fa-asterisk"></i> <span class="nav-label">已处理</span></a>
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
                        <a class="J_menuItem" href="/tea_info"><i class="fa fa-archive"></i> <span class="nav-label">信息修改</span></a>
				
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
                        
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-envelope"></i> <span class="label label-warning">16</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                <li class="m-t-xs">
                                    <div class="dropdown-messages-box">
                                        <a href="#" class="pull-left">
                                            <img alt="image" class="img-circle" src="img/a7.jpg">
                                        </a>
                                        <div class="media-body">
                                            <small class="pull-right">46小时前</small>
                                            <strong>小四</strong>
                                            <br>
                                            <small class="text-muted">3天前 2014.11.8</small>
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
                                <i class="fa fa-bell"></i> <span class="label label-primary">8</span>
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
                <iframe id="J_iframe" width="100%" height="100%" src="/tea_index?v=1.0" frameborder="0" data-id="/tea_index" seamless></iframe>
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
    <script type="text/javascript" src="./js/index.js"></script>

    <!-- 第三方插件 -->
    <script src="./js/plugins/pace/pace.min.js"></script>
</body>

</html>
