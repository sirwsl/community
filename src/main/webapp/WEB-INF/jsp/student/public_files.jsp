<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>FR

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>公共文件</title>
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
                        <h5>公共文件</h5>
                    </div>
                    <div class="ibox-content">
                        <div class="row m-b-sm m-t-sm clearfix">
                            <div class="col-md-1" style="float: left;">
                                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                            </div>

                            <div style="float: left;">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
                                    <i class="fa fa-plus"></i>
                                </button>
                            </div>
                            
                            <div class="col-md-4" style="float: right;">
                                <div class="input-group" >
                                    <input type="text" placeholder="请输入文件名称" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary" style="height: 32px;"> 搜索</button> </span>
                                </div>
                            </div>
                        </div>
                        <div class="project-list row">
                            <table class="table table-hover">
                                <thead class="table-header">
                                    <tr>
                                        <th>文件名称</th>
                                        <th>上传人</th>
                                        <th>上传日期</th>
                                        <th>操作</th>
                                    </tr>
                                </thread>       
                                <tbody>
                                    <tr>
                                        <td>XXX</td>
                                        <td>XXX</td>
                                        <td>2020-5-12 12:00</td>
                                        <td>
                                            <a href="#" class="btn btn-primary btn-sm">
                                                <i class="fa fa-download"></i>
                                                下载
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <nav aria-label="Page navigation" style="float: right;">
                              <ul class="pagination">
                                <li>
                                  <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                  </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
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
                        <label class="col-sm-2 control-label">策划案：</label>
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
                        <label class="col-sm-2 control-label">上传人：</label>
                        <div class="col-sm-4">
                            <input type="text" id="name" name="name" class="form-control">
                        </div>
                    </div>
                </form>
                
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addItem()">提交</button>
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
