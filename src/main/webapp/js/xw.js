// JavaScript Document
//单纯分钟和秒倒计时
/*
function resetTime(time){
    var resetTime = document.getElementById("resetTime");
var timer=null;
var t=time;
var m=0;
var s=0;
m=Math.floor(t/60%60);
m<10&&(m='0'+m);
s=Math.floor(t%60);
function countDown(){
    s--;
    s<10&&(s='0'+s);
    if(s.length>=3){
        s=59;
        m="0"+(Number(m)-1);
    }
    if(m.length>=3){
        m='00';
        s='00';
        clearInterval(timer);
    }
    console.log(m+"分钟"+s+"秒");
    resetTime.innerHTML=m+":"+s;
}
timer=setInterval(countDown,1000);
}
resetTime(2400);*/


//带天数的倒计时
function countDown(times){
    var timer=null;
    timer=setInterval(function(){
        var resetTime = document.getElementById("resetTime");
        var day=0,
            hour=0,
            minute=0,
            second=0;//时间默认值
        if(times > 0){
            day = Math.floor(times / (60 * 60 * 24));
            hour = Math.floor(times / (60 * 60)) - (day * 24);
            minute = Math.floor(times / 60) - (day * 24 * 60) - (hour * 60);
            second = Math.floor(times) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
        }
        if (day <= 9) day = '0' + day;
        if (hour <= 9) hour = '0' + hour;
        if (minute <= 9) minute = '0' + minute;
        if (second <= 9) second = '0' + second;
        //  console.log(day+"天:"+hour+"小时："+minute+"分钟："+second+"秒");
        resetTime.innerHTML=minute+":"+second;
        times--;
    },1000);
    if(times<=0){
        clearInterval(timer);
    }
}
countDown(2400);