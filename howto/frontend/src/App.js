import React, { Component } from 'react';
import LandingPage from '../src/containers/layout/LandingPage'
import NavBar from './components/NavBar'
import 'semantic-ui-css/semantic.min.css';
import './App.css'

class App extends Component {
  render() {
    return (
      <div className="App">
        <NavBar />
        <LandingPage />
      </div>
    );
  }
}

export default App;
