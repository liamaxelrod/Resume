= Formatting with Set rules

how to format your report using Typst's styling system.

With set rules, you can apply style properties to all occurrences of some kind of content throughout the document.

you'll notice that the set route doesn't take effect until you make the command

\#set par(first-line-indent: 0.65em)

#set par(first-line-indent: 0.65em)

then after that point the code is invoked all text will have the rule put in place this being the indent for each beginning paragraph. now were going to put in text effect. 

\#set text(
  font: "New Computer Modern",
  size: 10pt
)

== text

#set text(
  font: "New Computer Modern",
  size: 15pt
)

you'll see in thisThat the text font has changed along with its size

#set text(
  font: "New Computer Modern",
  size: 10pt
)

and the text can be set to a new rule change the size

== align

#align(center + top)[
\#align(center + top)\[text\] 

center make the text appear in the center of the page, and top makes a come up to as close as I can get to when the method was invoked following the text within the brackets
]

#set heading(numbering: "1.")

= heading

\#set heading(numbering: "1.")

is the command in the form of a set rule some of this point forward when using = or == they will be marked as headings throughout the page.

= show with (box and name)

\#show "ArtosFlow": name => box[
  \#box(image(
    "image_typst.jpg",
    height: 0.7em,
  ))
  \#name
]

use show method to reveal different things and colors. With the text afterward representing when when to show it. ???asked Drake about the process???

#show "ArtosFlow": name => box[
  #box(image(
    "image_typst.jpg",
    height: 0.7em,
  ))
  #name
]

This report is embedded in the
ArtosFlow project. ArtosFlow is a
project of the Artos Institute.

= page

The page method allows you to control how the page will be set up margins and placement from that point forward. The reason after each set was invoked it was moved down to a lower page is because the method was not invoked on the active page this text is appearing on.

#set page(
  paper: "a6",
  margin: (x: 1.8cm, y: 1.5cm),
)

text is placed here 

#set page(
  paper: "a6",
  margin: (x: 1.8cm, y: 10.5cm),
)

text is placed here 