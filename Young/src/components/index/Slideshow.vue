<template>
 <div class="slideshow">
  <mt-swipe class="swipe" :auto="3000">
   <mt-swipe-item v-for="img in images" :key="img.id">
     <!-- <router-link to="to.img" title="title.img"> -->
     <img :src="img.url"/>
   <!-- </router-link> -->
   </mt-swipe-item>
  </mt-swipe>
 </div>
</template>
<script>
//:show-indicators="false" 消除指示器
//:auto="0" 取消自动播放
  export default{
   name:'tabConrainerl',
   data(){
    return{
     
     images:[
      {url:require('../../assets/img/background/carousel2.jpg'),id:0,title:"1",to:"#"},
      {url:require('../../assets/img/background/carousel3.jpg'),id:1,title:"2",to:"#"},
      {url:require('../../assets/img/background/carousel5.jpg'),id:2,title:"3",to:"#"}
     ]
    }
  },
  methods:{
    
   }
  }
</script>
<style scoped>
.slideshow{
  margin-top:8px;
  /* border-radius: 10px; */
}
.swipe{
 height:200px !important;
 border-radius: 10px;
      }
.mint-swipe-indicator{
 background:#0089ff !important;
 opacity: 0.5 !important;
}
.mint-swipe-indicator.is-active{
 background:#f10baa !important;
 opacity: 0.7 !important;
}
img{
  width:100%;
  height:200px;
  border-radius: 10px;
}
</style>
