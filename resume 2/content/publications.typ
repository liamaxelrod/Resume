// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvPublication
#let metadata = yaml("../metadata.yml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Publications")

#cvPublication(
  bib: bibliography("../src/publications.bib"),
  keyList: (
    "smith2020",
    "jones2021",
    "wilson2022",
  ),
  refStyle: "apa",
)
