import React, { Component } from 'react'
import { Menu, Button } from 'semantic-ui-react'

export default class NavBar extends Component {
  state = {}

  handleItemClick = (e, { name }) => this.setState({ activeItem: name })

  render() {
    const { activeItem } = this.state

    return (
      <Menu>
        <Menu.Item
          name='editorials'
          active={activeItem === 'editorials'}
          onClick={this.handleItemClick}
        >
          Home
        </Menu.Item>

        <Menu.Item name='reviews' active={activeItem === 'reviews'} onClick={this.handleItemClick}>
          My Grades
        </Menu.Item>

        <Menu.Item
          name='upcomingEvents'
          active={activeItem === 'upcomingEvents'}
          onClick={this.handleItemClick}
        >
          My Profile
        </Menu.Item>
        <Menu.Item position='right'>
          <Button as='a' >
            Log in
                  </Button>
          <Button as='a' style={{ marginLeft: '0.5em' }}>
            Sign Up
                  </Button>
        </Menu.Item>
        </Menu>
    )
  }
}
