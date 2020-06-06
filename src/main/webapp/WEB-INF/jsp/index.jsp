<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+ "://"+request.getServerName()+":"
        +request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Bootstrap登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--图标库-->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>
    <!--响应式框架-->
    <link rel='stylesheet' href='./css/min.css'>
    <!--主要样式-->
    <link rel="stylesheet" href="./css/styleLogin.css">

</head>

<body>
<canvas id="Mycanvas"></canvas>
<div class="container" style="position: absolute; z-index: 10">

    <div class="card-wrap">

        <div class="card border-0 shadow card--welcome is-show" id="welcome">
            <div class="card-body">
                <h2 class="card-title">社团帮</h2>
                <p>助力高校社团管理</p>
                <div class="btn-wrap">
                    <a class="btn btn-lg btn-login1 js-btn" data-target="login1"style="margin: 5px;" onclick="$('img').onclick()">学生社团登录</a>
                    <a class="btn btn-lg btn-register js-btn" data-target="login2"style="margin: 5px;" onclick="$('img').onclick()">管理中心登录</a>
                    <a class="btn btn-lg btn-login js-btn" data-target="login3"style="margin: 5px;" onclick="$('img').onclick()">管理人员登录</a>
                </div>
            </div>
        </div>

        <div class="card border-0 shadow card--welcome" id="login1">
            <div class="card-body">
                <h2 class="card-title">学生社团登录</h2>
                <form id = "form1" action="/comLogin" method="post">
                    <div class="form-group">
                        <input class="form-control" type="text" name="number" placeholder="请输入用户名" required="required">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name = "password" placeholder="请输入密码" required="required">
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <input class="form-control" type="text" name="codeNum" maxlength="4"  placeholder="验证码">
                        </div>
                        <div class="col-sm-4">
                            <img border="0" name ="img" style="cursor:pointer" alt="刷新" onclick="refresh(this)" src="/imgCode" >
                        </div>
                    </div>
                    <br/>
                    <button class="btn btn-lg" type="submit" >登录</button>
                </form>
            </div>
            <input name="flag" type="hidden" value="${msg}">
            <button class="btn btn-back js-btn" data-target="welcome" onclick="$('img').onclick()"><i class="fas fa-angle-left"></i></button>
        </div>

        <div class="card border-0 shadow card--register" id="login2">
            <div class="card-body">
                <h2 class="card-title">管理中心登录</h2>
                <form name = "form" action="/comLogin" method="post" >
                    <div class="form-group">
                        <input class="form-control"  name="number" type="text" placeholder="请输入用户名" required="required">
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="password" type="password" placeholder="请输入密码" required="required">
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <input class="form-control" type="text" name="codeNum" maxlength="4" placeholder="验证码">
                        </div>
                        <div class="col-sm-4">
                            <img border="0" name ="img" style="cursor:pointer" alt="刷新" onclick="refresh(this)" src="/imgCode">
                        </div>
                    </div>
                <br/>
                <button class="btn btn-lg" type="submit" >登录</button>
                </form>
            </div>
            <input name="flag" type="hidden" value="${msg}">
            <button class="btn btn-back js-btn" data-target="welcome" onclick="$('img').onclick()"><i class="fas fa-angle-left"></i></button>
        </div>


        <div class="card border-0 shadow card--login" id="login3">
            <div class="card-body">
                <h2 class="card-title">管理人员登录</h2>
                    <form name = "form" action="/peoLogin" method="post">
                    <div class="form-group">
                        <input class="form-control" type="text" name= "number" placeholder="请输入用户名" required="required">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name = "password" placeholder="请输入密码" required="required">
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <input class="form-control" type="text" name="codeNum" maxlength="4" placeholder="验证码">
                        </div>
                        <div class="col-sm-4">
                            <img border="0" name ="img" style="cursor:pointer" alt="刷新" onclick="refresh(this)" src="/imgCode">
                        </div>
                    </div>
                    <br/>
                    <button class="btn btn-lg" type="submit" >登录</button>
                    </form>
            </div>
            <button class="btn btn-back js-btn" data-target="welcome" onclick="$('img').onclick()"><i class="fas fa-angle-left"></i></button>
        </div>
        <input name="flag" type="hidden" value="${msg}">

    </div>

</div>

<script src="./js/indexLogin.js"></script>
<script src = "./js/jquery.min.js"></script>
<script src = "./js/jquery-form.js"></script>
<script>
    function refresh(obj){
        obj.src="/imgCode?id="+Math.random();
    };

    $(function () {
         var msg = $("input[name='flag']").val();
         if (msg.length > 0) alert(msg);

    });
    //定义画布宽高和生成点的个数
    var WIDTH = window.innerWidth, HEIGHT = window.innerHeight, POINT = 35;

    var canvas = document.getElementById('Mycanvas');
    canvas.width = WIDTH,
        canvas.height = HEIGHT;
    var context = canvas.getContext('2d');
    context.strokeStyle = 'rgba(0,0,0,0.02)',
        context.strokeWidth = 1,
        context.fillStyle = 'rgba(0,0,0,0.05)';
    var circleArr = [];

    //线条：开始xy坐标，结束xy坐标，线条透明度
    function Line (x, y, _x, _y, o) {
        this.beginX = x,
            this.beginY = y,
            this.closeX = _x,
            this.closeY = _y,
            this.o = o;
    }
    //点：圆心xy坐标，半径，每帧移动xy的距离
    function Circle (x, y, r, moveX, moveY) {
        this.x = x,
            this.y = y,
            this.r = r,
            this.moveX = moveX,
            this.moveY = moveY;
    }
    //生成max和min之间的随机数
    function num (max, _min) {
        var min = arguments[1] || 0;
        return Math.floor(Math.random()*(max-min+1)+min);
    }
    // 绘制原点
    function drawCricle (cxt, x, y, r, moveX, moveY) {
        var circle = new Circle(x, y, r, moveX, moveY)
        cxt.beginPath()
        cxt.arc(circle.x, circle.y, circle.r, 0, 2*Math.PI)
        cxt.closePath()
        cxt.fill();
        return circle;
    }
    //绘制线条
    function drawLine (cxt, x, y, _x, _y, o) {
        var line = new Line(x, y, _x, _y, o)
        cxt.beginPath()
        cxt.strokeStyle = 'rgba(0,0,0,'+ o +')'
        cxt.moveTo(line.beginX, line.beginY)
        cxt.lineTo(line.closeX, line.closeY)
        cxt.closePath()
        cxt.stroke();

    }
    //初始化生成原点
    function init () {
        circleArr = [];
        for (var i = 0; i < POINT; i++) {
            circleArr.push(drawCricle(context, num(WIDTH), num(HEIGHT), num(15, 2), num(10, -10)/40, num(10, -10)/40));
        }
        draw();
    }

    //每帧绘制
    function draw () {
        context.clearRect(0,0,canvas.width, canvas.height);
        for (var i = 0; i < POINT; i++) {
            drawCricle(context, circleArr[i].x, circleArr[i].y, circleArr[i].r);
        }
        for (var i = 0; i < POINT; i++) {
            for (var j = 0; j < POINT; j++) {
                if (i + j < POINT) {
                    var A = Math.abs(circleArr[i+j].x - circleArr[i].x),
                        B = Math.abs(circleArr[i+j].y - circleArr[i].y);
                    var lineLength = Math.sqrt(A*A + B*B);
                    var C = 1/lineLength*7-0.009;
                    var lineOpacity = C > 0.03 ? 0.03 : C;
                    if (lineOpacity > 0) {
                        drawLine(context, circleArr[i].x, circleArr[i].y, circleArr[i+j].x, circleArr[i+j].y, lineOpacity);
                    }
                }
            }
        }
    }

    //调用执行
    window.onload = function () {
        init();
        setInterval(function () {
            for (var i = 0; i < POINT; i++) {
                var cir = circleArr[i];
                cir.x += cir.moveX;
                cir.y += cir.moveY;
                if (cir.x > WIDTH) cir.x = 0;
                else if (cir.x < 0) cir.x = WIDTH;
                if (cir.y > HEIGHT) cir.y = 0;
                else if (cir.y < 0) cir.y = HEIGHT;

            }
            draw();
        }, 16);
    }

</script>
</body>
</html>