import React from 'react';
import { Button, Checkbox, Form, FormField, FormInput } from 'semantic-ui-react'


export default class UserSignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      login_name: '',
      first_name: '',
      last_name: '',
      email: '',
      password: '',
      is_teacher: false
    };
  }

  render() {
    return (
      <Form>
        <Form.Field>
          <label>Login</label>
          <Form.Input placeholder='Enter the login name that you would like to use with this account.' />
        </Form.Field>
        <Form.Field>
          <label>First name</label>
          <Form.Input placeholder='Enter your first name.' />
        </Form.Field>
        <Form.Field>
          <label>Last name</label>
          <Form.Input placeholder='Enter your last name.' />
        </Form.Field>
        <Form.Field>
          <label>Password</label>
          <Form.Input type='password' placeholder='Enter a password.' />
        </Form.Field>
        <Form.Field>
          <label>Re-enter password</label>
          <Form.Input type='password' placeholder='Re-enter your password.' />
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
      </Form>
    );
  }
}
