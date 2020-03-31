<template>
  <div>
  <ul>
    <li @click="skip">
      <img src='../../assets/tubiao/xinpinzhuanqu.png' alt="1">
      <span>新品专区</span> 
    </li>
    <li @click="skip">
      <img src='../../assets/tubiao/热销.png' alt="2">
      <span>热销鲜花</span> 
    </li>
    <li @click="skip">
      <img src='../../assets/tubiao/礼盒.png' alt="3">
      <span>精选礼盒</span> 
    </li>
    <li @click="skip">
      <img src='../../assets/tubiao/xianhua.png' alt="4">
      <span>生活鲜花</span> 
    </li>
  </ul>
  </div>
  
</template>
<script>
export default {
  data(){
    return{

    }
  },
  methods:{
    skip(e){
      this.$router.push('./shoplist')
      // console.log(e.target.innerText)
      // this.bus.$on('transfer',this.add.bind(this))    
    },
  },
  
}
</script>

<style scoped>
  ul{
    display: flex;
    justify-content: space-around;
    align-items: center;
    list-style: none;
    padding:0;
    font-size:12px;
  }
  ul>li{
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center
  }
  img{
    width:32px;
    height:32px;
  }
</style>
