import React from 'react';
import { List, Image } from 'semantic-ui-react'

export default function LessonListItem(props) {
  return (
    <List.Item id={props.id} onClick={() => props.handleLessonClick(props.id)}>
      <Image circular centered size='tiny' src={props.headerImg} />
      <List.Content>
        <List.Header>{props.name}</List.Header>
        <List.Description>{props.tagline}</List.Description>
      </List.Content>
    </List.Item>
  );
}
