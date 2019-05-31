import { combineReducers } from 'redux';
import lessonReducer from './lessonReducer'
import authReducer from './authReducer';
import responseReducer from './responseReducer'


export default combineReducers({ lessons: lessonReducer, auth: authReducer, responses: responseReducer })
