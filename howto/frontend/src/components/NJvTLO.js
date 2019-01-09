import React from 'react';
import PropTypes from 'prop-types';
import {Header, Image, Container, Divider} from 'semantic-ui-react'

const propTypes = {};

const defaultProps = {};

export default class NJvTLO extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <div>
        <div className="lesson-header">
          <Image size='medium' src='https://www.uscourts.gov/sites/default/files/styles/callout/public/tlo_podcast_large.jpg?itok=yWRr1Brq' circular centered />
          <Header size='huge' textAlign='center'>
          <Header.Content>New Jersey v. T.L.O.</Header.Content>
          <Header.Subheader>Should teachers be allowed to search student lockers?</Header.Subheader>
          </Header>

        </div>
        <div className="text-container">
          <Container text>
            In 1980, a teacher at Piscataway High School in New Jersey found two girls smoking in a restroom. At the school, smoking in the restrooms was a violation of school rules; smoking was allowed only in the designated smoking area. The teacher escorted the two girls to the principal's office, where they met with an assistant vice principal, Theodore Choplick. One of the girls was T.L.O., a freshman who was 14 years old. The girl who was with T.L.O. admitted that she had been smoking; T.L.O., however, denied the allegation, and said that she did not, in fact, smoke at all.
            <br />
            <br />

 Choplick took T.L.O. into his office and instructed her to turn over her purse. He opened the purse and found a pack of cigarettes. He took the cigarettes out of the purse and showed them to T.L.O., accusing her of having lied about smoking in the restroom. As he removed the cigarettes, he noticed a package of cigarette rolling papers, which he believed were an indicator of involvement with marijuana. Therefore, he proceeded with a more thorough search of T.L.O.'s purse. This search yielded the following items: a small amount of marijuana, a pipe, empty plastic bags, a significant amount of money in one-dollar bills, a list of students who owed T.L.O. money, and letters implicating T.L.O. in dealing marijuana.
            <br />
            <br />

            Choplick then called T.L.O.'s mother and the police. The mother came to the school and, at the request of the police, took her daughter to the police station. Choplick turned the evidence from the purse over to the police. At the police station, T.L.O. admitted that she had been selling marijuana at school. As a result of T.L.O.'s confession and the evidence from her purse, the State of New Jersey brought delinquency charges against T.L.O. in the Juvenile and Domestic Relations Court of Middlesex County.
            <br />
            <br />

            T.L.O. tried to have the evidence from her purse suppressed, contending that the search violated the <div className="tooltip">Fourth Amendment<span class="tooltiptext">The right of the people to be secure in their persons, houses, papers, and effects, against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the persons or things to be seized.</span></div>. She also claimed that her confession should be suppressed on the grounds that it was tainted by the unlawful search. The juvenile court rejected her Fourth Amendment arguments, although it conceded that the Fourth Amendment applies to searches by school officials. However, it held that a school official 'may search a student if that official has a reasonable suspicion that a crime has been or is in the process of being committed, or reasonable cause to believe that the search is necessary to maintain school discipline or enforce school policies.' This is a lower standard than the <div className="tooltip">'probable cause'<span class="tooltiptext">Probable cause is a requirement found in the Fourth Amendment that must usually be met before police make an arrest, conduct a search, or receive a warrant.  Courts usually find probable cause when there is a reasonable basis for believing that a crime may have been committed (for an arrest) or when evidence of the crime is present in the place to be searched (for a search).
           </span></div> standard, which is required when police conduct a search.
            <br />
            <br />

             The juvenile court concluded that Choplick's search was, therefore, reasonable. Choplick was justified in searching the purse, the Court said, because of his reasonable suspicion that T.L.O. had violated school rules by smoking in the restroom. When he opened the purse, evidence of marijuana use was in plain view; this justified the further search of the purse. T.L.O. was found to be a delinquent and, in January 1982, she was sentenced to one year of probation.
            <br />
            <br />

            T.L.O. appealed her conviction to the <div className="tooltip">appellate division<span className="tooltiptext">Appellate courts are the part of the judicial system that is responsible for hearing and reviewing appeals from legal cases that have already been heard in a trial-level or other lower court. People who have had an unsuccessful outcome in a trial-level or other lower court may file an appeal with an appellate court to have the decision reviewed. Appellate courts are present at the state and federal levels.</span></div>, which found no violation of the Fourth Amendment, but returned the case to juvenile court for determination of a possible Fifth Amendment problem with T.L.O.'s confession. T.L.O. then appealed the appellate division's Fourth Amendment ruling to the Supreme Court of New Jersey.
            <br />
            <br />

           The Supreme Court of New Jersey reversed the appellate division's ruling and ordered the evidence found in T.L.O.'s purse suppressed. The New Jersey Court relied on Supreme Court of the United States precedent to hold that whenever an official search violates constitutional rights, the evidence may not be used in a criminal case. Furthermore, the Supreme Court of New Jersey found that Choplick's search was not reasonable. Mere possession of cigarettes was not a violation of school rules; therefore, a desire for evidence of smoking in the restroom did not justify the search. In addition, the further search of the purse was not justified by the presence of cigarette rolling papers.
            <br />
            <br />

             In 1983, the Supreme Court of the United States granted the State of New Jersey's petition for certiorari. In 1985, the Court handed down its decision.
          </Container>
        </div>
      </div>
    );
  }
}

 NJvTLO.propTypes = propTypes;
 NJvTLO.defaultProps = defaultProps;
