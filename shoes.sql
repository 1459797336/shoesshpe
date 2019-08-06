SET NAMES UTF8;
DROP DATABASE IF EXISTS shoes;
CREATE DATABASE shoes CHARSET=UTF-8;
USE shoes;

/*鞋子类型*/
CREATE TABLE shoes_family(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  s_style VARCHAR(64)
);


/*鞋子详情*/
CREATE TABLE shoes_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT, #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  spec VARCHAR(64),           #规格/颜色

  dname VARCHAR(32),          #商品名称
  category VARCHAR(32),       #所属分类
  details VARCHAR(1024),      #产品详细说明

  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
);

/*鞋子图片*/
CREATE  TABLE shoes_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  shoes_id INT,              #鞋子编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径 
);

/*用户信息*/
CREATE TABLE shoes_user(
   uid INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(32),
   upwd VARCHAR(32),
   email VARCHAR(64),
   phone VARCHAR(16),
   
   avatar VARCHAR(128),        #头像图片路径
   user_name VARCHAR(32),      #用户名，如王小明
   gender INT                  #性别  0-女  1-男
);

/*收货地址信息*/
CREATE TABLE shoes_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);
