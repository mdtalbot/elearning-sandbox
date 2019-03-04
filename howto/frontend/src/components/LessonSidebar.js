import React from 'react';
import { Header, List, Segment, Icon } from 'semantic-ui-react'
import SidebarOralArgItem from './SidebarOralArgItem'

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
              <div dangerouslySetInnerHTML={{ __html: props.facts[0].justices }} />
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
        {props.oralArgs.map((arg, index) => <SidebarOralArgItem key={index} header={arg.header_text} description={arg.desc_text} linkUrl={arg.link_url}/>
        )}

        {props.opinions.map((opinion, index) => <SidebarOralArgItem key={index} header={opinion.header_text} description={opinion.desc_text} linkUrl={opinion.link_url} />
        )}
      </List>
      </Segment>
    </div>
  );
}
