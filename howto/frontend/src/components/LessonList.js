import React from 'react';
import { List } from 'semantic-ui-react'
import LessonListItem from './LessonListItem'

export default function LessonList(props) {
  console.log(props)
  // if (props.lessons.length === 0) {
  //   return (
  //     <noscript>Placeholder</noscript>
  //   )
  // } else {
    return (
      <List selection verticalAlign='middle' size='big'>
        {props.lessons.map((lesson, index) => <LessonListItem key={index} name={lesson.name} headerImg={lesson.header_img_url} tagline={lesson.front_tagline} id={lesson.id} handleLessonClick={props.handleLessonClick} />
        )}
      </List>
    )
  // }
}
