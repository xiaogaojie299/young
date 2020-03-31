import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Login from '../views/Login.vue'
import Shoplist from '../views/shoplist'
import Reg from '../views/Reg.vue'
import Details from '../views/Product_details.vue'
import Dingdan from '../components/my/dingdan'
import yinsi from '../components/my/yinsi'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'login',
    component: Login
  },
  {
    path: '/index',
    name: 'index',
    component: Index
  },
  { path: '/login', component: Login },
  { path: '/Shoplist', component: Shoplist },
  { path: '/reg', component: Reg },
  { path: '/details/:shop', component: Details },
  { path: '/dingdan/:text', component: Dingdan },
  { path: '/yinsi', component: yinsi },
  // {
  //   path: '/',
  //   name: '',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '')
  // }
]

const router = new VueRouter({
  base: "/",
  mode: "hash",
  // base: process.env.BASE_URL,
  routes
})

export default router
