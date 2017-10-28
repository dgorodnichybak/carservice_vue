<template>
  <router-view></router-view>
</template>

<script>
import Index from './components/Index.vue'
export default {
  components: {
    Index
  },
  data: function () {
    return {}
  },
  actions: { },
  props: { },
  methods: { },
  created: function() {
    if(!this.$store.getters.isLoggedIn){
      this.$router.push("/sign-in")
    }
  }
}
</script>

<style>
</style>
