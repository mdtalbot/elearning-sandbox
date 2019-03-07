import React from 'react';
import { Form } from 'semantic-ui-react'

export default class NewUserForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <Form>
        <Form.Group widths='equal'>
          <Form.Input focus fluid label='Username' placeholder='Please enter your desired username' />
          <Form.Input focus fluid label='E-mail' placeholder='E-mail address' />
          <Form.Input focus fluid label="Class ID" placeholder='The ID number or name of your section' />
        </Form.Group>
        <Form.Group widths='equal'>
          <Form.Input focus fluid type='password' label='Password' placeholder='Choose a password' />
          <Form.Input focus fluid type='password' label='Verify Password' placeholder='Please re-enter your password' />
        </Form.Group>
        <Form.Group widths='equal'>
          <Form.Input focus fluid label='First name' placeholder='First name' />
          <Form.Input focus fluid label='Last name' placeholder='Last name' />
        </Form.Group>
        <Form.Group inline>
          <label>I am a...</label>
          <Form.Radio
            label='Student'
            value='student'
            checked={value === 'student'}
            onChange={this.handleChange}
          />
          <Form.Radio
            label='Teacher'
            value='teacher'
            checked={value === 'teacher'}
            onChange={this.handleChange}
          />
        </Form.Group>
        <Form.Checkbox label='I agree to the Terms and Conditions' />
        <Form.Button>Submit</Form.Button>
      </Form>
    );
  }
}

 NewUserForm.propTypes = propTypes;
 NewUserForm.defaultProps = defaultProps;
