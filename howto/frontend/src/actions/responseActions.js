import fetch from 'isomorphic-fetch';

const API_URL = "http://localhost:3000"

export function fetchResponses() {
  return (dispatch) => {
    dispatch({ type: 'LOADING_RESPONSES' })
    return fetch(`${API_URL}/responses.json`)
      .then(response => response.json())
      .then(puzzles => dispatch({ type: 'FETCH_RESPONSES', payload: RESPONSES }));
  }
}

export function getResponse(id) {
  return dispatch => {
    dispatch({ type: 'GET_RESPONSE', payload: response })
  }
}
