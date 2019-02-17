import React from 'react';
import { List, Image } from 'semantic-ui-react'

export default function LessonListItem(props) {
  return (
    <List.Item value={props.value} onClick={() => props.handleLessonClick(props.value)}>
      <Image circular centered size='medium' src={props.headerImg} />
      <List.Content>
        <List.Header>{props.name}</List.Header>
        <List.Description>{props.tagline}</List.Description>
      </List.Content>
    </List.Item>
  );
}
