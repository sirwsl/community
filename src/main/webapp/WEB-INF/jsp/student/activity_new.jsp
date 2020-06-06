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


    <title>活动申请</title>
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
                        <h5>活动申请表</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="activityForm">
                            <div class="form-group">
                                <label class="col-sm-1 control-label">活动名称：</label>
                                <div class="col-sm-4">
                                	<input id="name" name="firstname" class="form-control" type="text">
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">活动开始时间：</label>
                                <div class="col-sm-4">
                                	<input placeholder="开始日期" class="form-control layer-date" id="fistDate">
                                </div>
                                
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">活动结束时间：</label>
                                <div class="col-sm-4">
                                    <input placeholder="结束日期" class="form-control layer-date" id="lastDate">
                                </div>
                            </div>
                                    
                            <div class="form-group">
                                <label class="col-sm-1 control-label">活动地点：</label>
                                <div class="col-sm-2">
                                    <input id="plaId"class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">参加人数：</label>
                                <div class="col-sm-2">
                                    <input id="number"class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
                                </div>
                            </div>

                            <div class="form-group">
                                <label  class="col-sm-1 control-label">活动范围：</label>	
							    <div class="col-sm-2">	
							    	<select class="form-control" id="rang">
										<option>学院</option>
										<option>学校</option>
									</select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-1 control-label">活动须知：</label>
                                <div class="col-sm-4">
                                    <textarea style="resize: none;" id="know" name="know" cols="40" rows="5" class="form-control"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">活动主题：</label>
                                <div class="col-sm-4">
                                    <input id="theme" name="theme" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-1 control-label">活动简介：</label>
                                <div class="col-sm-4" >
                                    <textarea style="resize: none;" id="intros" name="intros" cols="40" rows="5" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">确认密码：</label>
                                <div class="col-sm-2">
                                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请输入社团的密码</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">请进行验证：</label>
                                <div class="col-sm-2"><input onclick="verify()" class="btn-primary btn-sm" type="button" value="发送验证码"></div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">策划案：</label>
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
                                <div class="col-sm-8 col-sm-offset-3">
                                    <div class="checkbox">
                                        <label>
                                            <input style="min-height: 18px;" type="checkbox" class="checkbox" id="agree" name="agree"> 我已经认真阅读并同意《H+使用协议》
                                        </label>
                                    </div>
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
    
        //日期范围限制
        var start = {
            elem: '#fistDate',
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
        var end = {
            elem: '#lastDate',
            format: 'YYYY/MM/DD hh:mm:ss',
            min: laydate.now(),
            max: '2099-06-16 23:59:59',
            istime: true,
            istoday: false,
            choose: function (datas) {
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };
        laydate(start);
        laydate(end);
		
		
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
