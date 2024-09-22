// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvSkill, hBar
#let metadata = yaml("../metadata.yml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Skills")

#stack(spacing: 2em,
  cvSkill(
    type: [Languages],
    info: [English (native) #hBar() Swedish (intermediate)],
  ),
  cvSkill(
    type: [Programming Languages],
    info: [Tableau #hBar() Python (Pandas/Numpy) #hBar() PostgreSQL],
  ),
  cvSkill(
    type: [Frameworks & Libraries],
    info: [Tableau #hBar() Python (Pandas/Numpy) #hBar() PostgreSQL],
  ),
  cvSkill(
    type: [Developer Tools],
    info: [Swimming #hBar() Cooking #hBar() Reading],
  ),
  cvSkill(
    type: [Diagrams & Design],
    info: [Swimming #hBar() Cooking #hBar() Reading],
  )
)