<template>
  <div>
    <div class="fixed-top">
      <div class="top-head">
        <img class="back" @click="back" src="../../assets/tubiao/back.png" alt="">
        <span class="top-xq">{{text}}</span> 
      </div>
    </div>
    <div class="img" >
      <img src="../../assets/tubiao/暂无.png" alt="">
      <p>暂无{{text}}</p>
    </div>
  </div>
</template>
<script>
export default {
   data(){
    return{
      text:this.$route.params.text
      }
    },
    methods:{
      back(){
        this.$router.go(-1)
      }
    }
}
</script>

<style scoped>
.fixed-top{
    position: fixed;
    left:0;top:0;
    background:#fff;
    border-bottom:1px solid #ccc;
    width: 100%;
    height: 30px;
  }
  .top-head{ 
    display: flex;
    justify-content: left;
    align-items: center;
    text-align: center;
  }
  .back{
    position: absolute;
    width: 20px;
    height:20px;
  }
  .top-xq{
    font-size: 16px;
    line-height: 30px;
    /* margin-left:155px; */
    margin: 0 auto
  }
  .img{
    margin-top:280px;
  }
</style>