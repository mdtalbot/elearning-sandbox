import React from 'react';
import LessonContainer from './LessonContainer';

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
      <div>
      <LessonContainer />
      </div>
    );
  }
}
