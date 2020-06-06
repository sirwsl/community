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


    <title>添加会议</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
	<link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
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
                        <h5>修改会议</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="signupForm">
                            <div class="form-group">
                                <label class="col-sm-1 control-label">会议主题：</label>
                                <div class="col-sm-4">
                                	<input id="mname" name="mname" class="form-control" type="text">
                                </div>
                            </div>
							
							<div class="form-group">
							    <label class="col-sm-1 control-label">会议地点：</label>
							    <div class="col-sm-4">
							        <input id="class" name="class" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
							    </div>
							</div>
                                    
                            <div class="form-group">
                                <label class="col-sm-1 control-label">参会人数：</label>
                                <div class="col-sm-2">
                                    <input id="mnumber" name="mnumber" class="form-control valid" type="text" aria-required="true" aria-invalid="false">
                                </div>
                            </div>
							
							<div class="form-group">
							    <label  class="col-sm-1 control-label">主持人：</label>	
							    <div class="col-sm-2">	
							    	<input id="people" name="people" class="form-control valid" type="text" aria-required="true" aria-invalid="false">
							    </div>
							</div>

							<div class="form-group">
							    <label class="col-sm-1 control-label">会议内容：</label>
							    <div class="col-sm-4" >
							        <textarea style="resize: none;" name="introduce" cols="40" rows="5" class="form-control"></textarea>
							    </div>
							</div>
							
                            <div class="form-group">
                                <label class="col-sm-1 control-label">会议类型：</label>
                                <div class="col-sm-2">
                                    <input id="meetingType" name="meetingType" class="form-control valid" type="text" aria-required="true" aria-invalid="false">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">附件：</label>
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
                                <label class="col-sm-1 control-label">会议时间：</label>
                                <div class="col-sm-4">
                                	<input placeholder="选择日期" class="form-control layer-date" id="meeting">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button onclick="revise()" class="btn btn-primary" type="submit">提交</button>
                                    <a href="/stu_fin_meet" class="btn btn-primary">返回</a>
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
        var meetingTime = {
            elem: '#meeting',
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
        laydate(meetingTime);
		
		
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
		
		// 文件上传过程中创建进度条实时显示。
		uploader.on( 'uploadProgress', function( file, percentage ) {
		    var $li = $( '#'+file.id ),
		        $percent = $li.find('.progress .progress-bar');
		
		    // 避免重复创建
		    if ( !$percent.length ) {
		        $percent = $('<div class="progress progress-striped active">' +
		          '<div class="progress-bar" role="progressbar" style="width: 0%">' +
		          '</div>' +
		        '</div>').appendTo( $li ).find('.progress-bar');
		    }
		
		    $li.find('p.state').text('上传中');
		
		    $percent.css( 'width', percentage * 100 + '%' );
		});
		
		uploader.on( 'uploadSuccess', function( file ) {
		    $( '#'+file.id ).find('p.state').text('已上传');
		});
		
		uploader.on( 'uploadError', function( file ) {
		    $( '#'+file.id ).find('p.state').text('上传出错');
		});
		
		uploader.on( 'uploadComplete', function( file ) {
		    $( '#'+file.id ).find('.progress').fadeOut();
		});
    </script>
    

</body>

</html>
