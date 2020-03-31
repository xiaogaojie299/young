<template>
  <div>
    <div class="top">
      <table></table>
      <div class="top1">
        <img src="../../assets/tubiao/touxiang.jpg" alt="">
     <p>YOUNG</p>   
      </div>
      <div class="item">
        <div @click="dingdan('订单详情')"><img src="../../assets/tubiao/dingdan.png" alt=""><span>订单详情</span> </div>
        <div @click="dingdan('我的优惠券')"><img src="../../assets/tubiao/youhuiquan.png" alt=""><span>我的优惠券</span></div>
      </div> 
    </div>
    <div class="card">
      <ul>
        <li @click="dingdan('我的地址')"><img src="../../assets/tubiao/dizhi.png" alt=""><span>地址管理</span></li>
        <li @click="yinsi"><img src="../../assets/tubiao/yinsi.png" alt=""><span>隐私政策</span></li>
        <li @click="dingdan('我的消息')"><img src="../../assets/tubiao/我的消息.png" alt=""><span>我的消息</span></li>
        <li @click="clear"><img src="../../assets/tubiao/清除缓存.png" alt=""><span>清除缓存</span></li>
        <li><img src="../../assets/tubiao/用户协议.png" alt=""><span>用户协议</span></li>
        <li><img src="../../assets/tubiao/客服.png" alt=""><span>客服QQ：1003568047</span></li>
      </ul>
    </div>
    <div class="btn">
      <button size="large" @click="logout">退出登录</button>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{

    }
  },
  methods:{
    logout(){
      this.axios.get('/loginout').then(res=>{
        console.log(res)
        this.$router.push('/login')
        this.$toast("退出成功")  
      })      
    },
    clear(){
      this.$toast('已为您清除缓存')
    },
    dingdan(text){ 
      this.$router.push({path:`/dingdan/${text}`})
    },
    yinsi(){
      this.$router.push('/yinsi')
    }
  }
}
</script>

<style scoped>
  .top{
    height:300px;
    /* background-image:#ca0e0e; */
    background-image:-webkit-linear-gradient(top,#fa0c0c 0%,#eb5959 100%);
    border-radius:10px;
  }
  .top1{
    width:100%;
    margin:60px 0 55px 0;
    color:#fff;
  }
  .top img{
    width:60px;
    border-radius: 50px;
  }
  .item{
    width:80%;
    height:80px;
    margin:0 auto;
    display: flex;
    justify-content: space-around;
    align-items: center;
    font-size:12px;
    border-radius: 5px;
    background:#fff;
  }
  .item div{
    display: flex;
    flex-direction: column;
    align-items: center;
    width:64px;
  }
  .item img{
    width:32px;
    margin-bottom:5px;
  }
  .card{
    margin:20px 0;
    height:200px;
    background:#fff;
    border:1px solid #ccc;
  }
  ul{
    list-style: none;
    display: flex;
    flex-flow: row wrap;
    padding: 0;     
  }
  ul li{
    margin:0 0 35px 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    width:33.33%;
    font-size:14px;
    font-family:Arial, Helvetica, sans-serif
  }
  .card img{
    width:32px;
    margin-bottom:5px;
  }
  .btn{
    margin: 20px 0 55px 0;
  }
  .btn button{   
    color:#fff;
    width: 85%;
    height: 45px;
    background-image:-webkit-linear-gradient(top,#f32f2f 0%,#e9a5a5 100%);
    border-radius: 18px;
  }
</style>