import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MintUI from 'mint-ui'
import "mint-ui/lib/style.css"
import bus from './bus.js'

Vue.prototype.bus = bus;

Vue.use(MintUI)
import axios from "axios";
// 配置访问服务器基础地址
axios.defaults.baseURL = "http://47.105.189.13:4001" || "http://localhost:4000"
//配置发送请求保存session信息
axios.defaults.withCredentials = true;
//将axios注册vue
Vue.prototype.axios = axios
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
