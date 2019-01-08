import React from 'react';
import { Grid, Header, Container } from 'semantic-ui-react'

export default class LandingPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      userName: '',
      userLogin: '',
      userPassword: ''
    };
  }

  render() {
    return (
      <div>
      <div>
        <Header>

        </Header>
      </div>
    </div>

    );
  }
}

 LandingPage.propTypes = propTypes;
 LandingPage.defaultProps = defaultProps;
