import React from 'react';
import {Header, List, Segment, Icon } from 'semantic-ui-react'

export default function LessonSidebar(props) {
  return (
    <div className="lesson-sidebar">
      <Segment vertical floated='left'>  <List>
        <Header textAlign='center'>Vital Information</Header>
        <List.Item>
          <Icon name='calendar alternate outline' />
          <List.Content>
            <List.Header>Decided On</List.Header>
            <List.Description>
              {props.facts[0].decision_date}
              </List.Description>
          </List.Content>
        </List.Item>
        <br />
        <List.Item>
          <Icon name='gavel' />
          <List.Content>
            <List.Header>Decision</List.Header>
            <List.Description>
              {props.facts[0].decision}
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
              {props.facts[0].plaintiff_att}
                  <br />
              {props.facts[0].defendant_att}
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
  );
}
