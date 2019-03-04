import React from 'react';
import { List, Icon } from 'semantic-ui-react'

export default function SidebarOralArgItem(props) {
  return (
    <List.Item as='a' href={props.link_url}
      target='popup'>
      <Icon name='headphones' />
      <List.Content>
        <List.Header>{props.header_text}</List.Header>
        <List.Description>
          {props.desc_text}
        </List.Description>
      </List.Content>
    </List.Item>
  );
}

