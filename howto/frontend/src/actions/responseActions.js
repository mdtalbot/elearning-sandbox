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

export function createResponse(responseInfo) {
  return dispatch => {
    return fetch(`${API_URL}/responses`, {
      method: 'POST',
      body: JSON.stringify({ response: responseInfo }),
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      }
    })
      .then(resp => resp.json())
      .then(jresp => {
        dispatch({
          type: 'CREATE_RESPONSE',
          payload: jresp
        })
      })
      .catch((errors) => {
        console.log(errors)
      })
  }
}
