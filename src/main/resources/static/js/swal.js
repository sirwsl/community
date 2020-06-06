//添加成功
function addInfo() {
    Swal.fire({
        position: 'top',
        icon: 'success',
        title: '提交成功',
        showConfirmButton: false,
        timer: 1500
    })
}

//短信验证
function verify() {
    Swal.fire({
        title: '',
        icon: 'info',
        iconHtml: '<i class="fa fa-envelope"></i>',
        input: 'text',
        width: '500px',
        html:
        '<p style="font-size: 16px;margin: 15px 70px;text-align:left;">申请人：</p>'+
        '<div>'+
        '<select name="" id="phone" style="width: 200px;height: 32px;margin:12px;font-size:14px">'+
        '<option value="徐震宇:12345678901">徐震宇:12345678901</option>'+
        '<option value="XXX:01234567890">XXX:01234567890</option>'+
        '</select>'+
        '<input type="button" id="ver" onclick="getMsgNum(document.getElementById(\'ver\'))" class="btn btn-primary" style="height: 32px;margin-bottom:8px" value="免费获取验证码">'+
        '</div>'+
        '<p style="font-size: 16px;margin: 15px 70px;text-align:left;">请输入验证码：</p>',
        showCloseButton: true,
        showCancelButton: true,
        preConfirm: (login) => {
            //获取输入的验证码
            console.log(login);
        },
        customClass: {
            input: '.text-left w'
        },
        focusConfirm: false,
        confirmButtonText:
            '<i class="fa fa-check"></i>',
        cancelButtonText:
            '<i class="fa fa-close"></i>',
    })
}

//修改成功
function revise() {
    Swal.fire({
        position: 'top',
        icon: 'success',
        title: '修改成功',
        showConfirmButton: false,
        timer: 1500
    })
}

//删除
function shanchu() {
    Swal.fire({
        position: 'top-center',
        icon: 'warning',
        title: '确定删除吗？',
        showConfirmButton: true,
        showCancelButton: true,
        confirmButtonColor: '#d33'
    }).then((result) => {
        if (result.value) {

            Swal.fire({
                title: '删除!',
                text: '该项数据已被删除',
                icon: 'success',
                showConfirmButton: false,
                timer: 1500
            })
        }
    })
}


//短信验证函数

var messageData;
var wait = 60;
/**
* 获取验证码
* @param that
*/
function getMsgNum(that) {
    var phoneNumber = $('#phone').val();
    setButtonStatus(that); // 设置按钮倒计时
    var obj = {
        phoneNumber: phoneNumber.split(':')[1] //获取电话号码
    };
    console.log(obj.phoneNumber)

    // $.ajax({
    //     url: httpurl + '/sendMsg', // 后台短信发送接口
    //     type: 'POST',
    //     dataType: 'json',
    //     contentType: "application/json",
    //     async: false, //false 同步
    //     data: JSON.stringify(obj),
    //     xhrFields: {
    //         withCredentials: true
    //     },
    //     success: function (result) {
    //         if(result.code == '200') {
    //             messageData = result.data;
    //         }else {
    //             alert("错误码:" + data.code + "  错误信息:" + data.message);
    //         }
    //     },
    //     error: function (XMLHttpRequest, textStatus, errorThrown) {
    //         console.log(XMLHttpRequest.status);
    //         console.log(XMLHttpRequest.readyState);
    //         console.log(textStatus);
    //     }
    // });
}
/**
* 设置按钮状态
*/
function setButtonStatus(that) {
    if (wait == 0) {
        that.removeAttribute("disabled");
        that.value = "免费获取验证码";
        wait = 60;
    } else {
        that.setAttribute("disabled", true);
        that.value = wait + "秒后可以重新发送";
        wait--;
        setTimeout(function () {
            setButtonStatus(that)
        }, 1000)
    }
}