import React from 'react';
import PropTypes from 'prop-types';
import NewWindow from 'react-new-window'
import {Header, Icon, Menu, Sidebar, Segment, Image, Container, Divider, List, Input, Grid, Form, TextArea} from 'semantic-ui-react'

const propTypes = {};

const defaultProps = {};

export default class NJvTLO extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      answerOne: '',
      answerTwo: '',
      answerThree: '',
      answerFour: ''
    };
  }

  handleInputChange = (event) => {
    this.setState({
      [event.target.name]: event.target.value,
    })
  }
  handleSubmit = (event) => {
    event.preventDefault();
  }

  render() {
    return (
      <div>
        <div className="lesson-header">
          <Image size='small' src='https://www.uscourts.gov/sites/default/files/styles/callout/public/tlo_podcast_large.jpg?itok=yWRr1Brq' circular centered />
          <Header size='huge' textAlign='center'>
          <Header.Content>New Jersey v. T.L.O.</Header.Content>
          <Header.Subheader>Should teachers be allowed to search student lockers?</Header.Subheader>
          </Header>

        </div>
        <div className="lesson-sidebar">
          <Segment vertical floated='left'>  <List>
            <Header textAlign='center'>Vital Information</Header>
            <List.Item>
              <Icon name='calendar alternate outline' />
              <List.Content>
                <List.Header>Decided On</List.Header>
                <List.Description>
                January 15. 1985
              </List.Description>
              </List.Content>
            </List.Item>
            <br />
            <List.Item>
              <Icon name='gavel' />
              <List.Content>
                <List.Header>Decision</List.Header>
                <List.Description>
                  6-3 in favor of the State of New Jersey
              </List.Description>
              </List.Content>
            </List.Item>
            <br />
            <List.Item>
              <Icon name='balance scale' />
              <List.Content>
                <List.Header>Decided By</List.Header>
                <List.Description>
                  Chief Justice <a href='https://en.wikipedia.org/wiki/Warren_E._Burger'>Warren Burger</a> (concurring)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/Byron_White'>Byron White</a> (majority opinion)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/Thurgood_Marshall'>Thurgood Marshall</a> (dissenting)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/Harry_Blackmun'>Harry Blackmun</a> (concurring)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/Lewis_F._Powell_Jr.'>Lewis F. Powell, Jr.</a> (concurring)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/William_Rehnquist'>William Rehnquist</a> (concurring)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/John_Paul_Stevens'>John Paul Stevens</a> (dissenting)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/William_J._Brennan_Jr.'>William J. Brennan, Jr.</a> (dissenting)
                  <br />
                  Justice <a href='https://en.wikipedia.org/wiki/Sandra_Day_O%27Connor'>Sandra Day O'Connor</a> (concurring)
              </List.Description>
              </List.Content>
            </List.Item>
            <br />
            <List.Item>
              <Icon name='bullhorn' />
              <List.Content>
                <List.Header>Argued By</List.Header>
                <List.Description>
                  Allan J. Nodes (for New Jersey)
                  <br />
                  Lois de Julio (for T.L.O.)
              </List.Description>
              </List.Content>
            </List.Item>
            <Header textAlign='center'>Useful Links</Header>
            <List.Item as='a' href='https://apps.oyez.org/player/#/burger8/oral_argument_audio/18116'
              target='popup'>
              <Icon name='headphones' />
              <List.Content>
                <List.Header>Oral Arguments - March 28, 1984</List.Header>
                <List.Description>
                  Audio and transcript courtesy of
                   <a href="http://www.oyez.org"> oyez.org</a>. Opens in a new window.
              </List.Description>
              </List.Content>
            </List.Item>
            <br />
            <List.Item as='a' href='https://apps.oyez.org/player/#/burger8/oral_argument_audio/23720'
            target='popup'>
              <Icon name='headphones' />
              <List.Content>
                <List.Header>Oral Rearguments - October 2, 1984</List.Header>
                <List.Description>
                  Audio only. Courtesy of
                   <a href="http://www.oyez.org"> oyez.org</a>. Opens in a new window.
              </List.Description>
              </List.Content>
            </List.Item>
            <br />
            <List.Item as='a' href='https://www.law.cornell.edu/supremecourt/text/469/325#writing-USSC_CR_0469_0325_ZO'
              target='popup'>
              <Icon name='comment alternate outline' />
              <List.Content>
                <List.Header>Text of the Majority Opinion</List.Header>
                <List.Description>
                Authored by Justice White and concurred with by Chief Justice Burger alongside Justices Blackmun, O'Connor, Powell, and Rehnquist. Text courtesy of Cornell Law School.
              </List.Description>
              </List.Content>
            </List.Item>
            <br />
            <List.Item as='a' href='https://www.law.cornell.edu/supremecourt/text/469/325#writing-USSC_CR_0469_0325_ZX'
              target='popup'>
              <Icon name='comment alternate outline' />
              <List.Content>
                <List.Header>Text of Marshall's Opinion</List.Header>
                <List.Description>
                  Authored by Justice Thurgood Marshall in partial dissent with the majority decision. Courtesy of Cornell Law School.
              </List.Description>
              </List.Content>
            </List.Item>
            <br />
            <List.Item as='a' href='https://www.law.cornell.edu/supremecourt/text/469/325#writing-USSC_CR_0469_0325_ZX1'
              target='popup'>
              <Icon name='comment alternate outline' />
              <List.Content>
                <List.Header>Text of Stevens' Opinion</List.Header>
                <List.Description>
                  Authored by Justice John Paul Stevens in partial dissent with the majority decision. Courtesy of Cornell Law School.
              </List.Description>
              </List.Content>
            </List.Item>
          </List>
          </Segment>
          </div>
        <div className="text-container">
          <Container text>
            In 1980, a teacher at Piscataway High School in New Jersey found two girls smoking in a restroom. At the school, smoking in the restrooms was a violation of school rules; smoking was allowed only in the designated smoking area. The teacher escorted the two girls to the principal's office, where they met with an assistant vice principal, Theodore Choplick. One of the girls was <div className='tooltip'>T.L.O.,<span className='tooltiptext'>T.L.O. was referred to in official documentation by her initials due to the fact that she was a minor at the time the case was being tried. Her full name was later revealed to be Tracy Lois Odem.</span></div> a freshman who was 14 years old. The girl who was with T.L.O. admitted that she had been smoking; T.L.O., however, denied the allegation, and said that she did not, in fact, smoke at all.
            <br />
            <br />

 Choplick took T.L.O. into his office and instructed her to turn over her purse. He opened the purse and found a pack of cigarettes. He took the cigarettes out of the purse and showed them to T.L.O., accusing her of having lied about smoking in the restroom. As he removed the cigarettes, he noticed a package of cigarette rolling papers, which he believed were an indicator of involvement with marijuana. Therefore, he proceeded with a more thorough search of T.L.O.'s purse. This search yielded the following items: a small amount of marijuana, a pipe, empty plastic bags, a significant amount of money in one-dollar bills, a list of students who owed T.L.O. money, and letters implicating T.L.O. in dealing marijuana.
            <br />
            <br />

            Choplick then called T.L.O.'s mother and the police. The mother came to the school and, at the request of the police, took her daughter to the police station. Choplick turned the evidence from the purse over to the police. At the police station, T.L.O. admitted that she had been selling marijuana at school. As a result of T.L.O.'s confession and the evidence from her purse, the State of New Jersey brought delinquency charges against T.L.O. in the Juvenile and Domestic Relations Court of Middlesex County.
            <br />
            <br />

            T.L.O. tried to have the evidence from her purse suppressed, contending that the search violated the <div className="tooltip">Fourth Amendment<span className="tooltiptext">"The right of the people to be secure in their persons, houses, papers, and effects, against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the persons or things to be seized."</span></div>. She also claimed that her confession should be suppressed on the grounds that it was tainted by the unlawful search. The juvenile court rejected her Fourth Amendment arguments, although it conceded that the Fourth Amendment applies to searches by school officials. However, it held that a school official 'may search a student if that official has a reasonable suspicion that a crime has been or is in the process of being committed, or reasonable cause to believe that the search is necessary to maintain school discipline or enforce school policies.' This is a lower standard than the <div className="tooltip">'probable cause'<span className="tooltiptext">Probable cause is a requirement found in the Fourth Amendment that must usually be met before police make an arrest, conduct a search, or receive a warrant.  Courts usually find probable cause when there is a reasonable basis for believing that a crime may have been committed (for an arrest) or when evidence of the crime is present in the place to be searched (for a search).
           </span></div> standard, which is required when police conduct a search.
            <br />
            <br />

             The juvenile court concluded that Choplick's search was, therefore, reasonable. Choplick was justified in searching the purse, the Court said, because of his reasonable suspicion that T.L.O. had violated school rules by smoking in the restroom. When he opened the purse, evidence of marijuana use was in plain view; this justified the further search of the purse. T.L.O. was found to be a delinquent and, in January 1982, she was sentenced to one year of probation.
            <br />
            <br />

            T.L.O. appealed her conviction to the <div className="tooltip">appellate division<span className="tooltiptext">Appellate courts are the part of the judicial system that is responsible for hearing and reviewing appeals from legal cases that have already been heard in a trial-level or other lower court. People who have had an unsuccessful outcome in a trial-level or other lower court may file an appeal with an appellate court to have the decision reviewed. Appellate courts are present at the state and federal levels.</span></div>, which found no violation of the Fourth Amendment, but returned the case to juvenile court for determination of a possible <div className="tooltip">Fifth Amendment<span className="tooltiptext">"No person shall be held to answer for a capital, or otherwise infamous crime, unless on a presentment or indictment of a Grand Jury, except in cases arising in the land or naval forces, or in the Militia, when in actual service in time of War or public danger; nor shall any person be subject for the same offence to be twice put in jeopardy of life or limb; nor shall be compelled in any criminal case to be a witness against himself, nor be deprived of life, liberty, or property, without due process of law; nor shall private property be taken for public use, without just compensation." </span></div> problem with T.L.O.'s confession. T.L.O. then appealed the appellate division's Fourth Amendment ruling to the Supreme Court of New Jersey.
            <br />
            <br />

            The Supreme Court of New Jersey reversed the appellate division's ruling and ordered the evidence found in T.L.O.'s purse suppressed. The New Jersey Court relied on Supreme Court of the United States <div className="tooltip">precedent<span className="tooltiptext">A case or issue decided by a court that can be used to help answer future legal questions.</span></div> to hold that whenever an official search violates constitutional rights, the evidence may not be used in a criminal case. Furthermore, the Supreme Court of New Jersey found that Choplick's search was not reasonable. Mere possession of cigarettes was not a violation of school rules; therefore, a desire for evidence of smoking in the restroom did not justify the search. In addition, the further search of the purse was not justified by the presence of cigarette rolling papers.
            <br />
            <br />

             In 1983, the Supreme Court of the United States granted the State of New Jersey's petition for certiorari. In 1985, the Court handed down its decision.
          </Container>
        </div>
        <br />
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

 NJvTLO.propTypes = propTypes;
 NJvTLO.defaultProps = defaultProps;
