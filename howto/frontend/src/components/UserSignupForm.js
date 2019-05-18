import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { signup } from '../actions/authActions';
import { Button, Checkbox, Form } from 'semantic-ui-react'


class UserSignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      login_name: '',
      first_name: '',
      last_name: '',
      email: '',
      password: '',
      password_verify: '',
      is_teacher: false
    };
  }

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState({
      [name]: value
    });
  }

  handleSignup = (event) => {
    event.preventDefault();
    if (this.props.signup(this.state)) {
      this.props.history.push('/lessons')
    } else {
      window.alert("Sorry, something went wrong. Please try signing up again.")
    }
  }

  render() {
    return (
      <Form onSubmit={this.handleSignup}>
        <Form.Field>
          <label>Login</label>
          <Form.Input name='username' id='username' type='text' value={this.state.login_name} onChange={this.handleChange} placeholder='Enter the login name that you would like to use with this account.' />
        </Form.Field>
        <Form.Field>
          <label>First name</label>
          <Form.Input name='first_name' id='first_name' type='text' value={this.state.first_name} onChange={this.handleChange} placeholder='Enter your first name.' />
        </Form.Field>
        <Form.Field>
          <label>Last name</label>
          <Form.Input name='last_name' id='last_name' type='text' value={this.state.last_name} onChange={this.handleChange} placeholder='Enter your last name.' />
        </Form.Field>
        <Form.Field>
          <label>Password</label>
          <Form.Input type='password' name='password' id='password' value={this.state.password} onChange={this.handleChange} placeholder='Enter a password.' />
        </Form.Field>
        <Form.Field>
          <label>Re-enter password</label>
          <Form.Input type='password' name='password_verify' id='password_verify' value={this.state.password_verify} onChange={this.handleChange} placeholder='Re-enter your password.' />
        </Form.Field>
        I am a:
        <Form.Field>
          <Checkbox
            radio
            label='Student'
            name='checkboxRadioGroup'
            value='student'
            checked={this.state.is_teacher === false }
            onChange={this.handleChange}
          />
        </Form.Field>
        <Form.Field>
          <Checkbox
            radio
            label='Teacher'
            name='checkboxRadioGroup'
            value='teacher'
            checked={this.state.is_teacher === true }
            onChange={this.handleChange}
          />
        </Form.Field>
        <Button type='submit'>Create Account</Button>
      </Form>
    );
  }
}
export default UserSignupForm = withRouter(connect(null, { signup })(UserSignupForm));
