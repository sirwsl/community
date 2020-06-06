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
                        <h5>任职修改</h5>
                    </div>
                    <div class="ibox-content">
                        
                        <form class="form-horizontal m-t" id="employForm">

                            <div class="form-group">
                                <label class="col-sm-1 control-label">上一届：</label>
                                <div class="col-sm-4">
                                    <p id="shangyijie" class="form-control-static">
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </p>
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">下一届：</label>
                                <div class="col-sm-4">
                                    <p id="xiayijie" class="form-control-static">
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </p>
                                    
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">会议记录：</label>
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
    <div class="modal" tabindex="-1" role="dialog" id="myModal">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <form action="" class="form-horizontal m-t">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名：</label>
                        <div class="col-sm-4">
                            <select class="form-control" id="name">
                                <option value="XXX">XXX</option>
                                <option value="XXX">XXX</option>
                                <option value="XXX">XXX</option>
                            </select>
                        </div>
                        
                    </div>
    
                    <div class="form-group">
                        <label class="col-sm-2 control-label">职位：</label>
                        <div class="col-sm-4">
                            <select class="form-control" id="zhiwei">
                                <option value="会长">会长</option>
                                <option value="副会长">副会长</option>
                                <option value="部长">部长</option>
                            </select>
                        </div>
                    </div>
                </form>
                
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addItem()">添加</button>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="myModal2">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <form action="" class="form-horizontal m-t">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名：</label>
                        <div class="col-sm-4">
                            <select class="form-control" id="name2">
                                <option value="XXX">XXX</option>
                                <option value="XXX">XXX</option>
                                <option value="XXX">XXX</option>
                            </select>
                        </div>
                        
                    </div>
    
                    <div class="form-group">
                        <label class="col-sm-2 control-label">职位：</label>
                        <div class="col-sm-4">
                            <select class="form-control" id="zhiwei2">
                                <option value="会长">会长</option>
                                <option value="副会长">副会长</option>
                                <option value="部长">部长</option>
                            </select>
                        </div>
                    </div>
                </form>
                
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addItem2()">添加</button>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
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
		
    function addItem(){
        var shangyijie = document.getElementById('shangyijie');
        var one = document.getElementById('name').value;
        var two = document.getElementById('zhiwei').value;
        
        var spanone = document.createElement('span');
        
        spanone.innerHTML = two+':'+one;
        spanone.className = 'btn btn-default';
        spanone.style.marginRight = '12px';
        
        shangyijie.appendChild(spanone);
        
    }

    function addItem2(){
        var xiayijie = document.getElementById('xiayijie');
        var one = document.getElementById('name2').value;
        var two = document.getElementById('zhiwei2').value;
        var spantwo = document.createElement('span');
        spantwo.innerHTML = two+':'+one;
        spantwo.className = 'btn btn-default';
        spantwo.style.marginRight = '12px';
        xiayijie.appendChild(spantwo);
    }
		
		
    </script>
    

</body>

</html>
