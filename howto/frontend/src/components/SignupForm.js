import React from 'react';
import { Button, Checkbox, Form, FormField, FormInput } from 'semantic-ui-react'


export default class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      login_name: '',
      first_name: '',
      last_name: '',
      email: '',
      password: ''
    };
  }

  render() {
    return (
      <Form>
        <Form.Field>
          <label>Login</label>
          <Input placeholder='Enter the login name that you would like to use with this account.' />
        </Form.Field>
        <Form.Field>
          <label>First name</label>
          <Input placeholder='Enter your first name.' />
        </Form.Field>
        <Form.Field>
          <label>Last name</label>
          <Input placeholder='Enter your last name.' />
        </Form.Field>
        <Form.Field>
          <label>Password</label>
          <Input type='password' placeholder='Enter a password.' />
        </Form.Field>
        <Form.Field>
          
        </Form.Field>
      </Form>
    );
  }
}
