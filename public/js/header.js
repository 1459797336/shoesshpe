$(function(){
    $.ajax({
        url:'header.html',
        type:'get',
        success: function(result) {
            $(result).replaceAll('header');
            //动态创建link 元素  引入header.css 自动添加到head元素中
            $(`<link rel="stylesheet" href="css/header.css">`).appendTo('head')
        }
    })
})