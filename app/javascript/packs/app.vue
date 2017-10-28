<template>
  <span>
    <top-header v-if="isLoggedIn"></top-header>
    <router-view></router-view>
  </span>
</template>

<script>
import Index from './components/Index.vue'
import TopHeader from './components/TopHeader.vue'
export default {
  components: {
    Index,
    TopHeader
  },
  data: function () {
    return { }
  },
  actions: { },
  props: { },
  methods: { },
  computed: {
    isLoggedIn: function() {
      return this.$store.getters.isLoggedIn
    }
  },
  created: function() {
    if(!this.isLoggedIn){
      this.$router.push("/sign-in")
    }
  }
}
</script>

<style scoped>
</style>
