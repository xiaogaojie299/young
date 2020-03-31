-- SET NAMES UTF8;
-- DROP DATABASE IF EXISTS Young;
-- CREATE DATABASE Young CHARSET=UTF8; 
-- USE Young;

#用户表
CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  phone   VARCHAR(11),    
  upwd   VARCHAR(100)
);
INSERT INTO user VALUES(null,'13550820403',md5('970504'));
INSERT INTO user VALUES(null,'14726660426',md5('123456'));
INSERT INTO user VALUES(null,'13678071093',md5('123456'));
INSERT INTO user VALUES(null,'15281666632',md5('123456'));
#首页
CREATE TABLE home(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO home VALUES('','绚烂如你','4857','168','img/index/home/H绚烂如你.jpg');
INSERT INTO home VALUES('','想念','6428','228','img/index/home/H想念.jpg');
INSERT INTO home VALUES('','享受每一刻','3339','199','img/index/home/H享受每一刻.jpg');
INSERT INTO home VALUES('','有你真好','8475','188','img/index/home/H有你真好.jpg');
INSERT INTO home VALUES('','微笑','3390','258','img/index/home/H微笑.jpg');
INSERT INTO home VALUES('','宛若初见','7785','368','img/index/home/H宛若初见.jpg');
INSERT INTO home VALUES('','天使','6548','358','img/index/home/H天使.jpg');
INSERT INTO home VALUES('','怦然心动','7835','388','img/index/home/H怦然心动.jpg');
INSERT INTO home VALUES('','你的笑容','8741','228','img/index/home/H你的笑容.jpg');
INSERT INTO home VALUES('','迷','6624','168','img/index/home/H迷.jpg');
INSERT INTO home VALUES('','爱生活','3251','188','img/index/home/H爱生活.jpg');
INSERT INTO home VALUES('','喜气盈门','7452','228','img/index/home/Hl喜气盈门.jpg');
INSERT INTO home VALUES('','若市','6584','168','img/index/home/Hl若市.jpg');
INSERT INTO home VALUES('','如兰','6526','999','img/index/home/Hl如兰.jpg');	
INSERT INTO home VALUES('','安好','2857','68','img/index/home/Hl安好.jpg');

#精选/精品礼盒
CREATE TABLE product_choiceness(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO product_choiceness VALUES('','甜蜜的爱','23684','668','img/index/choise/C甜蜜的爱.jpeg');
INSERT INTO product_choiceness VALUES('','爱得彻底','5684','368','img/index/choise/C爱得彻底.jpg');
INSERT INTO product_choiceness VALUES('','爱如空气','7684','368','img/index/choise/C爱如空气.jpg');
INSERT INTO product_choiceness VALUES('','沉醉','3684','388','img/index/choise/C沉醉.jpg');
INSERT INTO product_choiceness VALUES('','美丽的你','3698','328','img/index/choise/C美丽的你.jpg');
INSERT INTO product_choiceness VALUES('','盛放','6716','268','img/index/choise/C盛放.jpg');
INSERT INTO product_choiceness VALUES('','甜蜜','5897','368','img/index/choise/C甜蜜.jpg');
INSERT INTO product_choiceness VALUES('','我之蜜糖','7524','398','img/index/choise/C我之蜜糖.jpg');
INSERT INTO product_choiceness VALUES('','小公主','6541','358','img/index/choise/C小公主.jpg');
INSERT INTO product_choiceness VALUES('','氧气','18756','198','img/index/choise/C氧气.jpg');
INSERT INTO product_choiceness VALUES('','最美的你','6584','558','img/index/choise/C最美的你.jpg');

#送女友
CREATE TABLE product_gf(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO product_gf VALUES('','怦然心动','65847','668','img/index/G/G怦然心动.jpg');
INSERT INTO product_gf VALUES('','初见','25811','398','img/index/G/G初见.jpg');
INSERT INTO product_gf VALUES('','暖暖的爱','5841','368','img/index/G/G暖暖的爱.jpg');
INSERT INTO product_gf VALUES('','此情不渝','31811','588','img/index/G/G此情不渝.jpg');
INSERT INTO product_gf VALUES('','甜蜜约定','37418','668','img/index/G/G甜蜜约定.jpg');
INSERT INTO product_gf VALUES('','长相守','2584','398','img/index/G/G长相守.jpg');
INSERT INTO product_gf VALUES('','无悔','4874','528','img/index/G/G无悔.jpg');
INSERT INTO product_gf VALUES('','刚好遇见你','15347','668','img/index/G/G刚好遇见你.jpg');
INSERT INTO product_gf VALUES('','至死不渝','11258','398','img/index/G/G至死不渝.jpg');
INSERT INTO product_gf VALUES('','天使','25811','368','img/index/G/G天使.jpg');
INSERT INTO product_gf VALUES('','梦中人','5811','298','img/index/G/G梦中人.jpg');

#送朋友
CREATE TABLE product_friend(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO product_friend VALUES('','灿烂的你','7831','328','img/index/F/F灿烂的你.jpg');
INSERT INTO product_friend VALUES('','春风拂面','5234','328','img/index/F/F春风拂面.jpg');
INSERT INTO product_friend VALUES('','美好如你','6524','199','img/index/F/F美好如你.jpg');
INSERT INTO product_friend VALUES('','热情','4325','328','img/index/F/F热情.jpg');
INSERT INTO product_friend VALUES('','温暖的你','3848','358','img/index/F/F温暖的你.jpg');
INSERT INTO product_friend VALUES('','相伴','3541','328','img/index/F/F相伴.jpg');
INSERT INTO product_friend VALUES('','小美好','7841','358','img/index/F/F小美好.jpg');
INSERT INTO product_friend VALUES('','小太阳','4257','358','img/index/F/F小太阳.jpg');
INSERT INTO product_friend VALUES('','心的礼物','4518','328','img/index/F/F心的礼物.jpg');
INSERT INTO product_friend VALUES('','绚烂','2847','358','img/index/F/F绚烂.jpg');
INSERT INTO product_friend VALUES('','眼里只有你','3521','358','img/index/F/F眼里只有你.jpg');

#送父母
CREATE TABLE product_parent(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO product_parent VALUES('','爱不凋谢','1895','228','img/index/T/T爱不凋谢.jpg');
INSERT INTO product_parent VALUES('','春风化雨','3854','328','img/index/T/T春风化雨.jpg');
INSERT INTO product_parent VALUES('','感恩有你','5825','398','img/index/T/T感恩有你.jpg');
#INSERT INTO product_parent VALUES('','暖暖情意','3836','328','img/index/T/T暖暖情意.jpg');
INSERT INTO product_parent VALUES('','如玉','6847','328','img/index/T/T如玉.jpg');
INSERT INTO product_parent VALUES('','心存感激','6884','328','img/index/T/T心存感激.jpg');
INSERT INTO product_parent VALUES('','心若向阳','2471','298','img/index/T/T心若向阳.jpg');
INSERT INTO product_parent VALUES('','星辰','1861','199','img/index/T/T星辰.jpg');
INSERT INTO product_parent VALUES('','永恒的爱','3865','328','img/index/T/T永恒的爱.jpg');
INSERT INTO product_parent VALUES('','祝福','1844','228','img/index/T/T祝福.jpg');
INSERT INTO product_parent VALUES('','最好的你','1832','258','img/index/T/T最好的你.jpg');


#新品专区
CREATE TABLE product_new(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO product_new VALUES('','氧气','18756','198','img/index/choise/C氧气.jpg');
INSERT INTO product_new VALUES('','怦然心动','7835','388','img/index/home/H怦然心动.jpg');
INSERT INTO product_new VALUES('','爱不凋谢','1895','228','img/index/T/T爱不凋谢.jpg');
INSERT INTO product_new VALUES('','至死不渝','11258','398','img/index/G/G至死不渝.jpg');
INSERT INTO product_new VALUES('','宛若初见','7785','368','img/index/home/H宛若初见.jpg');
INSERT INTO product_new VALUES('','盛放','6716','268','img/index/choise/C盛放.jpg');
INSERT INTO product_new VALUES('','永恒的爱','3865','328','img/index/T/T永恒的爱.jpg');
INSERT INTO product_new VALUES('','如玉','6847','328','img/index/T/T如玉.jpg');
INSERT INTO product_new VALUES('','安好','2857','68','img/index/home/Hl安好.jpg');
INSERT INTO product_new VALUES('','小太阳','4257','358','img/index/F/F小太阳.jpg');
INSERT INTO product_new VALUES('','刚好遇见你','15347','668','img/index/G/G刚好遇见你.jpg');


#热销鲜花
CREATE TABLE product_hot(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO product_hot VALUES('','初见','25811','398','img/index/G/G初见.jpg');
INSERT INTO product_hot VALUES('','至死不渝','11258','398','img/index/G/G至死不渝.jpg');
INSERT INTO product_hot VALUES('','灿烂的你','7831','328','img/index/F/F灿烂的你.jpg');
INSERT INTO product_hot VALUES('','刚好遇见你','15347','668','img/index/G/G刚好遇见你.jpg');
INSERT INTO product_hot VALUES('','怦然心动','65847','668','img/index/G/G怦然心动.jpg');
INSERT INTO product_hot VALUES('','心存感激','6884','328','img/index/T/T心存感激.jpg');
INSERT INTO product_hot VALUES('','天使','25811','368','img/index/G/G天使.jpg');
INSERT INTO product_hot VALUES('','宛若初见','7785','368','img/index/home/H宛若初见.jpg');
INSERT INTO product_hot VALUES('','小美好','7841','358','img/index/F/F小美好.jpg');
INSERT INTO product_hot VALUES('','感恩有你','5825','398','img/index/T/T感恩有你.jpg');
INSERT INTO product_hot VALUES('','氧气','18756','198','img/index/choise/C氧气.jpg');

#生活鲜花
CREATE TABLE product_life(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50)
);
INSERT INTO product_life VALUES('','你的笑容','8741','228','img/index/home/H你的笑容.jpg');
INSERT INTO product_life VALUES('','梦中人','5811','298','img/index/G/G梦中人.jpg');
INSERT INTO product_life VALUES('','绚烂如你','4857','168','img/index/home/H绚烂如你.jpg');
INSERT INTO product_life VALUES('','爱生活','3251','188','img/index/home/H爱生活.jpg');
INSERT INTO product_life VALUES('','若市','6584','168','img/index/home/Hl若市.jpg');
INSERT INTO product_life VALUES('','安好','2857','68','img/index/home/Hl安好.jpg');
INSERT INTO product_life VALUES('','如兰','6526','999','img/index/home/Hl如兰.jpg');	
INSERT INTO product_life VALUES('','享受每一刻','3339','199','img/index/home/H享受每一刻.jpg');
INSERT INTO product_life VALUES('','天使','6548','358','img/index/home/H天使.jpg');
INSERT INTO product_life VALUES('','迷','6624','168','img/index/home/H迷.jpg');
INSERT INTO product_life VALUES('','美好如你','6524','199','img/index/F/F美好如你.jpg');

#详情页
CREATE TABLE details(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  sales INT,  
  price INT,
  pic VARCHAR(50),
  object VARCHAR(20),
  purpose VARCHAR(30),
  materials VARCHAR(50)
);
INSERT INTO details VALUES('','绚烂如你','4857','168','img/index/home/H绚烂如你.jpg','朋友,恋人','友情鲜花,生日鲜花','5支向日葵');
INSERT INTO details VALUES('','想念','6428','228','img/index/home/H想念.jpg','朋友，恋人','生日鲜花，友情鲜花','尤加利叶、玫瑰，桔梗，康乃馨，绣球');
INSERT INTO details VALUES('','享受每一刻','3339','199','img/index/home/H享受每一刻.jpg','朋友','生活鲜花','粉白月季');
INSERT INTO details VALUES('','有你真好','8475','188','img/index/home/H有你真好.jpg','朋友，恋人','友情鲜花，生活鲜花','蓝色、白色绣球');
INSERT INTO details VALUES('','微笑','3390','258','img/index/home/H微笑.jpg','朋友，恋人','友情鲜花，生活鲜花','粉色、白色桔梗');
INSERT INTO details VALUES('','宛若初见','7785','368','img/index/home/H宛若初见.jpg','恋人','爱情鲜花，周年纪念','粉色、香槟色玫瑰');
INSERT INTO details VALUES('','天使','6548','358','img/index/home/H天使.jpg','老师，长辈','问候长辈','粉色郁金香');
INSERT INTO details VALUES('','怦然心动','7835','388','img/index/home/H怦然心动.jpg','朋友，恋人','生日鲜花，友情鲜花','桔梗、月季、粉色玫瑰、桔梗、烟花扶郎');
INSERT INTO details VALUES('','你的笑容','8741','228','img/index/home/H你的笑容.jpg','朋友','生日鲜花，友情鲜花，生活鲜花','黄色星星玫瑰');
INSERT INTO details VALUES('','迷','6624','168','img/index/home/H迷.jpg','','','');
INSERT INTO details VALUES('','爱生活','3251','188','img/index/home/H爱生活.jpg','庆贺，朋友','生活鲜花，庆贺鲜花','月季、鸡蛋花、桔梗');
INSERT INTO details VALUES('','喜气盈门','7452','228','img/index/home/Hl喜气盈门.jpg','','开业、庆典、婚庆、会议','各色气球、粉色黄色香槟色桔梗');
INSERT INTO details VALUES('','若市','6584','168','img/index/home/Hl若市.jpg','','婚庆、会议','黄色风信子');
INSERT INTO details VALUES('','如兰','6526','999','img/index/home/Hl如兰.jpg','朋友','生活鲜花','紫色蝴蝶兰');
INSERT INTO details VALUES('','安好','2857','68','img/index/home/Hl安好.jpg','朋友，自己','生活鲜花','黄色海芋');
INSERT INTO details VALUES('','甜蜜的爱','23684','668','img/index/choise/C甜蜜的爱.jpeg','爱人','爱情鲜花，未婚鲜花','99朵红玫瑰');
INSERT INTO details VALUES('','爱得彻底','5684','368','img/index/choise/C爱得彻底.jpg','恋人','爱情鲜花，道歉鲜花','19朵红玫瑰');
INSERT INTO details VALUES('','爱如空气','7684','368','img/index/choise/C爱如空气.jpg','恋人，朋友','爱情鲜花，友情鲜花','绿色、粉色桔梗');
INSERT INTO details VALUES('','沉醉','3684','388','img/index/choise/C沉醉.jpg','朋友，恋人','爱情鲜花，友情鲜花','紫色玫瑰、粉色玫瑰、绣球、满天星');
INSERT INTO details VALUES('','美丽的你','3698','328','img/index/choise/C美丽的你.jpg','老师，长辈','问候长辈','粉色康乃馨');
INSERT INTO details VALUES('','盛放','6716','268','img/index/choise/C盛放.jpg','朋友，恋人','友情鲜花，爱情鲜花','绣球、多肉、绿色小雏菊，红色玫瑰，黄色月季，红豆杉');
INSERT INTO details VALUES('','甜蜜','5897','368','img/index/choise/C甜蜜.jpg','恋人','爱情鲜花，道歉鲜花','粉色玫瑰');
INSERT INTO details VALUES('','我之蜜糖','7524','398','img/index/choise/C我之蜜糖.jpg','朋友，恋人','爱情鲜花，友情鲜花','紫色玫瑰');
INSERT INTO details VALUES('','小公主','6541','358','img/index/choise/C小公主.jpg','朋友','友情鲜花','黄色玫瑰');
INSERT INTO details VALUES('','氧气','18756','198','img/index/choise/C氧气.jpg','朋友，自己','生活鲜花','粉色玫瑰、红色玫瑰');
INSERT INTO details VALUES('','最美的你','6584','558','img/index/choise/C最美的你.jpg','爱人','爱情鲜花，求婚鲜花','红色玫瑰、白色玫瑰');
INSERT INTO details VALUES('','怦然心动','65847','668','img/index/G/G怦然心动.jpg','恋人','爱情鲜花','99朵红玫瑰');
INSERT INTO details VALUES('','初见','25811','398','img/index/G/G初见.jpg','朋友，恋人','友情鲜花，爱情鲜花','蓝色绣球、紫色桔梗、白色桔梗');
INSERT INTO details VALUES('','暖暖的爱','5841','368','img/index/G/G暖暖的爱.jpg','恋人','爱情鲜花','黄色月季、橙色月季、红色玫瑰、尤加利叶');
INSERT INTO details VALUES('','此情不渝','31811','588','img/index/G/G此情不渝.jpg','朋友，恋人','友情鲜花，生日鲜花','各色桔梗、绣球、尤加利叶');
INSERT INTO details VALUES('','甜蜜约定','37418','668','img/index/G/G甜蜜约定.jpg','爱人','爱情鲜花，求婚鲜花','99朵红玫瑰');
INSERT INTO details VALUES('','长相守','2584','398','img/index/G/G长相守.jpg','爱人','爱情鲜花，生日鲜花','香水百合、蝴蝶兰、星星月季、红玫瑰');
INSERT INTO details VALUES('','无悔','4874','528','img/index/G/G无悔.jpg','','','');
INSERT INTO details VALUES('','刚好遇见你','15347','668','img/index/G/G刚好遇见你.jpg','爱人，朋友','生日鲜花，友情鲜花','香槟色玫瑰、尤加利叶、雏菊');
INSERT INTO details VALUES('','至死不渝','11258','398','img/index/G/G至死不渝.jpg','恋人','生日鲜花，爱情鲜花','39朵红玫瑰');
INSERT INTO details VALUES('','天使','25811','368','img/index/G/G天使.jpg','朋友，恋人','生日鲜花，生活鲜花','蓝色白色粉色绣球');
INSERT INTO details VALUES('','梦中人','5811','298','img/index/G/G梦中人.jpg','爱人，朋友','生活鲜花，友情鲜花','紫色满天星');
INSERT INTO details VALUES('','灿烂的你','7831','328','img/index/F/F灿烂的你.jpg','朋友，恋人','友情鲜花，生日鲜花','白色桔梗、黄色月季、黄色玫瑰、粉色桔梗');
INSERT INTO details VALUES('','春风拂面','5234','328','img/index/F/F春风拂面.jpg','朋友，恋人','友情鲜花，生日鲜花','白色扶郎、紫色桔梗、紫色玫瑰、香槟色玫瑰');
INSERT INTO details VALUES('','美好如你','6524','199','img/index/F/F美好如你.jpg','朋友','友情鲜花，生日鲜花','9支白色海芋');
INSERT INTO details VALUES('','热情','4325','328','img/index/F/F热情.jpg','朋友，恋人','生日鲜花，友情鲜花','粉色玫瑰、红色玫瑰、红色大丽菊');
INSERT INTO details VALUES('','温暖的你','3848','358','img/index/F/F温暖的你.jpg','朋友，恋人','生日鲜花，友情鲜花','白色虞美人、折色玫瑰、白色桔梗');
INSERT INTO details VALUES('','相伴','3541','328','img/index/F/F相伴.jpg','朋友','友情鲜花','39朵黄玫瑰、尤加利叶');
INSERT INTO details VALUES('','小美好','7841','358','img/index/F/F小美好.jpg','朋友，恋人','爱情鲜花，友情鲜花','白色玫瑰、粉色玫瑰、香槟色玫瑰');
INSERT INTO details VALUES('','小太阳','4257','358','img/index/F/F小太阳.jpg','朋友，恋人','友情鲜花，生日鲜花','白色桔梗、向日葵、白色玫瑰');
INSERT INTO details VALUES('','心的礼物','4518','328','img/index/F/F心的礼物.jpg','朋友，恋人','生日鲜花，友情鲜花','粉色玫瑰、香槟色玫瑰、尤加利叶、白色玫瑰');
INSERT INTO details VALUES('','绚烂','2847','358','img/index/F/F绚烂.jpg','朋友，恋人','生日鲜花，友情鲜花','粉色桔梗、白色玫瑰、黄色玫瑰、粉色玫瑰、尤加利叶');
INSERT INTO details VALUES('','眼里只有你','3521','358','img/index/F/F眼里只有你.jpg','恋人，朋友','生日鲜花，友情鲜花','黄色月季、粉色玫瑰、黄色玫瑰、香槟色玫瑰');
INSERT INTO details VALUES('','爱不凋谢','1895','228','img/index/T/T爱不凋谢.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','粉色康乃馨、粉色玫瑰、白色满天星、白色百合');
INSERT INTO details VALUES('','春风化雨','3854','328','img/index/T/T春风化雨.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','白色玫瑰、粉色玫瑰、白色烟花扶郎、紫色风信子');
INSERT INTO details VALUES('','感恩有你','5825','398','img/index/T/T感恩有你.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','粉色、红色、玫红色康乃馨');
INSERT INTO details VALUES('','暖暖情意','3836','328','img/index/T/T暖暖情意.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','黄色月季、红色月季、红色玫瑰、尤加利叶');
INSERT INTO details VALUES('','如玉','6847','328','img/index/T/T如玉.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','白色玫瑰、粉色玫瑰、白色桔梗、尤加利叶');
INSERT INTO details VALUES('','心存感激','6884','328','img/index/T/T心存感激.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','香槟玫瑰、白色玫瑰、绿色海芋、黄色月季');
INSERT INTO details VALUES('','心若向阳','2471','298','img/index/T/T心若向阳.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','红色玫瑰、红色月季、红色康乃馨');
INSERT INTO details VALUES('','星辰','1861','199','img/index/T/T星辰.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','白色满天星');
INSERT INTO details VALUES('','永恒的爱','3865','328','img/index/T/T永恒的爱.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','白色芍药、白色玫瑰、白色桔梗');
INSERT INTO details VALUES('','祝福','1844','228','img/index/T/T祝福.jpg','老师，长辈，父母','问候长辈，生活鲜花','紫色月季、白色月季');
INSERT INTO details VALUES('','最好的你','1832','258','img/index/T/T最好的你.jpg','老师，长辈，父母','问候长辈，祝贺庆贺','玫瑰、满天星、勿忘我、棉花等干花');

#购物车
CREATE TABLE product_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uid   INT,    
  title VARCHAR(20),
  price INT,
  count INT,
  pic VARCHAR(50)
);
























