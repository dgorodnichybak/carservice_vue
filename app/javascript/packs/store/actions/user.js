import axios from 'axios';

export const login = ({ commit }, payload) => {
  return new Promise((resolve, reject) => {
    commit("LOGIN")
      axios.post('/user/sessions', {
        email: payload.email,
        password: payload.password
      })
    .then(response => {
      localStorage.setItem('currentUser', JSON.stringify(response.data))
        commit("LOGIN_SUCCESS", response.data)
        resolve()
    })
    .catch(e => {
      commit("LOGIN_FAIL", e.response.statusText)
    })
  })
}

export const logout = ({ commit }, payload) => {
  commit("LOGOUT")
    axios.delete('/user/sessions', {
      headers: { Authorization: `Token token=${payload}` }
    })
    .then(response => {
      localStorage.clear('currentUser', JSON.stringify(response.data))
      commit('LOGOUT_SUCCESS')
    })
  .catch(e => {
    commit("LOGOUT_FAIL", e)
  })
}
