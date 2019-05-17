
import fetch from 'isomorphic-fetch';

const API_URL = "http://localhost:3000"

export function fetchLessons() {
  return (dispatch) => {
    dispatch({ type: 'LOADING_Lessons' })
    return fetch(`${API_URL}/lessons.json`)
      .then(response => response.json())
      .then(lessons => dispatch({ type: 'FETCH_LESSONS', payload: lessons }));
  }
}

export function getLesson(id) {
  return dispatch => {
    dispatch({ type: 'GET_LESSON', payload: id })
  }
}
