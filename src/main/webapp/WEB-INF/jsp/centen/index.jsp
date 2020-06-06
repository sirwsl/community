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

    <!--360浏览器优先以webkit内核解析-->
    <title>主页</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="./css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="./css/animate.css" rel="stylesheet">
    <link href="./css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="row row-sm text-center">
                            <div class="col-xs-6">
                                <div class="panel padder-v item bg-primary">
                                    <div class="h1 text-fff font-thin h1">6487</div>
                                    <span class="text-muted text-xs">当前会员</span>
                                    <div class="top text-right w-full">
                                        <i class="fa fa-caret-down text-warning m-r-sm"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="panel padder-v item">
                                    <div class="font-thin h1">14250</div>
                                    <span class="text-muted text-xs">历届会员</span>
                                    <div class="bottom text-left">
                                        <i class="fa fa-caret-up text-warning m-l-sm"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="panel padder-v item">
                                    <div class="h1 text-info font-thin h1">875</div>
                                    <span class="text-muted text-xs">活动总数</span>
                                    <div class="top text-right w-full">
                                        <i class="fa fa-caret-down text-warning m-r-sm"></i>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-xs-6">
                                <div class="panel padder-v item bg-info">
                                    <div class="h1 text-fff font-thin h1">18</div>
                                    <span class="text-muted text-xs">本月活动数</span>
                                    <div class="top text-right w-full">
                                        <i class="fa fa-caret-down text-warning m-r-sm"></i>
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title" style="border-bottom:none;background:#fff;">
                                <h5>服务器状态</h5>
                            </div>
                            <div class="ibox-content" style="border-top:none;">
                                <div id="flot-line-chart-moving" style="height:217px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                
                
                <!--
                	作者：2572396933@qq.com
                	时间：2020-05-21
                	描述：
                -->
                
               
            <div class="col-sm-3">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>待举办活动</h5>
                        <h1 class="no-margins">20</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>今日活动</h5>
                        <h1 class="no-margins">7</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>本周活动</h5>
                        <h1 class="no-margins">72</h1>
                     </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox">
                    <div class="ibox-content">
                        <h5>本月活动</h5>
                        <h1 class="no-margins">200</h1>
                    </div>
                </div>
            </div>
        </div>
                <!--
                	作者：2572396933@qq.com
                	时间：2020-05-21
                	描述：
                -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="ibox">
                            <div class="ibox-title">
                                <h5>所有项目</h5>     
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
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <input type="text" placeholder="请输入项目名称" class="input-sm form-control"> <span class="input-group-btn">
                                                <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="project-list">
                                    <table class="table table-hover">
                                        <thead class="table-header">
											<tr>
								                <th class="table-th-css">状态</th>
								                <th class="table-th-css">社团名称</th>
								                <th class="table-th-css">活动名称</th>
								                <th class="table-th-css">申请时间</th>
								                <th class="table-th-css">活动时间</th>
								                <th class="table-th-css">发起人</th>
								                <th class="table-th-css">状态</th>
								                <th class="table-th-css"></th>
								            </tr>
								        </thread>       
                                        <tbody>
                                            <tr>
                                                <td class="project-status">
                                                    <span class="label label-primary">进行中
                                                </span></td>
                                                <td class="project-title"><a>计算机协会</a><br>
                                                
                                                <td class="project-title"><a href="">计算机技能培训</a></td>
                                                <td class="project-title"><a>03-15 18:00</a><br>
                                                <td class="project-title"><a>03-16 18:00</a><br>
                                                <td class="project-title"><a>王世磊</a><br>
                                                <td class="project-completion">
                                                    <small>当前进度： 48%</small>
                                                    <div class="progress progress-mini">
                                                        <div style="width: 48%;" class="progress-bar"></div>
                                                    </div>
                                                </td>
                                                <td class="project-actions">
                                                    <a href="projects.jsp#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>审批</a>
                                                    <a href="projects.jsp#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>修改</a>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>社团排名</h5>
                    </div>
                    <div class="ibox-content">
                        <ul class="todo-list m-t small-list ui-sortable">
                            <li>
                                <a href="" class="check-link"></a>
                                <span class="m-l-xs ">计算机协会</span>
                            </li>
                            <li>
                                <a href="" class="check-link"></a>
                                <span class="m-l-xs ">计算机协会</span>
                            </li>
                            
                           
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 全局js -->
    <script src="./js/jquery.min.js?v=2.1.4"></script>
    <script src="./js/bootstrap.min.js?v=3.3.6"></script>
    <script src="./js/plugins/layer/layer.min.js"></script>
    <!-- Flot -->
    <script src="./js/plugins/flot/jquery.flot.js"></script>
    <script src="./js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="./js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="./js/plugins/flot/jquery.flot.pie.js"></script>
    <!-- 自定义js -->
    <script src="./js/content.js"></script>
    <!--flotdemo-->
    <script type="text/javascript">
        $(function() {
            var container = $("#flot-line-chart-moving");
            var maximum = container.outerWidth() / 2 || 300;
            var data = [];

            function getRandomData() {
                if (data.length) {
                    data = data.slice(1);
                }
                while (data.length < maximum) {
                    var previous = data.length ? data[data.length - 1] : 50;
                    var y = previous + Math.random() * 10 - 5;
                    data.push(y < 0 ? 0 : y > 100 ? 100 : y);
                }
                var res = [];
                for (var i = 0; i < data.length; ++i) {
                    res.push([i, data[i]])
                }
                return res;
            }
            series = [{
                data: getRandomData(),
                lines: {
                    fill: true
                }
            }];
            var plot = $.plot(container, series, {
                grid: {

                    color: "#999999",
                    tickColor: "#f7f9fb",
                    borderWidth:0,
                    minBorderMargin: 20,
                    labelMargin: 10,
                    backgroundColor: {
                        colors: ["#ffffff", "#ffffff"]
                    },
                    margin: {
                        top: 8,
                        bottom: 20,
                        left: 20
                    },
                    markings: function(axes) {
                        var markings = [];
                        var xaxis = axes.xaxis;
                        for (var x = Math.floor(xaxis.min); x < xaxis.max; x += xaxis.tickSize * 2) {
                            markings.push({
                                xaxis: {
                                    from: x,
                                    to: x + xaxis.tickSize
                                },
                                color: "#fff"
                            });
                        }
                        return markings;
                    }
                },
                colors: ["#4fc5ea"],
                xaxis: {
                    tickFormatter: function() {
                        return "";
                    }
                },
                yaxis: {
                    min: 0,
                    max: 110
                },
                legend: {
                    show: true
                }
            });

            // Update the random dataset at 25FPS for a smoothly-animating chart

            setInterval(function updateRandom() {
                series[0].data = getRandomData();
                plot.setData(series);
                plot.draw();
            }, 40);
        });
        $(function() {
            var oilprices = [
                [1167692400000, 61.05],
                [1167778800000, 58.32],
                [1167865200000, 57.35],
                [1167951600000, 56.31],
            	[1220306400000, 109.71],
                [1220392800000, 109.35],
                [1220565600000, 106.23],
                [1220824800000, 106.34]
            ];
            var exchangerates = [
              	[1220479200000],
                [1220565600000],
                [1220652000000],
                [1220738400000],
                [1220824800000],
                [1220911200000]
            ];

            function euroFormatter(v, axis) {
                return "&yen;"+v.toFixed(axis.tickDecimals);
            }

            function doPlot(position) {
                $.plot($("#yesterday"), [{
                    data: oilprices,
                    label: "老玩家"
                }, {
                    data: exchangerates,
                    label: "新玩家",
                    yaxis: 2
                }], {
                    xaxes: [{
                        mode: 'time'
                    }],
                    yaxes: [{
                        min: 0
                    }, {
                        alignTicksWithAxis: position == "right" ? 1 : null,
                        position: position,
                        tickFormatter: euroFormatter
                    }],
                    legend: {
                        position: 'sw'
                    },
                    colors: ["#f7f9fb"],
                    grid: {
                        color: "#999999",
                        hoverable: true,
                        clickable: true,
                        tickColor: "#f7f9fb",
                        borderWidth:0,
                        hoverable: true 

                    },
                    tooltip: true,
                    tooltipOpts: {
                        content: "%s %x 为 %y",
                        xDateFormat: "%y-%0m-%0d",

                        onHover: function(flotItem, $tooltipEl) {
                            // console.log(flotItem, $tooltipEl);
                        }
                    }
                });
    }

    doPlot("right");

    $("button").click(function() {
        doPlot($(this).text());
    });
});
    </script>
</body>

</html>
