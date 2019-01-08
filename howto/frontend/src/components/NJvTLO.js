import React from 'react';
import PropTypes from 'prop-types';
import {Header, Image, Container, Divider} from 'semantic-ui-react'

const propTypes = {};

const defaultProps = {};

export default class NJvTLO extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <div>
        <Image size='medium' src='https://www.uscourts.gov/sites/default/files/styles/callout/public/tlo_podcast_large.jpg?itok=yWRr1Brq' circular centered />
      <Header size='huge' textAlign='center'>
          <Header.Content>New Jersey v. T.L.O.</Header.Content>
          <Header.Subheader>Should teachers be allowed to search student lockers?</Header.Subheader>
      </Header>

      </div>
    );
  }
}

 NJvTLO.propTypes = propTypes;
 NJvTLO.defaultProps = defaultProps;
