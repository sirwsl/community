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


    <title>添加会员</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> <link href="./css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="./css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="./css/animate.css" rel="stylesheet">
    <link href="./css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>修改会员</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="signupForm">
                            <div class="form-group">
                                <label class="col-sm-1 control-label">姓名：</label>
                                <div class="col-sm-2">
                                	<input id="name" name="firstname" class="form-control" type="text">
                                </div>
                                
                            </div>
                                    
                            <div class="form-group">
                                <label class="col-sm-1 control-label">学号：</label>
                                <div class="col-sm-2">
                                    <input id="number" name="number" class="form-control valid" type="text" aria-required="true" aria-invalid="false">
                                </div>
                            </div>
							
							<div class="form-group">
							    <label  class="col-sm-1 control-label">学院：</label>	
							    <div class="col-sm-2">	
							    	<select class="form-control">
										<option>数学与计算机科学学院</option>
										<option>马克思主义学院</option>
										<option>经济学院</option>
										<option>法学院</option>
										<option>政治与公共管理学院</option>
										<option>社会学院</option>
										<option>外国语学院</option>
										<option>电气信息工程学院学院</option>
									</select>
							    </div>
							</div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">年级：</label>
                                <div class="col-sm-2">
                                    <select class="form-control" id="grad">
										<option>2020</option>
										<option>2019</option>
                                    	<option>2018</option>
                                    	<option>2017</option>
                                    </select>
                                </div>
                            </div>

                            
                            <div class="form-group">
                                <label class="col-sm-1 control-label">班级：</label>
                                <div class="col-sm-2">
                                    <input id="className" name="className" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-1 control-label">联系电话：</label>
                                <div class="col-sm-2">
                                    <input id="phone" name="phone" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-1 control-label">微信：</label>
                                <div class="col-sm-2">
                                    <input id="WX" name="WX" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                                </div>
                            </div>
                                                        
                            <div class="form-group">
                                <label class="col-sm-1 control-label">加入时间：</label>
                                <div class="col-sm-3">
                                	<input placeholder="选择日期" class="form-control layer-date" id="date">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4" style="text-align: center;">
                                    <button onclick="addInfo()" class="btn btn-primary" type="submit">提交</button>
                                    <a href="/stu_find_stu" class="btn btn-primary">返回</a>
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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="./js/swal.js"></script>
 


    <!-- layerDate plugin javascript -->
    <script src="./js/plugins/layer/laydate/laydate.js"></script>
    <script>
    
        //日期范围限制
        var joinTime = {
            elem: '#date',
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
        laydate(joinTime);
    </script>
    

</body>

</html>
