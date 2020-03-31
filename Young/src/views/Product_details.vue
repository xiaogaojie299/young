<template>
  <div>
    <div class="fixed-top">
      <div class="top-head">
        <img class="back" @click="back" src="../assets/tubiao/back.png" alt="">
        <span class="top-xq">详情</span> 
      </div>
    </div>
    <table></table>
    <div class="img1">
      <img :src="shop.pic" alt="">
    </div>  
    <div class="title1">
      <p>{{shop.title}}</p>
      <p><span class="price">￥{{shop.price}}</span><span>已售：{{shop.sales}}件</span></p>
    </div>
    <div class="title2">
      <p>合适对象：{{shop.object}}</p>
      <p>合适用途：{{shop.purpose}}</p>
    </div>
    <p class="title3">产品详情</p>
    <div class="details">      
      <p><span>材料</span> <span>{{shop.materials}}</span> </p>
      <p><span>包装</span> <span>黑色雾面纸包装，红色缎带束扎。</span> </p>
      <p><span>附赠</span> <span>免费附送精美贺卡，代写您的祝福</span> </p>
      <p><span>配送</span> <span>全国</span> </p>
      <p><span>说明</span> <span>以实物为准</span> </p>
    </div>
    <div><img src="" alt=""></div>
    <p>热卖推荐</p>
    <div style="margin-bottom:50px;">   
      <div class="foot" v-for='(p,i) of details' :key='i'>
        <div class="img"><img :src="p.pic" alt=""></div>
        <div class="content">
          <span class="title">{{p.title}}</span>
          <span class="sales">销量:{{p.sales}}</span>
          <span class="price">￥{{p.price.toFixed(2)}}</span> 
        </div>
      </div>
    </div> 
    
    <div class="fixed-bottom">
      <div class="btn">
        <span  size="large" @click="shopping">立即购买</span>
        <span  size="large" @click="addcart()">加入购物车</span>
      </div>
    </div> 
  </div>
</template>

<script>
export default {
  data() {
    return {
      details: "",
      list: this.$route.params.shop,
      shop: ""
    };
  },
  created() {
    this.axios.get("/details", { params: { title: this.list } }).then(res => {
      this.shop = res.data[0];
      // console.log(this.shop);
    });
    this.axios.get("/home").then(res => {
      // console.log(res.data)
      this.details = res.data;
    });
  },
  methods: {
    shopping() {
      this.$toast("此功能暂未开放，敬请期待");
    },
    back() {
      this.$router.go(-1);
    },
    addcart() {
      // console.log(this.shop)
      this.axios
        .get("/addcart", { params: this.shop })
        .then(res => {
          console.log(res);
          console.log(`添加成功`);
          // if (res.data.code == -1) {
          //   this.$toast("添加失败");
          // }
          // if (res.data.code == -2) {
          //   this.$router.push("/");
          //   this.$toast("请您登录！");
          // }
          // if (res.data.code == 1) {
          //   this.$toast("添加成功");
          // }
          this.$toast("添加成功");
        })
        .catch(err => {
          console.log(err);
        });
    }
  }
};
</script>

<style scoped>
/* *{margin:0;padding: 0} */
div {
  font-family: cursive;
}
.fixed-top {
  position: fixed;
  left: 0;
  top: 0;
  background: #fff;
  /* border-bottom:1px solid #ccc; */
  z-index: 999;
  width: 100%;
  height: 30px;
}
.top-head {
  display: flex;
  justify-content: left;
  align-items: center;
  text-align: center;
}
.back {
  position: absolute;
  width: 20px;
  height: 20px;
}
.top-xq {
  font-size: 16px;
  line-height: 30px;
  /* margin-left:155px; */
  margin: 0 auto;
}
.img1 img {
  width: 100%;
  height: 300px;
  margin-top: 23px;
}
.foot {
  display: flex;
  flex-flow: row;
  padding: 8px;
  font-size: 18px;
  border-bottom: 1px solid #ccc;
  font-family: cursive;
}
.foot .img {
  width: 110px;
  height: 80px;
}
.foot img {
  width: 100%;
  height: 80px;
  border-radius: 5px;
}
.foot .content {
  display: flex;
  flex-flow: row;
  flex-direction: column;
  justify-content: space-around;
  padding-left: 20px;
}
.price {
  text-align: left;
  font-size: 24px;
  color: red;
}
.title1,
.title2 {
  border-bottom: 1px solid rgb(240, 235, 235);
}
.title1 p,
.title2 p {
  text-align: left;
  margin: 3px 0;
  font-size: 16px;
}
.title1 p:nth-child(2) {
  display: flex;
  justify-content: space-between;
}
.title3 {
  text-align: left;
  margin: 10px 0;
  font-weight: 600;
}
.details p {
  display: flex;
  flex-flow: row nowrap;
  justify-content: left;
  margin: 5px 0;
  color: #999;
  /* text-align: left; */
}
.details p span:nth-child(2) {
  margin-left: 10px;
  color: #000;
}
.fixed-bottom {
  width: 100%;
  position: fixed;
  left: 0;
  bottom: 0;
}
.btn {
  width: 100%;
  display: flex;
  justify-content: space-between;
  z-index: 999;
  width: 100%;
}
.btn span {
  width: 50%;
  height: 48px;
  font-size: 18px;
  line-height: 48px;
  color: #fff;
  background-image: -webkit-linear-gradient(top, #f3290e 0%, #ec6958 100%);
}
.btn span:nth-child(2) {
  background-image: -webkit-linear-gradient(top, #eca431 0%, #e9d991 100%);
}
</style>