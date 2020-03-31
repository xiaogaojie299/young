<template>
  <div class="top">
    <div @click="shop(p)" class="foot" v-for='(p,i) of details' :key='i'>
      <div class="img"><img :src="p.pic" alt=""></div>
      <!-- <div class="img"><img src="../../assets/img/index/T/T暖暖情意.jpg" alt=""></div> -->
      <div class="content">
        <span class="title">{{p.title}}</span>
        <span class="sales">销量:{{p.sales}}</span>
        <span class="price">￥{{p.price.toFixed(2)}}</span>
      </div>
    </div> 
    <!-- <div class="foot">
      <div class="img"><img src="../../assets/tubiao/08.jpg" alt=""></div>
      <div class="content">
        <span class="title">一辈子的承诺</span>
        <span class="sales">销量：47758</span>
        <span class="price">￥368</span>
      </div>
    </div> -->
  </div>
  
</template>
<script>
export default {
  data() {
    return {
      details: ""
    };
  },
  created() {
    this.bus.$on("add", this.check.bind(this));
  },
  methods: {
    check(task) {
      this.details = task;
    },
    shop(p) {
      var shop = p.title;
      this.$router.push({ path: `/details/${shop}` });
    }
  }
};
</script>

<style scoped>
.top {
  margin-bottom: 55px;
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