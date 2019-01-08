import React, { Component } from 'react';
import { Switch, Route, Redirect } from 'react-router-dom';
import logo from './logo.svg';
import './App.css';
import LandingPage from '../src/containers/layout/LandingPage'


class App extends Component {
  render() {
    return (
      <div className="App">
        <LandingPage />
      </div>
    );
  }
}

export default App;
