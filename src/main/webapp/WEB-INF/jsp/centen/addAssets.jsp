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


    <title>固定资产</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> <link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="./css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="./css/animate.css" rel="stylesheet">
    <link href="./css/style.css?v=4.1.0" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./webuploader/webuploader.css">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>固定资产</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="activityForm">
                            <div class="form-group">
                                <label class="col-sm-1 control-label">物品名称：</label>
                                <div class="col-sm-4">
                                	<input id="name" name="firstname" class="form-control" type="text">
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">数量：</label>
                                <div class="col-sm-4">
                                	<input id="number" name="number" class="form-control" type="number">
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">登记日期：</label>
                                <div class="col-sm-4">
                                	<input placeholder="登记日期" class="form-control layer-date" id="Date">
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">登记人：</label>
                                <div class="col-sm-4">
                                	<input id="peoId" name="peoId" class="form-control" type="text">
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">类型：</label>
                                <div class="col-sm-4">
                                	<input id="type" name="type" class="form-control" type="text">
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-1">
                                    <button onclick="addInfo()" class="btn btn-primary" type="submit">提交</button>
                                    <a href="assets.jsp" class="btn btn-primary">返回</a>
                                </div>
                            </div>

                        </form>
                    </div>    
                </div>
            </div>
        </div>
    </div>


    <!-- 全局js -->
    <script src="./js/jquery.min.js?v=2.1.4"></script>
    <script src="./js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="./js/content.js?v=1.0.0"></script>

    <!-- jQuery Validation plugin javascript-->
    <script src="./js/plugins/validate/jquery.validate.min.js"></script>
    <script src="./js/plugins/validate/messages_zh.min.js"></script>

    <script src="./js/demo/form-validate-demo.js"></script>

    <script type="text/javascript" src="./webuploader/webuploader.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="./js/swal.js"></script>


    <!-- layerDate plugin javascript -->
    <script src="./js/plugins/layer/laydate/laydate.js"></script>
    <script>
    
        //日期范围限制
        var date = {
            elem: '#Date',
            format: 'YYYY/MM/DD hh:mm:ss',
            min: laydate.now(), //设定最小日期为当前日期
            max: '2099-06-16 23:59:59', //最大日期
            istime: true,
            istoday: false,
            choose: function (datas) {
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };
        
        laydate(date);

		
		
    </script>
    

</body>

</html>
