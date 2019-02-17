import React from 'react';
import PropTypes from 'prop-types';
import NJvTLO from '../../components/NJvTLO'

const propTypes = {};

const defaultProps = {};

export default class LessonContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedLesson: {}
    };
  }

  handleInputChange = (event) => {
    this.setState({
      [event.target.name]: event.target.value,
    })
  }
  handleSubmit = (event) => {
    event.preventDefault();
  }

  render() {
    return (
      'Test string!'
    );
  }
}

 LessonContainer.propTypes = propTypes;
 LessonContainer.defaultProps = defaultProps;
