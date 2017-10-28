<template>
  <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Car Service</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Features</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
      </ul>
      <span class="navbar-text">
        <a href='#' class="btn btn-primary" @click="logout">Logout</a>
      </span>
    </div>
  </nav>
</template>
<script>
export default {
  name: 'TopHeader',

  methods: {
    logout() {
      this.$store.dispatch('logout', this.$store.getters.currentUser.token).then(() => {
        this.$router.push("/sign-in")
      })
    }
  }
}
</script>
<style scoped>
</style>
