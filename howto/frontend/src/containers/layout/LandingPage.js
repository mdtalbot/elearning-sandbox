import React from 'react';
import NavBar from '../../components/NavBar'

export default class LandingPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      userName: '',
      userLogin: '',
      userPassword: ''
    };
  }

  render() {
    return (
      <NavBar />

    );
  }
}
