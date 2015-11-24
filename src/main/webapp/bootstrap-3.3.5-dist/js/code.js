var code; //在全局 定义验证码
function createCode() {
    code = "";
    var codeLength = 6;//验证码的长度
    var checkCode = document.getElementById("checkCode");
    checkCode.value = "";
    var selectChar = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');

    for (var i = 0; i < codeLength; i++) {
        var charIndex = Math.floor(Math.random() * 60);
        code += selectChar[charIndex];
    }
    if (code.length != codeLength) {
        createCode();
    }
    checkCode.value = code;
}


function validate() {
    var inputCode = document.getElementById("input1").value.toUpperCase();
    var codeToUp = code.toUpperCase();
    if (inputCode.length <= 0) {
        alert("请输入验证码！");
        return false;
    }
    else if (inputCode != codeToUp) {
        alert("验证码输入错误！");
        createCode();
        return false;
    }
    else {
        alert("输入正确，输入的验证码为：" + inputCode);
        return true;
    }

}


var xmlhttp = null;
function validate() {
    var userName = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    //1、创建XMLHttpRequest对象
    //2、需要针对IE和其它浏览器建立这个对象的不同方式写不同的代码
    if (window.XMLHttpRequest) {
        //针对FF,Mozilar,Opera,Safari,IE7,IE8
        xmlhttp = new XMLHttpRequest();
        //修正某些浏览器bug
        if (xmlhttp.overrideMimeType) {
            xmlhttp.overrideMimeType("text/xml");
        }
    } else if (window.ActiveXObject) {
        //针对IE6以下的浏览器
        var activexName = ["MSXML2.XMLHTTP", "Microsoft.XMLHTTP", ""];
        for (var i = 0; i < activexName.length; i++) {
            try {
                //取出一个控件名称创建,如果创建成功则停止,反之抛出异常
                xmlhttp = new ActiveXObject(activexName[i]);
                break;
            } catch (e) {
            }
        }
    }
    //需要确认xmlhttp创建是否成功
    if (!xmlhttp) {
        alert("XMLHTTPRequest创建失败!");
        return;
    } else {

    }
    xmlhttp.onreadystatechange = callback;
    //POST方式请求的代码
    xmlhttp.open("POST", "/login", true);
    //POST方式需要自己设置http的请求头
    xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    //POST方式发送数据
    xmlhttp.send("username=" + userName + "&password=" + password);

}

//回调函数
function callback() {
    //判断对象的状态是交互完成
    if(xmlhttp.readyState==4 && xmlhttp.status==200){
        alert(xmlhttp.responseText);//此处获取返回数据
    }


}
function text1() {
    var name = document.getElementById("username").value;
    if (name == "") {
        document.getElementById("user").innerHTML = "<forn color='red'>用户名不能为空</forn>";
        document.getElementById("username").focus();
        return false;
    } else {
    }
}
function text2() {
    var pwd = document.getElementById("password").value;
    if (pwd == "") {
        document.getElementById("pwd").innerHTML = "<forn color='red'>密码不能为空</forn>";
        document.getElementById("password").focus();
        return false;
    } else {
    }
}