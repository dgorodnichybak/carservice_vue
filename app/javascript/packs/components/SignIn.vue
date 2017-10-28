<template>
  <div>
  <input label="E-mail" v-model="email" required ></input>
  <input label="Password" v-model="password" required ></input>
  <a @click="login">Log In</a>
  </div>
</template>

<script>
import { mapGetters, mapActions, mapMutations } from 'vuex'

export default {
  name: 'SignIn',
  data: function () {
    return {
      email: '',
      password: '',
      errors: null,
    }
  },
  methods: {
    login() {
      this.$store.dispatch('login', {
        email: this.email,
        password: this.password
      }).then(() => {
      this.$router.push("/")
    }).catch(e => {
      console.log(e)
    })
    }
  },
}
</script>

<style scoped>
</style>
