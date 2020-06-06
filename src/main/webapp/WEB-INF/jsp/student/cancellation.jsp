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


    <title>任职修改</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="./css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="./css/animate.css" rel="stylesheet">
    <link href="./css/style.css?v=4.1.0" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./webuploader/webuploader.css">
    <link rel="stylesheet" href="./css/plugins/iCheck/custom.css">
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>社团注销</h5>
                    </div>
                    <div class="ibox-content">
                        
                        <form class="form-horizontal m-t" id="employForm">

                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团ID：</label>
                                <div class="col-sm-3">
                                    <p class="form-control-static">123456</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团名称：</label>
                                <div class="col-sm-3">
                                    <p class="form-control-static">计算机协会</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">社团注销说明：</label>
                                <div class="col-sm-3">
                                    <div id="uploader" class="wu-example">
                                        <!--用来存放文件信息-->
                                        <div id="thelist" class="uploader-list"></div>
                                        <div class="btns">
                                            <div id="picker">选择文件</div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-1 control-label">请进行验证：</label>
                                <div class="col-sm-2">
                                    <input onclick="verify()" class="btn btn-primary" type="button" value="发送验证码">
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
    <script src="./js/plugins/iCheck/icheck.min.js"></script>

    <!-- layerDate plugin javascript -->
    <script src="./js/plugins/layer/laydate/laydate.js"></script>
    <script>
    
    var uploader = WebUploader.create({
        // swf文件路径
        swf: './webuploader/Uploader.swf',
    
        // 文件接收服务端。
        server: 'http://webuploader.duapp.com/server/fileupload.php',
    
        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#picker',
    
        // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
        resize: false
    });
    
    // 当有文件被添加进队列的时候
    uploader.on( 'fileQueued', function( file ) {
        $('#thelist').append( '<div id="' + file.id + '" class="item">' +
            '<h4 class="info">' + file.name + '</h4>' +
            '<p class="state">等待上传...</p>' +
        '</div>' );
    });
		
		
    </script>
    

</body>

</html>
