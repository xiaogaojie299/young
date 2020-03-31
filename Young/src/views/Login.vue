<template>
  <div>
    <div class="login-box">
      <!-- logo -->
      <div class="login-img">
        <img src="../assets/tubiao/logo.jpg" alt="Logo">
        <p class="title">—— &nbsp;花千语 &nbsp;——</p>
      </div>
      <!-- 登录框 -->
      <div class="login_input">
        <mt-field v-model="phone" class="user" placeholder="请输入您的手机号"></mt-field>
        <mt-field v-model="upwd" class="pwd" type="password" placeholder="请输入密码"></mt-field>
        <h5>忘记密码？</h5>
      </div>
      <!-- 登录，注册按钮 -->
      <div class="btns">
        <mt-button @click="login" class="btn btn_login">登录</mt-button>
        <mt-button @click="register" class="btn btn_reg">注册</mt-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      phone: "",
      upwd: ""
    };
  },
  methods: {
    login() {
      // 手机号正则
      var reg1 = /^[1][3,4,5,7,8][0-9]{9}$/;
      //密码
      var reg2 = /^[A-Za-z0-9]{6,12}$/;
      //获取用户输入的手机号，密码
      var phone = this.phone;
      var pwd = this.upwd;
      //验证手机号：失败提醒
      if (!reg1.test(phone)) {
        this.$messagebox("提示", "手机号格式不正确");
        return;
      }
      //验证密码：失败提醒
      if (!reg2.test(pwd)) {
        this.$messagebox("提示", "密码格式不正确");
        return;
      }
      //发送ajxa请求
      var obj = {
        phone,
        pwd
      };
      this.axios.get("/login", { params: obj }).then(res => {
        //登录成功  跳转到首页
        // console.log(res)
        if (res.data.code == 1) {
          this.$router.push("/index");
          this.$toast("登录成功");
        } else {
          //获取服务器返回的结果：登录失败提示
          this.$toast("用户名或密码有误");
        }
      });
    },
    register() {
      this.$router.push("/reg");
    }
  }
};
</script>

<style scoped>
.login-box .login-img {
  text-align: center;
}
.login-box .login-img img {
  height: 250px;
}
.login-box .login-img p {
  font-family: Arial;
  font-size: 20px;
  color: #757575;
  /* margin: -35px 0 30px 0; */
}
.login-box .login-img {
  text-align: center;
}
.login-box .login_input .user,
.login_input .pwd {
  border: 1px solid #ccc;
  border-radius: 8px;
  padding-left: 40px;
}
.login-box .login_input .user {
  background: url("../assets/tubiao/phone32.png") no-repeat;
  background-position: 6px 10px;
  margin: 0 20px 30px 20px;
}
.login-box .login_input .pwd {
  background: url("../assets/tubiao/pwd32.png") no-repeat;
  background-position: 7px 10px;
  margin: 0 20px 0 20px;
}
.login-box .btn {
  display: block;
  width: 21rem;
  margin: 0 auto;
  margin-top: 20px;
}
.login-box .btn_login {
  background: #2fc2c9;
  color: #fff;
}
.login-box .btn_reg {
  background: #fff;
  border: 2px solid #68b0a5;
  color: #68b0a5;
}
.login-box .login_input h5 {
  color: #2fc2c9;
  text-align: right;
  margin: 10px 15px 30px 0;
}
</style>