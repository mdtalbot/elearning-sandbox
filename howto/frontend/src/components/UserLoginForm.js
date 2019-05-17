import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { authenticate } from '../actions/authActions';
import { Form } from 'semantic-ui-react'

class UserLoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: ''
    };
  }

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState({
      [name]: value
    });
  }

  handleLogin = (event) => {
    event.preventDefault();
    if (this.props.authenticate(this.state)) {
      this.props.history.push('/lessons')
    } else {
      window.alert("Sorry, something went wrong. Please try logging in again.")
    }
  }

  render() {
    return (
      <Form onSubmit={this.handleLogin}>
        <Form.Input focus label='E-mail' name="email" id='email' type="email"
          onChange={this.handleChange} value={this.state.email}
        />
        <Form.Input focus label='Password' type='password' name='password' id='password'
          onChange={this.handleChange} value={this.state.password}
        />
        <Form.Button type='submit'>Log In</Form.Button>
      </Form>
    );
  }
}

export default UserLoginForm = withRouter(connect(null, { authenticate })(UserLoginForm));
