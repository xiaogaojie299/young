<template>
  <div >
   <div class="head"><img @click="back" class="back" src="../assets/tubiao/back.png" alt=""><span>商品列表</span></div> 
      <div @click="shop(p)" class="foot" v-for="(p,i) of details" :key=i>
        <div class="img"><img :src="p.pic" alt=""></div>
        <div class="content">
          <span class="title">{{p.title}}</span>
          <span class="sales">销量：{{p.sales}}</span>
          <span class="price">￥{{p.price}}</span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      details:""
    }
  },
  created(){
    this.axios.get('/new').then(res=>{
     
     this.details=res.data
    })
  },
  methods:{
    back(){
      this.$router.go(-1)
    },
    shop(p){
        var shop=p.title 
        this.$router.push({path:`/details/${shop}`})  
    }
  },
}
</script>
<style scoped>
  .head{
    text-align: center;
    margin:0;
    padding:10px 0;
    font-size: 18px;
    font-weight:800;
    border-bottom: 1px solid #ccc;
  }
  .back{
    float: left;
    width:20px;
    height:20px;
  } 
  .foot{
    display: flex;
    flex-flow: row;
    padding: 8px;
    font-size: 18px;
    border-bottom: 1px solid #ccc;
    font-family:cursive
  }
  .foot .img{
    width:110px;
    height:80px; 
  }
  .foot img{
    width:100%;
    height:80px;
    border-radius: 5px;
  }
  .foot .content{
    display: flex;
    flex-flow:row; 
    flex-direction:column;
    justify-content:space-around;
    padding-left:20px; 
  }
  .price{
   text-align:left;
    color:red;
  }
</style>