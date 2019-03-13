import React, { Component } from 'react';
import LandingPage from '../src/containers/layout/LandingPage'
import UserLoginForm from '../src/components/UserLoginForm'
import UserSignupForm from '../src/components/UserSignupForm'
import NavBar from './components/NavBar'
import { Route, BrowserRouter as Router } from 'react-router-dom'
import 'semantic-ui-css/semantic.min.css';
import './App.css'

class App extends Component {
  render() {
    return (
      <Router>
      <div className="App">
        <NavBar />

        <Route exact path="/" component={LandingPage} />
        <Route exact path="/login" component={UserLoginForm} />
        <Route exact path="/signup" component={UserSignupForm} />
      </div>
      </Router>
    );
  }
}

export default App;
