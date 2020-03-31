<template>
  <ul class="top" @click="check">
      <li>送精选</li>
      <li>送父母</li>
      <li>送朋友</li>
      <li>送老师</li>
    </ul>
</template>

<script>
export default {
  data(){
    return{
      task:""
    }
  },
  created(){
    name='product_life'
   this.axios.get('/classify',{params:{name}}).then(res=>{
        // console.log(res.data)
          name=""
         this.task=res.data
         this.bus.$emit('add',this.task)      
      })  
  },
  methods:{ 
    check(e){
      // console.log(e.target.innerText)
      if(e.target.innerText=='送朋友'){
        var name='product_friend'
      } 
      else if(e.target.innerText=='送父母'){
        var name='product_parent'
      } 
      else if(e.target.innerText=='送精选'){
        var name='product_life'
      } 
      else if(e.target.innerText=='送老师'){
        var name='product_choiceness'
      }else{
        return;
      }   
      this.axios.get('/classify',{params:{name}}).then(res=>{
        // console.log(res.data)
          name=""
         this.task=res.data
         this.bus.$emit('add',this.task)      
      })  
    }
  }
}
</script>

<style scoped>
 ul.top{
   display: flex;
   justify-content: space-around;
   list-style: none;
   padding: 0;
   font-family:cursive;
  }
</style>