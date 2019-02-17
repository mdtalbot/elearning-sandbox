import React from 'react';
import Route from 'react-router-dom'

export default function LessonList(props) {
  console.log(props)
  if (props.lessons.length == 0) {
    return (
      <noscript>Placeholder</noscript>
    )
  } else {
    return (
      <List selection verticalAlign='middle' size='big'>
        {props.lessons.map((lesson, index) => <LessonListItem key={index} name={lesson.name} headerImg={lesson.headerImg} tagline={lesson.tagline} handleLessonClick={props.handleLessonClick} />
        )}
      </List>
    )
  }
}
