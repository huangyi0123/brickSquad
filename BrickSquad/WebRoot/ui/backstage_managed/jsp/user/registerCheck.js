function checkUsername() {
   //检验用户名：
    //获得用户名文本框的值：
    var username = document.getElementById("username").value;
    var username2 = document.getElementById("username2");
  if (username == null || username == '') {
       username2.innerHTML= "用户名不能为空 ！";
   	
        return false;
    }else if (username.length<5||username.length>20){
        username2.innerHTML="用户名长度为6-19位 ！";
         return false;
     }else {
       username2.innerHTML= "";
       var username = document.getElementById("username").value;
       // 1.创建异步交互对象
       var xhr = createXmlHttp();
       // 2.设置监听
       xhr.onreadystatechange = function() {
           if(xhr.readyState == 4){
               if(xhr.status == 200){
                   document.getElementById("username2").innerHTML = xhr.responseText;
               }
           }

    }

    }
    // 3.打开连接
    xhr.open("GET","user/usernameCheck?time="+new Date().getTime()+"&username="+username,true);
    // 4.发送
   //	
    xhr.send(null);
    return true;
}
function createXmlHttp(){
    var xmlHttp;
    try{ // Firefox, Opera 8.0+, Safari
        xmlHttp=new XMLHttpRequest();
    }
    catch (e){
        try{// Internet Explorer
            xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
        }
        catch (e){
            try{
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (e){}
        }
    }

    return xmlHttp;
}

function checkPassword() {
    //检验密码：
    //获得密码文本框的值：
    var password = document.getElementById("password").value;
    var password2 = document.getElementById("password2");
    if (password == null || password == '') {
        password2.innerHTML= "密码不能为空";

        return false;
    }else if (password.length<5||password.length>20){

        password2.innerHTML="密码长度为6-19位";
        return false;
    }else {
        password2.innerHTML = "";
        return true;
    }

}

function checkRepassword() {
    //检验确认密码：
    //获得确认密码文本框的值：
    var repassword = document.getElementById("repassword").value;
    var upassword = document.getElementById("password").value;
    var repassword2 = document.getElementById("repassword2");
    if (repassword == null || repassword == '') {

        repassword2.innerHTML= "密码不能为空";

        return false;
    }else if (repassword!=upassword){

        repassword2.innerHTML="两次输入密码不一致";
        return false;
    }else {
        repassword2.innerHTML = "";
        return true;
    }

}

function checkPhone() {
    //检验手机号码：
    //获得手机号码文本框的值：
    var phone=document.getElementById("phone").value;
    var phone2=document.getElementById("phone2");
    var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(14[0-9]{1}))+\d{8})$/;
    if (phone==null||phone==''){
        phone2.innerHTML="手机号码不能为空 ！";
        return false;
    }else if(!myreg.test(phone))
    {
        phone2.innerHTML="请输入有效的手机号码 ！";
        return false;
    }else {
        phone2.innerHTML="";
        return true;
    }
}
function checkedXieyi(){
    var count = 0;
    var checkArry = document.getElementsByName("xieyi");
    for (var i = 0; i < checkArry.length; i++) {
        if(checkArry[i].checked == true){
            //选中的操作
            count++;
            document.getElementById("xieyi").innerHTML="";
            return true;
        }
    }
    if( count == 0 ){
        document.getElementById("xieyi").innerHTML="请确认同意相关协议条款";
        return false;
    }
}

function checkPost() {
    var a=checkUsername();
    var b=checkPassword();
    var c=checkRepassword();
    var d=checkPhone();
    var e=checkedXieyi();
    if(a==true&&b==true&&c==true&&d==true&&e==true){
        document.register.submit();
    }else{
        return false;}

}

