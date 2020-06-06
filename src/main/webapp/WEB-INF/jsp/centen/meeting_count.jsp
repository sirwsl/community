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


    <title>会议</title>
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
                        <h5>会议统计</h5>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            
                            <div class="col-sm-3">
                                <div class="ibox">
                                    <div class="ibox-title">
                                        <h5>计算机协会</h5>
                                    </div>
                                    <div class="ibox-content">
                                        <h5>本日会议数: <span style="color: blueviolet;font-size: 30px;margin: 20px;">2</span></h5>
                                        <h5>本周会议数: <span style="color: #19a9d5;font-size: 30px;margin: 20px;">20</span></h5>
                                        <h5>本月会议数: <span style="color: #80cbc4;font-size: 30px;margin: 20px;">47</span></h5>
                                        <h5>会&nbsp;议&nbsp;总&nbsp;数: <span class="text-danger" style="font-size: 30px;margin: 20px;">200</span></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                           
                        
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
		
		
		
		
		
    </script>
    

</body>

</html>
