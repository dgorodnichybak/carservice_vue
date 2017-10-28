import Vue from 'vue'
import Vuex from 'vuex'
import * as mutations from '../../store/mutations/user'
import * as actions from '../../store/actions/user'

Vue.use(Vuex)

const state = {
  isLoggedIn: !!localStorage.getItem("currentUser"),
  currentUser: JSON.parse(localStorage.getItem("currentUser")),
  errors: []
}


const getters = {
  isLoggedIn: (state, getters) => {
    return state.isLoggedIn
  },

  currentUser: (state, getters) => {
    return state.currentUser
  }
}

export default {
  state,
  getters,
  actions,
  mutations
}
