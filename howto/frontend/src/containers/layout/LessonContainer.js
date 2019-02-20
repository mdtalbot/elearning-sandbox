import React from 'react';
import WelcomePage from '../../components/WelcomePage'
import LessonPage from '../../components/LessonPage'

export default class LessonContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      lessons: [],
      selectedLesson: {}
    };
  }

  componentDidMount() {
    fetch('http://localhost:4000/lessons')
      .then(res => res.json())
      .then(res => this.setState({ lessons: res }))
  }

  handleLessonClick = (id) => {
    const findLesson = this.state.lessons.find(lesson => lesson.id === id);
    this.setState({ selectedLesson: findLesson });
  }

  // handleLessonClick = (event) => {
  //   this.setState({selectedLesson: event.target.value})
  // }

  // handleInputChange = (event) => {
  //   this.setState({
  //     [event.target.name]: event.target.value,
  //   })
  // }
  // handleSubmit = (event) => {
  //   event.preventDefault();
  // }

  render() {
    console.log(this.state.selectedLesson.length)
    if (Object.getOwnPropertyNames(this.state.selectedLesson).length === 0) {
      return (
        <WelcomePage lessons={this.state.lessons} handleLessonClick={this.handleLessonClick} />
      )
    } else {
      return (
        <LessonPage lesson={this.state.selectedLesson}/>
      )
    }
  }
}
