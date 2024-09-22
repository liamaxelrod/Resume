= Introduction
how to use typst
by useing = makes a heading at start of the line of code

and the blank line of code make a new paragraph

a line break can be made using \\ at the end of the code

do use a special character use \\ before it to show up as a normal text

for italics text use ellipses (\_) \_with wards inbeteent the undescor\_ example _new on italics_ 

*using \* allows you to make bold letters*

\#lorem(number) allows you to create random text to test example  being \#lorem(20) in the code

#lorem(20)

== subheading
by useing == at start of the line of code

The number of = characters determines the nesting level of the heading.

== list
+ made useing +
  - made useing -

== Adding a bibliography (references)

== Maths

by using \$ with something in the middle \$ malformed list can be framed within the center

$ 5 + 5 = 10 $

== functions
the \# shows that a function has begun and it's no longer necessary to call any function with in that function

=== \#image
this uses the image image_typst.jpg in folder with this file introduction_tutorial.typ

\#image("image_typst.jpg", width: 10%) makes an image appear the \#image is the function where as the parentheses is the address of the image the, allows for separate commands like controlling the width of the image

#image("image_typst.jpg", width: 10%)

we specified a percentage, determining that the image shall take up 70% of the _page's width._ We also could have specified an absolute value like 1cm or 0.7in.

=== figure function.
By default, figures are placed within the flow of content. To make them float to the top or bottom of the page it's uses is to capture certain parameters and control them

\#figure( image("image_typst.jpg", width: 10%), caption: [ logo for typst ] )

#figure(
  image("image_typst.jpg", width: 10%),
  caption: [
    _logo_ for typst
  ]
) <logoTypst>

you can add a bibliography-reference the image by using \@ like this @logoTypst and ensuring the function after all the parentheses haas <> With the reference word inside of it like \<logoTypst>

