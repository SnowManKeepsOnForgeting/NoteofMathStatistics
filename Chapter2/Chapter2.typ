#import "@preview/physica:0.9.3": *
#import "@preview/i-figured:0.2.4"

#set heading(numbering: "1.1")
#show math.equation: i-figured.show-equation.with(level: 2)
#show heading: i-figured.reset-counters.with(level: 2)
#let dcases(..args) = math.cases(..args.pos().map(math.display))
#set text(font: "CMU Serif")
#counter(heading).update(1)

= Sampling Distribution
The probability distribution of a statistic is called the sampling distribution of the statistic.

