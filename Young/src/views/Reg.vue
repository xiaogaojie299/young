<template>
  <div>
    <div class="reg-box">
      <!-- logo -->
      <div class="reg-img">
        <img src="../assets/tubiao/logo.jpg" alt="Logo">
        <p>—— &nbsp;花千语 &nbsp;——</p>
      </div>
      <div class="reg_input">
        <mt-field v-model="userPhone" class="user" :placeholder="userholder"></mt-field>
        <mt-field v-model="pwd" class="pwd" :placeholder="pwdholder"></mt-field>
        <mt-field v-model="pwdCheck" class="pwd-check" :placeholder="checkholder"></mt-field>

      </div>
      <!-- 登录，注册按钮 -->
      <div class="btns">
        <mt-button @click="register" class="btn btn_reg">注册</mt-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return {
      userPhone:"",
      pwd:"",
      pwdCheck:"",
      userholder:"请输入您的手机号",
      pwdholder:"请输入密码",
      checkholder:"请再次输入密码"
    }
  },
  methods:{
    
    register(){
      // 手机号,密码正则
      var reg1=/^[1][3,4,5,7,8][0-9]{9}$/;
      var reg2=/^[A-Za-z0-9]{6,12}$/;
      //获取用户输入的手机号，密码
      var phone=this.userPhone;
      var pwd=this.pwd;
      var check=this.pwdCheck;
      //验证手机号：失败提醒
      if(!reg1.test(phone)){
        this.$messagebox("提示","手机号格式不正确");
        return;
      }
      //验证密码：失败提醒
      if(!reg2.test(pwd)){
        this.$messagebox("提示","密码格式不正确");
        return;
      }
      //验证密码：失败提醒
      if(check!==pwd){
        this.$messagebox("提示","两次密码不一致，请重新输入");
        return;
      }
      //发送ajax请求
      var obj = {
        phone,
        pwd
      };
      this.axios.get("/reg",{params:obj}).then(res=>{
        //获取服务器返回的结果：注册失败提示
        if(res.data.code==1){
          //注册成功  跳转到登录页面
           this.$router.push("/login")
           this.$toast("注册成功");
        }else{         
         this.$toast("注册失败");
        }
      })
    }
  }
}
</script>

<style scoped>
  .reg-box .reg-img{
    text-align: center;
  }
  .reg-box .reg-img p{
    font-family: Arial;
    font-size: 20px;
    color:#757575;
    margin: -35px 0 30px 0;
  }
  .reg-box .reg-img{
    text-align: center;
  }
  .reg_input .user,
  .reg_input .pwd,
  .reg_input .pwd-check{
    border:1px solid #ccc;
    border-radius: 8px;
    padding-left: 40px;
  }
  .reg-box .reg_input .user{
    background: url("../assets/tubiao/phone32.png") no-repeat;
    background-position: 6px 10px;
    margin: 0 20px 30px 20px;
  }
  .reg-box .reg_input .pwd{
    background: url("../assets/tubiao/pwd32.png") no-repeat;
    background-position: 7px 10px;
    margin: 0 20px 30px 20px;
  }
  .reg-box .reg_input .pwd-check{
    background: url("../assets/tubiao/pwd32.png") no-repeat;
    background-position: 7px 10px;
    margin: 0 20px 0 20px;
  }
  .reg-box .btn{
    display: block;
    width: 21rem;
    margin: 0 auto;
    margin-top: 80px;
  }
  .reg-box .btn_reg{
    background:#fff; 
    border: 2px solid #68b0a5;
    color:#68b0a5;
  }
</style>