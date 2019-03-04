import React from 'react';
import { Header, Image, Grid, Form } from 'semantic-ui-react'
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

        <div className='answer-form'>
          <Header textAlign='center'>Questions to Consider</Header>
          <br />
          <Grid centered container columns={2}>
            <Grid.Column>
              <Grid.Row>
                <Form name="answer-input" onSubmit={this.handleSubmit}>
                  <Form.TextArea className='answer-box' name='answerOne'
                    value={this.state.answerOne} onChange={this.handleInputChange} style={{ minHeight: 150, maxHeight: 150 }} label="The Supreme Court of the United States has made decisions that give students fewer rights than adults would have in other settings. How do you think the Court justifies doing so?" >
                  </Form.TextArea>
                  <Form.Button>Submit</Form.Button>
                </Form>
              </Grid.Row>
              <br />
              <Grid.Row>
                <Form name="answer-input" onSubmit={this.handleSubmit}>
                  <Form.TextArea className='answer-box' name='answerThree'
                    value={this.state.answerOne} onChange={this.handleInputChange} style={{ minHeight: 150, maxHeight: 150 }} label="While the Constitution doesn't mention a right to privacy, courts have repeatedly held that such a right exists. Do students and adults have the same right to privacy?" >
                  </Form.TextArea>
                  <Form.Button>Submit</Form.Button>
                </Form>
              </Grid.Row>
            </Grid.Column>
            <Grid.Column>
              <Grid.Row><Form name="answer-input" onSubmit={this.handleSubmit} >
                <Form.TextArea className='answer-box' name='answerTwo'
                  value={this.state.answerTwo} onChange={this.handleInputChange} style={{ minHeight: 150, maxHeight: 150 }} label="In a nonschool setting, are children's rights restricted in the same way that they are in a school setting? Why do you think this is the case?" >
                </Form.TextArea>
                <Form.Button>Submit</Form.Button>
              </Form>
              </Grid.Row>
              <br />
              <Grid.Row>
                <Form name="answer-input" onSubmit={this.handleSubmit}>
                  <Form.TextArea className='answer-box' name='answerFour'
                    value={this.state.answerOne} onChange={this.handleInputChange} style={{ minHeight: 150, maxHeight: 150 }} label="The Supreme Court of the United States has made decisions that give students fewer rights than adults would have in other settings. How do you think the Court justifies doing so?" >
                  </Form.TextArea>
                  <Form.Button>Submit</Form.Button>
                </Form>
              </Grid.Row>
            </Grid.Column>
          </Grid>
        </div>
      </div>
    );
  }
}


