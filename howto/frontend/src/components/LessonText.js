import React from 'react';
import PropTypes from 'prop-types';
import { Container } from 'semantic-ui-react'
import ReactHtmlParser, { processNodes, convertNodeToElement, htmlparser2 } from 'react-html-parser';

const propTypes = {};

const defaultProps = {};

export default function LessonText(props) {
  return (
    <div className="text-container">
      <Container text>
        <div dangerouslySetInnerHTML={{ __html: props.text[0].adv }} />
      </Container>
    </div>
  );
}


