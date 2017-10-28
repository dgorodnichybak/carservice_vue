<template>
  <span>
    Index
    <a href="#" @click='increment'>Boo!</a>
  </span>
</template>

<script>

import { mapGetters, mapActions, mapMutations } from 'vuex'

export default {
  name: 'Index',
  data: function () {
    return { }
  },
  methods: {
    ...mapActions([
      'increment'
    ])
  },

}
</script>
