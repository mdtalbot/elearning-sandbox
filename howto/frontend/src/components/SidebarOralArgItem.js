import React from 'react';
import { List, Icon } from 'semantic-ui-react'

export default function SidebarOralArgItem(props) {
  return (
    <List.Item as='a' href={props.linkUrl}
      target='popup'>
      <Icon name='headphones' />
      <List.Content>
        <List.Header>{props.header}</List.Header>
        <List.Description>
          <div dangerouslySetInnerHTML={{ __html: props.description }} />
          <br></br>
          {/* {props.description} */}
        </List.Description>
      </List.Content>
      </List.Item>
  );
}

