# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lesson.create(name: "New Jersey v. T.L.O.", front_tagline: "A case that examined whether school administrators have the right to search student lockers under the Fourth Amendment", page_tagline: "Should teachers be allowed to search student lockers?", header_img_url: "https://www.uscourts.gov/sites/default/files/styles/callout/public/tlo_podcast_large.jpg?itok=yWRr1Brq")

LessonVitalFact.create(decision_date: "January 15, 1985", decision: "6-3 in favor of the State of New Jersey", justices: "Chief Justice <a href='https://en.wikipedia.org/wiki/Warren_E._Burger'>Warren Burger</a> (concurring)
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
              Justice <a href='https://en.wikipedia.org/wiki/Sandra_Day_O%27Connor'>Sandra Day O'Connor</a> (concurring)", plaintiff: "The State of New Jersey", defendant: "T.L.O.", plaintiff_att: "Allan J. Nodes (for New Jersey)", defendant_att: "Lois de Julio (for T.L.O.)", lesson_id: 1)

OralArg.create(link_url: "https://apps.oyez.org/player/#/burger8/oral_argument_audio/18116", header_text: "Oral Arguments - March 28, 1984", desc_text: "Audio and transcript courtesy of <a href='http://www.oyez.org'> oyez.org</a>. Opens in a new window.", lesson_id: 1)

OralArg.create(link_url: "https://apps.oyez.org/player/#/burger8/oral_argument_audio/23720", header_text: "Oral Rearguments - October 2, 1984", desc_text: "Audio only. Courtesy of <a href='http://www.oyez.org'> oyez.org</a>. Opens in a new window.", lesson_id: 1)

Opinion.create(link_url: "https://www.law.cornell.edu/supremecourt/text/469/325#writing-USSC_CR_0469_0325_ZO", header_text: "Text of the Majority Opinion", desc_text: "Authored by Justice White and concurred with by Chief Justice Burger alongside Justices Blackmun, O'Connor, Powell, and Rehnquist. Text courtesy of Cornell Law School.", lesson_id: 1)

Opinion.create(link_url: "https://www.law.cornell.edu/supremecourt/text/469/325#writing-USSC_CR_0469_0325_ZX", header_text: "Text of Marshall's Opinion", desc_text: "Authored by Justice Thurgood Marshall in partial dissent with the majority decision. Courtesy of Cornell Law School.", lesson_id: 1)

LessonText.create(adv: "In 1980, a teacher at Piscataway High School in New Jersey found two girls smoking in a restroom. At the school, smoking in the restrooms was a violation of school rules; smoking was allowed only in the designated smoking area. The teacher escorted the two girls to the principal's office, where they met with an assistant vice principal, Theodore Choplick. One of the girls was <div class='tooltip'>T.L.O.,<span class='tooltiptext'>T.L.O. was referred to in official documentation by her initials due to the fact that she was a minor at the time the case was being tried. Her full name was later revealed to be Tracy Lois Odem.</span></div> a freshman who was 14 years old. The girl who was with T.L.O. admitted that she had been smoking; T.L.O., however, denied the allegation, and said that she did not, in fact, smoke at all.<br /> <br /> Choplick took T.L.O. into his office and instructed her to turn over her purse. He opened the purse and found a pack of cigarettes. He took the cigarettes out of the purse and showed them to T.L.O., accusing her of having lied about smoking in the restroom. As he removed the cigarettes, he noticed a package of cigarette rolling papers, which he believed were an indicator of involvement with marijuana. Therefore, he proceeded with a more thorough search of T.L.O.'s purse. This search yielded the following items: a small amount of marijuana, a pipe, empty plastic bags, a significant amount of money in one-dollar bills, a list of students who owed T.L.O. money, and letters implicating T.L.O. in dealing marijuana.
            <br />
            <br />

            Choplick then called T.L.O.'s mother and the police. The mother came to the school and, at the request of the police, took her daughter to the police station. Choplick turned the evidence from the purse over to the police. At the police station, T.L.O. admitted that she had been selling marijuana at school. As a result of T.L.O.'s confession and the evidence from her purse, the State of New Jersey brought delinquency charges against T.L.O. in the Juvenile and Domestic Relations Court of Middlesex County.
            <br />
            <br />

            T.L.O. tried to have the evidence from her purse suppressed, contending that the search violated the <div class='tooltip'>Fourth Amendment<span class='tooltiptext'>'The right of the people to be secure in their persons, houses, papers, and effects, against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the persons or things to be seized.'</span></div>. She also claimed that her confession should be suppressed on the grounds that it was tainted by the unlawful search. The juvenile court rejected her Fourth Amendment arguments, although it conceded that the Fourth Amendment applies to searches by school officials. However, it held that a school official 'may search a student if that official has a reasonable suspicion that a crime has been or is in the process of being committed, or reasonable cause to believe that the search is necessary to maintain school discipline or enforce school policies.' This is a lower standard than the <div class='tooltip'>'probable cause'<span class='tooltiptext'>Probable cause is a requirement found in the Fourth Amendment that must usually be met before police make an arrest, conduct a search, or receive a warrant.  Courts usually find probable cause when there is a reasonable basis for believing that a crime may have been committed (for an arrest) or when evidence of the crime is present in the place to be searched (for a search).
           </span></div> standard, which is required when police conduct a search.
            <br />
            <br />

             The juvenile court concluded that Choplick's search was, therefore, reasonable. Choplick was justified in searching the purse, the Court said, because of his reasonable suspicion that T.L.O. had violated school rules by smoking in the restroom. When he opened the purse, evidence of marijuana use was in plain view; this justified the further search of the purse. T.L.O. was found to be a delinquent and, in January 1982, she was sentenced to one year of probation.
            <br />
            <br />

            T.L.O. appealed her conviction to the <div class='tooltip'>appellate division<span class='tooltiptext'>Appellate courts are the part of the judicial system that is responsible for hearing and reviewing appeals from legal cases that have already been heard in a trial-level or other lower court. People who have had an unsuccessful outcome in a trial-level or other lower court may file an appeal with an appellate court to have the decision reviewed. Appellate courts are present at the state and federal levels.</span></div>, which found no violation of the Fourth Amendment, but returned the case to juvenile court for determination of a possible <div class='tooltip'>Fifth Amendment<span class='tooltiptext'>'No person shall be held to answer for a capital, or otherwise infamous crime, unless on a presentment or indictment of a Grand Jury, except in cases arising in the land or naval forces, or in the Militia, when in actual service in time of War or public danger; nor shall any person be subject for the same offence to be twice put in jeopardy of life or limb; nor shall be compelled in any criminal case to be a witness against himself, nor be deprived of life, liberty, or property, without due process of law; nor shall private property be taken for public use, without just compensation.'' </span></div> problem with T.L.O.'s confession. T.L.O. then appealed the appellate division's Fourth Amendment ruling to the Supreme Court of New Jersey.
            <br />
            <br />

            The Supreme Court of New Jersey reversed the appellate division's ruling and ordered the evidence found in T.L.O.'s purse suppressed. The New Jersey Court relied on Supreme Court of the United States <div class='tooltip'>precedent<span class='tooltiptext'>A case or issue decided by a court that can be used to help answer future legal questions.</span></div> to hold that whenever an official search violates constitutional rights, the evidence may not be used in a criminal case. Furthermore, the Supreme Court of New Jersey found that Choplick's search was not reasonable. Mere possession of cigarettes was not a violation of school rules; therefore, a desire for evidence of smoking in the restroom did not justify the search. In addition, the further search of the purse was not justified by the presence of cigarette rolling papers.
            <br />
            <br />

             In 1983, the Supreme Court of the United States granted the State of New Jersey's petition for certiorari. In 1985, the Court handed down its decision.", int: "", sim: "", lesson_id: 1)
Exercise.create(question: "The Supreme Court of the United States has made decisions that give students fewer rights than adults would have in other settings. How do you think the court justifies doing so?", lesson_id: 1)

Lesson.create(name: "Tinker v. Des Moines", front_tagline: "A case where a student protest kicked off a heated debate about students' First Amendment rights", page_tagline: "What rights to free speech do students have on school grounds?", header_img_url: "https://sites.google.com/a/nv.ccsd.net/tinker-v-des-moines/_/rsrc/1367515638288/home/peace.png?height=320&width=320")

LessonVitalFact.create(decision_date: "February 4, 1969", decision: "7-2 in favor of the Tinker family", justices: "Chief Justice <a href='https://en.wikipedia.org/wiki/Earl_Warren'>Earl Warren</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Byron_White'>Byron White</a> (concurring)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Thurgood_Marshall'>Thurgood Marshall</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Abe_Fortas'>Abe Fortas</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Potter_Stewart'>Potter Stewart</a> (concurring)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Hugo_Black'>Hugo Black</a> (dissenting)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/William_O._Douglas'>William O. Douglas</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/William_J._Brennan_Jr.'>William J. Brennan, Jr.</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/John_Marshall_Harlan_(1899%E2%80%931971)'>John M. Harlan II</a> (dissenting)", plaintiff: "John F. Tinker, Mary Beth Tinker, Christopher Eckhardt", defendant: "Des Moines Independent Community School District", plaintiff_att: "Dan Johnston (for Tinker, et al.)", defendant_att: "Alan Herrick (for Des Moines CISD)", lesson_id: 2)

OralArg.create(link_url: "https://apps.oyez.org/player/#/warren15/oral_argument_audio/15012", header_text: "Oral Arguments - November 12, 1968", desc_text: "Audio and transcript courtesy of <a href='http://www.oyez.org'> oyez.org</a>. Opens in a new window.", lesson_id: 2)

Opinion.create(link_url: "https://www.law.cornell.edu/supremecourt/text/393/503#writing-USSC_CR_0393_0503_ZO", header_text: "Text of the Majority Opinion", desc_text: "Authored by Justice Fortas and concurred with by Chief Justice Warren alongside Justices Brennan, Marshall, and Douglas. Text courtesy of Cornell Law School.", lesson_id: 2)

Opinion.create(link_url: "https://www.law.cornell.edu/supremecourt/text/393/503#writing-USSC_CR_0393_0503_ZC", header_text: "Text of Justice Stewart's Opinion", desc_text: "Authored by Justice Stewart in concurrence with the majority opinion. Text courtesy of Cornell Law School.", lesson_id: 2)

Opinion.create(link_url: "https://www.law.cornell.edu/supremecourt/text/393/503#writing-USSC_CR_0393_0503_ZC1", header_text: "Text of Justice White's Opinion", desc_text: "Authored by Justice White in concurrence with the majority opinion. Text courtesy of Cornell Law School.", lesson_id: 2)

Opinion.create(link_url: "https://www.law.cornell.edu/supremecourt/text/393/503#writing-USSC_CR_0393_0503_ZD", header_text: "Text of Justice Black's Opinion", desc_text: "Authored by Justice Black in dissent with the majority opinion. Text courtesy of Cornell Law School.", lesson_id: 2)

Opinion.create(link_url: "https://www.law.cornell.edu/supremecourt/text/393/503#writing-USSC_CR_0393_0503_ZD1", header_text: "Text of Justice Harlan's Opinion", desc_text: "Authored by Justice Harlan in dissent with the majority opinion. Text courtesy of Cornell Law School.", lesson_id: 2)

LessonText.create(adv: "John and Mary Beth Tinker were public school students in Des Moines, Iowa in December of 1965. As part of a group against American involvement in the Vietnam War, they decided to publicize their opposition by wearing black armbands to school. Having heard of the students' plans, the principals of the public schools in Des Moines adopted and informed students of a new policy concerning armbands. This policy stated that any student who wore an armband to school would be asked immediately to remove it. A student who refused to take off his or her armband would be suspended until agreeing to return to school without the band.

Two days later and aware of the school policy, the Tinker children and a friend decided to wear armbands to school. Upon arriving at school, the children were asked to remove their armbands. They did not remove the armbands and were subsequently suspended until they returned to school without their armbands.

The children returned to school without armbands after January 1, 1966, the date scheduled for the end of their protest. However, their fathers filed suit in U.S. District Court. This suit asked the court for a small amount of money for damages and an injunction to restrain school officials from enforcing their armband policy. Although the District Court recognized the children's First Amendment right to free speech, the court refused to issue an injunction, claiming that the school officials' actions were reasonable in light of potential disruptions from the students' protest. The Tinkers appealed their case to the U.S. Court of Appeals but were disappointed when a tie vote in that court allowed the District Court's ruling stand. As a result they decided to appeal the case to the Supreme Court of the United States.

The case came down to this fundamental question: Do the First Amendment rights of free speech extend to symbolic speech by students in public schools? And, if so, in what circumstances is that symbolic speech protected? The First Amendment states 'Congress shall make no law . . . abridging the freedom of speech.' The Fourteenth Amendment extends this rule to state governments as well, of which school systems are a part. The First Amendment, however, does not identify which kinds of speech are protected. For example, it is not clear whether hate speech against an individual or group is protected. Neither does the First Amendment specify what types of expressive actions should be considered as speech.

The Supreme Court of the United States has made many attempts to determine what types of symbolic speech are protected under the First Amendment. In 1919, the Court decided in Schenck v. United States that an individual could be punished for distributing anti-World War I pamphlets urging non-compliance with the draft because the pamphlets 'create[ed] a clear and present danger that they will bring about [a] substantive evil[ . . .] Congress has a right to prevent'—draft obstruction. The Court wrestled with the issue of the right to symbolic speech again in the case of Thornhill v. Alabama (1940) when the Court ruled that picketing was a form of symbolic speech protected by the First Amendment because no clear and present danger of destruction of life or property or of breach of the peace was inherent in the action. Three years later in West Virginia v. Barnette (1943), the Court extended the First Amendment protection of symbolic speech to students in public schools. In Barnette, the Court held '[i]f there is any fixed star in our constitutional constellation, it is that no official, high or petty, can prescribe what shall be orthodox in politics, nationalism, religion, or other matters of opinion...'

In 1968 the Supreme Court of the United States agreed to hear Tinker's case and consider the constitutionality of the Des Moines principals' anti-armband policy. The Court's decision in Tinker v. Des Moines was handed down in 1969.", int: "", sim: "", lesson_id: 2)

Exercise.create(question: "Placeholder question", lesson_id: 2)


Lesson.create(name: "Engel v. Vitale", front_tagline: "A case in which a school prayer came under fire for violating the Establishment Clause of the First Amendment", page_tagline: "Does the reading of a school prayer violate the First Amendment?", header_img_url: "https://4d6ab1ae1m81qn73x25fcrb1-wpengine.netdna-ssl.com/wp-content/uploads/2013/11/school-prayer1-300x300.jpg")

LessonVitalFact.create(decision_date: "June 25, 1962", decision: "6-1 in favor of Engel, et al.", justices: "Chief Justice <a href='https://en.wikipedia.org/wiki/Earl_Warren'>Earl Warren</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Byron_White'>Byron White</a> (recused)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Felix_Frankfurter'>Felix Frankfurter</a> (recused)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Tom_C._Clark'>Tom C. Clark</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Potter_Stewart'>Potter Stewart</a> (dissenting)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/Hugo_Black'>Hugo Black</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/William_O._Douglas'>William O. Douglas</a> (concurring)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/William_J._Brennan_Jr.'>William J. Brennan, Jr.</a> (majority opinion)
                  <br />
              Justice <a href='https://en.wikipedia.org/wiki/John_Marshall_Harlan_(1899%E2%80%931971)'>John M. Harlan II</a> (majority opinion)", plaintiff: "Steven I. Engel, et al.", defendant: "William J. Vitale, Jr., et al", plaintiff_att: "Dan Johnston (for Tinker, et al.)", defendant_att: "Alan Herrick (for Des Moines CISD)", lesson_id: 2)


Lesson.create(name: "West Virginia Board of Education v. Barnette", front_tagline: "A case which examined whether or not forcing students to recite the Pledge of Allegiance violates their First Amendment rights", page_tagline: "Can schools force students to salute the American flag or recite the Pledge of Allegiance?", header_img_url: "https://constitutionallawreporter.com/wp-content/uploads/2015/09/West-Virginia-State-Board-of-Education-v.-Barnette.gif")

user = User.new
user.login_name = "bungking"
user.password = 'bung'
user.password_confirmation = 'bung'
user.name = 'Bung King'
user.email = 'bung@bung.com'
user.section_name = 'Bung Kings'
user.is_teacher = false
user.is_admin = false
user.save

admin = User.new
admin.login_name = "mdtalbot"
admin.password = 'yeahyeah'
admin.password_confirmation = 'yeahyeah'
admin.name = 'Matthew Talbot'
admin.email = 'mdtalbot@gmail.com'
admin.section_name = 'Administrators'
user.is_teacher = false
user.is_admin = true
admin.save





