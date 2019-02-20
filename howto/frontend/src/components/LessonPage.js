import React from 'react';
import { Header, Segment, Image, Container, List, Grid } from 'semantic-ui-react'
import LessonSidebar from './LessonSidebar'
import LessonText from './LessonText'

export default class LessonPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <div>
        <div className="lesson-header">
          <Image size='small' src={this.props.lesson.header_img_url} circular centered />
          <Header size='huge' textAlign='center'>
            <Header.Content>{this.props.lesson.name}</Header.Content>
            <Header.Subheader>{this.props.lesson.page_tagline}</Header.Subheader>
          </Header>
        </div>

        <LessonSidebar facts={this.props.lesson.lesson_vital_facts} opinions={this.props.lesson.opinions} oralArgs={this.props.lesson.oral_args} />

        <LessonText text={this.props.lesson.lesson_texts} />

      </div>
    );
  }
}


