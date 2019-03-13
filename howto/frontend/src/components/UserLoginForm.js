import React from 'react';
import { Form } from 'semantic-ui-react'

const propTypes = {};

const defaultProps = {};

export default class UserLoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <Form>
        <Form.Input focus label='Username' />
        <Form.Input focus label='Password' type='password' />
        <Form.Button>Submit</Form.Button>
      </Form>
    );
  }
}

 UserLoginForm.propTypes = propTypes;
 UserLoginForm.defaultProps = defaultProps;
