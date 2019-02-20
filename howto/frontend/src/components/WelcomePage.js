import React from 'react';
import LessonList from './LessonList'


export default class WelcomePage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <LessonList lessons={this.props.lessons} handleLessonClick={this.props.handleLessonClick}/>
    );
  }
}

