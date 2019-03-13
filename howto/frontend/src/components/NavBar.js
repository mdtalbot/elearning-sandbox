import React, { Component } from 'react'
import { Menu, Button } from 'semantic-ui-react'
import { NavLink, withRouter } from 'react-router-dom'

class NavBar extends Component {
  state = {}

  handleItemClick = (e, { name }) => this.setState({ activeItem: name })

  render() {
    const { activeItem } = this.state

    return (
      <Menu>
        <Menu.Item
          as={NavLink} exact
          to='/'
          name='Home'
          active={activeItem === 'home'}
          onClick={this.handleItemClick}
        >
          Home
        </Menu.Item>

        <Menu.Item name='userGrades' active={activeItem === 'userGrades'} onClick={this.handleItemClick}>
          My Grades
        </Menu.Item>

        <Menu.Item
          name='userProfile'
          active={activeItem === 'userProfile'}
          onClick={this.handleItemClick}
        >
          My Profile
        </Menu.Item>
        <Menu.Item position='right' as={NavLink} to="/login">
            Log in
        </Menu.Item>
          <Menu.Item as={NavLink} to="/signup" >
            Sign Up
        </Menu.Item>
        </Menu>
    )
  }
}

export default withRouter(NavBar)
