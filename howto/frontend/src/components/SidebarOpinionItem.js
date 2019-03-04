import React from 'react';
import { Icon, List } from 'semantic-ui-react'

export default function SidebarOpinionItem(props) {
  return (
    <List.Item as='a' href={props.link_url}
      target='popup'>
      <Icon name='comment alternate outline' />
      <List.Content>
        <List.Header>{props.header_text}</List.Header>
        <List.Description>
          {props.desc_text}
        </List.Description>
      </List.Content>
    </List.Item>
  );
}

