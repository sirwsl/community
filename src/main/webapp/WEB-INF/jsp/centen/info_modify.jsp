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


    <title>信息修改</title>
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
                        <h5>信息修改</h5>
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
                                    
                                    <p class="form-control-static" id="name" name="name">社团中心</p>
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">所属组织：</label>
                                <div class="col-sm-4">
                                    <p class="form-control-static" id="collage" name="collage">数学与计算机科学学院</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label  class="col-sm-1 control-label">指导老师：</label>	
							    <div class="col-sm-2">	
                                    <p class="form-control-static" id="teacherId" name="teacherId">XXX</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">地址：</label>
                                <div class="col-sm-4">
                                    <input id="adress" name="adress" class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团等级：</label>
                                <div class="col-sm-4">
                                    <p id="lever" class="form-control-static">5</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">成立时间：</label>
                                <div class="col-sm-4">
                                    <p id="date" class="form-control-static">2005-12-21</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">会员总数：</label>
                                <div class="col-sm-2">
                                    <p id="sum" class="form-control-static">232</p>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团简介：</label>
                                <div class="col-sm-4">
                                    <textarea style="resize: none;" id="intro" name="intro" cols="40" rows="5" class="form-control"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团类型：</label>
                                <div class="col-sm-4">
                                    <input id="type" name="type" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-1 control-label">会费结余：</label>
                                <div class="col-sm-4" >
                                    <p class="form-control-static">￥497</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">确认密码：</label>
                                <div class="col-sm-2">
                                    <input id="password" name="password" class="form-control" type="password">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请输入社团的密码</span>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
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
