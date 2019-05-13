export default (state = { loading: false, lessons: [] }, action) => {
  switch (action.type) {
    case 'LOADING_LESSONS':
      return { ...state, loading: true }
    case 'FETCH_LESSONS':
      return { ...state, lessons: action.payload, loading: false }

    default:
      return state
  }
}
