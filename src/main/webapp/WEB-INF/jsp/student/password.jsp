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


    <title>密码修改</title>
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
                        <h5>密码修改</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="activityForm">
                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团ID：</label>
                                <div class="col-sm-4">
                                    <p class="form-control-static" id="Id" name="Id">497915773</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团名称：</label>
                                <div class="col-sm-4">
                                    <p class="form-control-static" id="name" name="name">计算机协会</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">原密码：</label>
                                <div class="col-sm-2">
                                    <input id="password" name="password" class="form-control" type="password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label  class="col-sm-1 control-label">新密码：</label>	
							    <div class="col-sm-2">	
                                    <input id="newpassword" name="newpassword" class="form-control" type="password">
                                    <span class="help-block m-b-none"></span>
                                    <!-- <i class="fa fa-info-circle"></i> -->
                                </div>
                            </div>

                            <div class="form-group">
                                <label  class="col-sm-1 control-label">再次输入新密码：</label>	
							    <div class="col-sm-2">	
                                    <input id="newpasswordtwo" name="newpasswordtwo" class="form-control" type="password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">请进行验证：</label>
                                <div class="col-sm-2"><input onclick="verify()" class="btn-primary btn" type="button" value="发送验证码"></div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4" style="text-align: center;">
                                    <input onclick="addInfo()" class="btn btn-primary" type="submit" value="提交">
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
    
		
		
		
		
		
    </script>
    

</body>

</html>
