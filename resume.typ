#let data = yaml("data.yml")


#let template(body) = {
  set list(indent: 1em)
  show list: set text(size: 0.92em)
  show link: underline
  show link: set underline(offset: 3pt)

  set page(
    paper: "us-letter",
    margin: (x: 0.5in, y: 0.5in)
  )

  set text(
    size: 11pt,
      font: "New Computer Modern",
  )

  body
}

#let name_header(name) = {
  set text(size: 2.25em)
  [*#name*]
}

#let header(
  name: "Liam Axelrod",
  phone: "072-406 20 29",
  email: "liamaxelrod@gmail.com",
  linkedin: "none",
  site: "github.com/liamaxelrod",
) = {
  align(center,
    block[
      #name_header(name) \
      #phone |
      #link("mailto:" + email)[#email] |
      #link("https://" + linkedin)[#linkedin] |
      #link("https://" + site)[#site]
    ]
  )
  v(5pt)
}

#let resume_heading(txt) = {
  show heading: set text(size: 0.92em, weight: "regular")

  block[
    = #smallcaps(txt)
    #v(-4pt)
    #line(length: 100%, stroke: 1pt + black)
  ]
}

#let edu_item(
  name: "Sample University", 
  degree: "B.S in Bullshit", 
  location: "Foo, BA", 
  date: "Aug. 1600 - May 1750"
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, grid(
    columns: (3fr, 1fr),
    align(left)[
      *#name* \
      _#degree _
    ],
    align(right)[
      #location \
      _#date _
    ]
  ))
}

#let exp_item(
  name: "Sample Workplace",
  role: "Worker",
  date: "June 1837 - May 1845",
  location: "Foo, BA",
  ..points
) = {
    set block(above: 0.7em, below: 1em)
    pad(left: 1em, right: 0.5em, {
      table(
        columns: (1fr, 2fr),
        align: (left, right),
        inset: 0em,
        stroke: none,
        stack(spacing: 0.75em,
          strong(role),
          text(style: "italic", name),
        ),
        stack(spacing: 0.75em,
          date,
          text(style: "italic", location),
        ),
      )
      v(0.5em)
      list(..points)
    })
}

#let project_item(
  name: "Example Project",
  skills: "Programming Language 1, Database3",
  date: "May 1234 - June 4321",
  ..points
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, box[
    *#name* | _#text(size: 0.75em, skills) _ #h(1fr) #date
    #v(0.25em)
    #list(..points)
  ])
}

#let skill_item(
  category: "Skills",
  skills: "Balling, Yoga, Valorant",
) = {
  set block(above: 0.7em)
  set text(size: 0.91em)
  pad(left: 1em, right: 0.5em, block[*#category*: #skills])
}

#let personal(d) = {
  header(
    name: d.name,
    phone: d.phone,
    email: d.email,
    linkedin: d.linkedin,
    site: d.site
  )
}

#let education(d) = {
  resume_heading[Education]
  for edu in d {
    edu_item(
      name: edu.name,
      degree: edu.degree,
      location: edu.location,
      date: edu.date,
    )
  }
}

#let experience(d) = {
  resume_heading[Experience]
  for exp in d {
    exp_item(
      role: exp.role,
      name: exp.name,
      location: exp.location,
      date: exp.date,
      .. exp.points
    )
  }
}

#let projects(d) = {
  resume_heading[Projects]
  for proj in d {
    project_item(
      name: proj.name,
      skills: proj.skills,
      date: proj.date,
      ..proj.points
    )
  }
}

#let skills(d) = {
  resume_heading[Technical Skills]
  for skill in d {
    skill_item(
      category: skill.category,
      skills: skill.skills
    )
  }
}

#let resume(data) = {
  show: template
  personal(data.personal)
  education(data.education)
  experience(data.experience)
  projects(data.projects)
  skills(data.skills)
}


#resume(data)

