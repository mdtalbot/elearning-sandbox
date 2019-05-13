import { combineReducers } from 'redux';
import lessonReducer from './lessonReducer'
import authReducer from './authReducer';

export default combineReducers({ puzzles: lessonReducer, auth: authReducer })
