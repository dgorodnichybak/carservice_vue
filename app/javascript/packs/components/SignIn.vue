<template>
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-4"></div>
      <div class="col-lg-4">
        <form>
          <div class="form-group">
            {{errors}}
            <label for="exampleInputEmail1">Email address</label>
            <input label="E-mail" v-model="email" class="form-control" required ></input>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input label="Password" v-model="password" class="form-control" required ></input>
          </div>
          <div class="form-check">
            <label class="form-check-label">
              <input type="checkbox" class="form-check-input">
              Check me out
            </label>
          </div>
          <button type="submit" class="btn btn-primary" @click.prevent="login">Submit</button>
        </form>
      </div>
    </div>
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
        if(this.$store.getters.isLoggedIn) {
          this.$router.push("/")
        } else {
          console.log(this.errors)
        }
      })
    }
  },
}
</script>

<style scoped>
.row {
  background-color: #f7f7f7;
  height: 100vh;
}
form {
  background-color: #fff;
  padding: 30px;
  margin-top: 70px;
  border: 1px solid #eee;
  border-radius: 10px;
}
</style>
