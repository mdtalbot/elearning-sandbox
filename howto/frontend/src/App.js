import React, { Component } from 'react';
import LandingPage from '../src/containers/layout/LandingPage'
import 'semantic-ui-css/semantic.min.css';

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
