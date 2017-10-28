import Vue from 'vue'
import VueRouter from 'vue-router'
import App from '../packs/app.vue'
import Index from '../packs/components/Index.vue'
import SignIn from '../packs/components/SignIn.vue'
import store from '../packs/store/index.js'

document.addEventListener('DOMContentLoaded', () => {

  Vue.use(VueRouter)

  const routes = [
    { path:  '/', component: Index },
    { path: '/sign-in', component: SignIn }
  ]

  const router = new VueRouter({
    mode: 'history',
    routes
  })

  console.log(store)
  const app = new Vue({
    el: '#app',
    router,
    store,
    template: '<App/>',
    render: h => h(App)
  })


    console.log(app)
})
