export default (state = { loading: false, responses: [] }, action) => {
  switch (action.type) {
    case 'LOADING_RESPONSES':
      return { ...state, loading: true }
    case 'FETCH_RESPONSES':
      return { ...state, responses: action.payload, loading: false }
    case 'CREATE_RESPONSE':
      return { ...state, responses: state.responses.concat(action.payload) }
    default:
      return state
  }
}
