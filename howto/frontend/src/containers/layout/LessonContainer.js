import React from 'react';
import PropTypes from 'prop-types';
import NJvTLO from '../../components/NJvTLO'

const propTypes = {};

const defaultProps = {};

export default class LessonContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <NJvTLO />
    );
  }
}

 LessonContainer.propTypes = propTypes;
 LessonContainer.defaultProps = defaultProps;
