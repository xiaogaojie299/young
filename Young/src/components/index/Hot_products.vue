<template>
  <div class="Hot">
    <h3 class="top">—— 热门产品 ——</h3>
    <div @click="shop(p)" class="foot" v-for='(p,i) of details' :key='i'>
      <div class="img"><img :src="p.pic" alt=""></div>
      <div class="content">
        <span class="title">{{p.title}}</span>
        <span class="sales">销量:{{p.sales}}</span>
        <span class="price">￥{{p.price.toFixed(2)}}</span>
      </div>
    </div> 
  </div>
</template>
<script>
export default {
  data() {
    return {
      details: ""
    };
  },
  methods: {
    shop(p) {
      var shop = p.title;
      this.$router.push({ path: `/details/${shop}` });
    }
  },
  created() {
    this.axios.get("/home").then(res => {
      // console.log(res)
      this.details = res.data;
      // console.log(this.details)
    });
  }
};
</script>

<style scoped>
.Hot {
  margin-bottom: 56px;
}
.top {
  text-align: center;
  color: #ff2d2d;
  padding: 5px;
  border-bottom: 1px solid #ccc;
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
  color: red;
}
</style>