import React from 'react';
import WelcomePage from '../../components/WelcomePage'
import LessonPage from '../../components/LessonPage'

export default class LessonContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      lessons: {},
      selectedLesson: {}
    };
  }

  componentDidMount() {
    fetch('http://localhost:4000/lessons')
      .then(res => res.json())
      .then(res => this.setState({ lessons: res }))
  }

  // handleInputChange = (event) => {
  //   this.setState({
  //     [event.target.name]: event.target.value,
  //   })
  // }
  // handleSubmit = (event) => {
  //   event.preventDefault();
  // }

  render() {
    if (!this.state.selectedLesson.length) {
      return (
        <WelcomePage />
      )
    } else {
      return (
        <LessonPage />
      )
    }
  }
}
