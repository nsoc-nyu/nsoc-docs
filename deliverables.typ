#import "template.typ": *

#set document(
    title: [
        NYU NSOC \
        Deliverables
    ]
)

#show: template.with(use-bib: false)

#par(leading: 0.9em)[
    #text(size: 21pt, fill: colors.purple)[
        NSOC works across four pillars:
    ]
]

- connecting researchers to Open Source projects,
- inspecting projects for vulnerabilities,
- detecting anomalous packages across ecosystems, and
- directing the production of annual ecosystem security evaluations.

This means we aim to deliver a range of benefits to the Open Source community. Here are some examples.

= Documenting respectful engagement with Open Source

#grid(
    columns: (1fr, 40mm),
    gutter: 5mm,
    align: (left + top, right + horizon),
    [
        #lorem(30)
        #lorem(30)
        #lorem(30)
        #lorem(30)
    ],
    image("assets/images/burnout-report-cover.png", width: 40mm)
)

= Open Infrastructure Observatory

phantom dependencies, bindep, bernies

#lorem(30)

#lorem(30)

#lorem(30)

#lorem(30)

#align(
    center,
    image("assets/images/table.png", width: 110mm)
)

= Research reports

benefits + adoption of following things

dependency cooldowns

PyPI MFA

truted publishing

= Educational video resources

= NSOC SSCS map

= Kids' book about key techs

#grid(
    columns: (1fr, 40mm),
    gutter: 5mm,
    align: (left + top, right + horizon),
    [
        #lorem(30)
        #lorem(30)
        #lorem(30)
        #lorem(30)
    ],
    image("assets/images/tai.png", width: 40mm)
)
