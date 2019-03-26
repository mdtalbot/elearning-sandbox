import React from 'react';
import { List, Image } from 'semantic-ui-react'
import { Link } from 'react-router-dom'

export default function LessonListItem(props) {
  // const SemanticLink = () => (<Link  />)
  return (
    <Link to={`/lessons/${props.id}`} className="item">
      <Image circular centered size='tiny' src={props.headerImg} />
      <List.Content>
        <List.Header>{props.name}</List.Header>
        <List.Description>{props.tagline}</List.Description>
      </List.Content>
    </Link>
  );
}
