#import "@preview/bubble:0.2.1": *
//#import "@preview/codelst:2.0.1": sourcecode

#show: bubble.with(
  title: "Note of Math Statistics",
  subtitle: "Course Note",
  author: "Lawrence",
  //affiliation: "University",
  date: datetime.today().display(),
  year: "2024 Year",
  class: "Fall Season Class",
  main-color: "4DA6FF", //set the main color
)     

#show heading: set text(fill: black)
#set enum(indent: 1em, numbering: n => [#text(fill: black, numbering("1.", n))])
#set list(indent: 1em, marker: n => [#text(fill: black, "•")])


#include "Chapter1/Chapter1.typ"
#pagebreak()


