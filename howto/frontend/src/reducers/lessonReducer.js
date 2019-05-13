
export default (state = { loading: false, lessons: [] }, action) => {
  switch (action.type) {
    case 'LOADING_PUZZLES':
      return { ...state, loading: true }
    case 'FETCH_PUZZLES':
      return { ...state, lessons: action.payload, loading: false }

    default:
      return state
  }
}
