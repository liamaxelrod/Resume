= par

#par(leading: 2em)[
  == 1 parameters - (leading: length)
  leading: 2em controls the space between lines \
  within the document this allows you to control the spacing between lines vertically \
  another line to make it more visible
]

#par(justify: false)[
  == 2 parameters - (justify: false) 
  doesn't do anything when it's false
  
  #lorem(50)
]

#par(justify: true)[
  == 2 parameters - (justify: true) 
  _makes all the lines even at the end of the right side of the page!_

  #lorem(50)
]

#par(linebreaks: auto)[
  == 3 parameters - (linebreak: auto, "simple", "optimized") 
  I don't know what this does

  #lorem(50)
]

#par(first-line-indent: 0.65em)[
  == 4 parameters - (first-line-indent: length)
  using the length of 0.65em for the intention of this parameter

  all paragraphs after the first one or intended

  depending on circumstances the first may be indented
]

#par(hanging-indent: 0.65em)[
  == 5 parameters - (hanging-indent: length)
  index after the first sentence continuously for the paragraph shown within the text
  
  #lorem(30)
]

