const express = require("express");
const session = require("express-session");
const mysql = require("mysql");
const cors = require("cors");
//3:创建数据库连接池
var pool = mysql.createPool({
  host: "47.105.189.13",
  user: "young",
  password: "eycnas2dXZKk2Z4k",
  port: 3306,
  connectionLimit: 15,
  database: "young"
})

var server = express();

server.use(cors({
  origin: ["http://47.105.189.13:4000",
    "http://localhost:4000"],
  credentials: true
}));
server.use(session({
  secret: "128位安全字符串",
  resave: true,
  saveUninitialized: true
}))
server.use(express.static("public"));
server.listen(4000);

//登录
server.get("/login", (req, res) => {
  var n = req.query.phone;
  var p = req.query.pwd;
  var sql = " SELECT id FROM user WHERE phone = ? AND upwd = md5(?)";
  pool.query(sql, [n, p], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ code: -1, msg: "电话号码或密码有误" })
    } else {
      req.session.uid = result[0].id;
      res.send({ code: 1, msg: "登录成功" });
    }
  })
})

//注册
server.get("/reg", (req, res) => {
  var phone = req.query.phone;
  var upwd = req.query.pwd;
  var sql = `INSERT INTO user VALUES(null,${phone},md5(${upwd}))`;
  pool.query(sql, (err, result) => {
    if (err) throw err;
    // console.log(result);
    if (result.affectedRows > 0) {
      res.send({ code: 1, msg: "注册成功" });
    } else {
      res.send({ code: -1, msg: "注册失败" });
    }
  })
})

//home
server.get('/home', (req, res) => {
  var sql = 'SELECT * FROM home'
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result)
  })
})

server.get('/new', (req, res) => {
  var sql = 'SELECT * FROM product_new'
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result)
  })
})

//分类
server.get('/classify', (req, res) => {
  var name = req.query.name
  // console.log(name)
  var sql = 'SELECT * FROM ' + name
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result)
  })
})

//商品详情
server.get('/details', (req, res) => {
  var title = req.query.title
  // console.log(title)
  var sql = 'SELECT * FROM details where title = ?'
  pool.query(sql, [title], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      // console.log(result)
      res.send(result)
    } else {
      res.send("查询失败")
    }
  })
})
// 添加购物车
server.get('/addcart', (req, res) => {
  var uid = req.session.uid

  if (!uid) {
    res.send({ code: "-2", msg: "请登录" })
    return;
  }
  var title = req.query.title;
  var price = req.query.price;
  var pic = req.query.pic;
  // console.log(title,price,pic,uid)

  var sql = 'SELECT * FROM product_cart WHERE title=? AND uid=?'
  var sql2 = 'INSERT INTO product_cart VALUES(?,?,?,?,?,?)';
  var sql3 = 'UPDATE product_cart SET count=? WHERE title=?'
  pool.query(sql, [title, uid], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      var count = result[0].count + 1
      console.log(count)
      pool.query(sql3, [count, title], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
          res.send({ code: 1, msg: "添加成功" })
        } else {
          res.send({ code: -1, msg: "添加失败" })
        }
      })
    } else {
      pool.query(sql2, [null, uid, title, price, 1, pic], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
          res.send({ code: 1, msg: "添加成功" })
        } else {
          res.send({ code: -1, msg: "添加失败" })
        }
      })
    }
  })
})

//购物车
server.get('/cart', (req, res) => {
  var uid = req.session.uid
  if (!uid) {
    res.send({ code: "-2", msg: "请登录" })
    return;
  }
  var sql = 'SELECT * FROM product_cart WHERE uid=?'
  pool.query(sql, [uid], (err, result) => {
    if (err) throw err;
    res.send(result)
  })
})

//sub
// server.get('/sub',(res,req)=>{
//   var str=req.query.str
//   if(str=='+'){

//   }
// })

//删除购物车
server.get('/del', (req, res) => {
  var ids = req.query.ids
  // console.log(ids)
  var sql = `DELETE FROM product_cart WHERE id in(${ids})`
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.affectedRows > 0) {
      res.send({ code: 1, msg: "删除成功" })
    } else {
      res.send({ code: -1, msg: "删除失败" })
    }
  })
})

//loginout
server.get('/loginout', (req, res) => {
  req.session.uid = ""
  res.send({ code: 1, msg: '退出成功' })
})