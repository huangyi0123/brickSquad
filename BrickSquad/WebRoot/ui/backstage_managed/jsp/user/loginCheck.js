function checkLogin() {
   //检验用户名：
    //获得用户名文本框的值：
    var username = document.getElementById("username").value;
    var username2 = document.getElementById("username2");
    if (username == null || username == '') {
       username2.innerHTML= "请输入用户名 ！";
   	
        return false;
    }else if (username.length<5||username.length>20){
        username2.innerHTML="用户名长度为6-19位 ！";
         return false;
     }else {
       username2.innerHTML= "";
       var username = document.getElementById("username").value;
       var password = document.getElementById("password").value;
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
    xhr.open("GET","user/toLogin2?time="+new Date().getTime()+"&username="+username+"&password="+password,true);
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
/*
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

*/

function checkPost() {
    var a=checkUsername();
    var b=checkPassword();
   
    if(a==true){
        document.register.submit();
    }else{
        return false;}

}

