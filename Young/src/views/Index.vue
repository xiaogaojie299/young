<template>
  <div>
    
    <mt-tab-container v-model="active">
       <!--子面板1 -->
       <mt-tab-container-item id="tab1">
        <h4 class="title">首页</h4>
          <slideshow></slideshow>
          <!-- <img style="width:100%;height:250px;" src="../assets/tubiao/b4.jpg" alt="">  -->
        <t-nav></t-nav>
        <hot></hot>
       </mt-tab-container-item>
       <!--子面板2-->
       <mt-tab-container-item id="tab2">
         <h4 class="title">分类</h4>
         <fixedtop></fixedtop>
         <classify></classify> 
       </mt-tab-container-item>
       <!--子面板3-->
       <mt-tab-container-item id="tab3">
          <h4 class="title">购物车</h4>
          <cart></cart> 
       </mt-tab-container-item>
       <mt-tab-container-item id="tab4">
          <!-- <h4 class="title">我的</h4> -->
          <top></top> 
       </mt-tab-container-item>
     </mt-tab-container>

  <!--  -->
    <!-- 底部导航条 -->
    <mt-tabbar v-model="active" fixed>
      <mt-tab-item id="tab1" >
        <img slot="icon" @click="changeState(0)" :src="currentIndex[0].isSelect?require('../assets/tubiao/shouye.png'):require('../assets/tubiao/shouye2.png')" alt="">
        首页
      </mt-tab-item>
      <mt-tab-item id="tab2" >
        <img slot="icon" @click="changeState(1)" :src="currentIndex[1].isSelect?require('../assets/tubiao/leibie.png'):require('../assets/tubiao/leibie2.png')" alt="">
        分类
      </mt-tab-item>
      <mt-tab-item id="tab3" >
        <img slot="icon" @click="changeState(2)" :src="currentIndex[2].isSelect?require('../assets/tubiao/che.png'):require('../assets/tubiao/che2.png')" alt="">
        购物车
      </mt-tab-item>
      <mt-tab-item id="tab4">
        <img slot="icon"  @click="changeState(3)" :src="currentIndex[3].isSelect?require('../assets/tubiao/wode.png'):require('../assets/tubiao/wode2.png')" alt="">
        我的
      </mt-tab-item>
    </mt-tabbar>
    
  </div>
</template>

<script>
import T_nav from "../components/index/T_nav.vue";
import Hot from "../components/index/Hot_products.vue";
import Slideshow from "../components/index/Slideshow";
import Classify from "../components/classify/Classify.vue";
import Fixedtop from "../components/classify/Fixedtop";
import Cart from "../components/shoppingcart/Cart";
import Top from "../components/my/Top";

export default {
  data() {
    return {
      fanhui: "",
      active: "tab1",
      currentIndex: [
        { isSelect: true },
        { isSelect: false },
        { isSelect: false },
        { isSelect: false }
      ]
    };
  },

  methods: {
    changeState(n) {
      for (var i = 0; i < this.currentIndex.length; i++) {
        if (n == i) {
          this.currentIndex[i].isSelect = true;
          console.log(i);
          this.$router.push({
            path: "/Index",
            query: {
              bid: i
            }
          });
        } else {
          this.currentIndex[i].isSelect = false;
        }
      }
    }
  },
  components: {
    "t-nav": T_nav,
    hot: Hot,
    slideshow: Slideshow,
    classify: Classify,
    fixedtop: Fixedtop,
    cart: Cart,
    top: Top
  }
};
</script>

<style scoped>
.title {
  box-sizing: border-box;
  border-radius: 8px;
  margin: 0;
  padding: 10px;
  font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
  color: #fff;
  /* background:#d83d3d; */
  background-image: -webkit-linear-gradient(top, #fa0c0c 0%, #eb5959 100%);
  opacity: 0.9;
}
</style>>

