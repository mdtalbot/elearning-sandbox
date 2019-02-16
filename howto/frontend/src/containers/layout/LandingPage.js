import React from 'react';
import NavBar from '../../components/NavBar'
import LessonContainer from './LessonContainer';

export default class LandingPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      userName: '',
      userLogin: '',
      userPassword: '',
      lessons: {}
    };
  }

  componentDidMount() {
    fetch('http://localhost:4000/lessons')
      .then(res => res.json())
      .then(res => this.setState({ lessons: res }))
  }

  render() {
    return (
      <div>
      <NavBar />
      <LessonContainer />
      </div>
    );
  }
}
