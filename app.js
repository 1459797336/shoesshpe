const express=require('express');
//引入路由器
const userRouters=require('./routes/pro.js'); 

//引入中间件
const bodyParser=require('body-parser');
//npm i -save cors
const cors=require("cors");

var server=express();
server.listen(5656);

//引入静态资源
server.use( express.static('public') );
//使用body-parser中间件，将post请求的数据格式化为对象
server.use( bodyParser.urlencoded({
  extended:false
}) );
//只写一次，就可让整个服务端中所有接口都支持跨域
app.use(cors({
  origin:"http://127.0.0.1:5500"
}))

//使用路由器
//使用(挂载)的url: /user
// /user/reg
server.use('/pro',proRouter);