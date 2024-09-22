// Imports
#import "@preview/brilliant-cv:2.0.2": cv
#let metadata = yaml("./metadata.yml")
#let importModules(modules, lang: metadata.language) = {
  for module in modules {
    include "content/" + module + ".typ"
  }
}


#show: cv.with(
  metadata,
  profilePhoto: image("./src/avatar.jpg")
)
#importModules((
  "education",
  "professional",
  "projects",
  // "certificates",
  // "publications",
  "skills",
))
