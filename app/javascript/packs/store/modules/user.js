const LOGIN = "LOGIN";
const LOGIN_SUCCESS = "LOGIN_SUCCESS";
const LOGIN_FAIL = "LOGIN_FAIL";
const LOGOUT = "LOGOUT";

import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios';

Vue.use(Vuex)

const state = {
  isLoggedIn: !!localStorage.getItem("currentUser"),
  currentUser: JSON.parse(localStorage.getItem("currentUser")),
  errors: []
}

const mutations = {

  [LOGIN] (state, payload) {
    state.pending = true
  },

  [LOGIN_SUCCESS] (state, payload) {
    state.currentUser = payload
    state.pending = false
  },

  [LOGIN_FAIL] (state, payload) {
    state.errors.push(payload)
  }
}

const actions = {

  login ({ commit }, payload) {
    commit(LOGIN)
    axios.post('/user/sessions', {
      email: payload.email,
      password: payload.password
    })
    .then(response => {
      localStorage.setItem('currentUser', JSON.stringify(response.data))
      commit(LOGIN_SUCCESS, response.data)
    })
    .catch(e => {
      commit(LOGIN_FAIL, e)
    })
  },
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
