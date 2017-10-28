export const LOGIN = (state, payload) => {
  state.pending = true
}

export const LOGIN_SUCCESS = (state, payload) => {
  state.currentUser = payload
    state.isLoggedIn = true
    state.pending = false
}

export const LOGIN_FAIL = (state, payload) => {
  state.errors.push(payload)
}

export const LOGOUT = (state, payload) => {
  state.pending = true
}

export const LOGOUT_SUCCESS = (state, payload) => {
  state.pending = false
  state.isLoggedIn = false
}

export const LOGOUT_FAIL = (state, payload) => {
  state.errors.push(payload)
}

