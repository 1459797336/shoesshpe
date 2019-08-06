$(function(){
    $.ajax({
        url:'footer.html',
        type:'get',
        success: function(result) {
            $(result).replaceAll('footer');
            //动态创建link 元素  引入header.css 自动添加到head元素中
            $(`<link rel="stylesheet" href="css/footer.css">`).appendTo('footer')
        }
    })
})