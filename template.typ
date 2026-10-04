#let colors = (
    purple: rgb("#3d1a9e"),
    purple-light: rgb("#e8e2fb"),
    purple-faint: rgb("#f4f1fe"),
    ink: rgb("#111018"),
    ink-2: rgb("#3a3550"),
    ink-3: rgb("#6b6585"),
    border: rgb("#ddd8f0"),
    bg: rgb("#ffffff"),
    bg-alt: rgb("#f8f7fc"),
);
#let fonts = (
    display: "NYU Perstare",
    body: "Inter",
    mono: "Ubuntu Mono",
);

#let member = (name: none, image-path: none, title: none, it) => {
    set text(hyphenate: false)
    block(below: 1em)[
        #grid(
            columns: (3.5em, 1fr),
            gutter: (1.5mm),
            align: (left + horizon, left + horizon),
            box(
                radius: 1mm,
                clip: true,
            )[
                #image(image-path, width: 13mm)
            ],
            [
                #block(
                    below: 0.7em,
                    text(font: fonts.display, name)
                )
                #text(size: 9pt, tracking: -0.09mm, font: fonts.mono, title)
            ]
        )
    ]
    block[
        #set par(justify: false)
        #set text(size: 10pt)
        #it
    ]
}

#let template(doc, use-bib: true) = {
    set page(
        paper: "a4",
        margin: (x: 18mm, y: 18mm),
        fill: colors.bg,
    )
    show title: set text(size: 21pt, weight: 450, font: fonts.display)
    show title: set par(leading: 0.4em, justify: false)
    show heading: set text(weight: 450, font: fonts.display, fill: colors.purple)
    show heading.where(level: 1): set text(size: 15pt)
    show heading.where(level: 1): set block(above: 1.5em, below: 1.2em)
    show heading.where(level: 1): upper
    show heading.where(level: 2): set text(size: 12pt)
    show heading.where(level: 2): set block(above: 1.5em, below: 0.9em)
    show list: it => {
        set list(indent: 2em)
        it
    }
    set text(
        font: fonts.body,
        size: 12pt,
        weight: 350,
        colors.ink
    )
    set par(
        justify: true,
        leading: 0.7em,
    )
    show link: set text(fill: colors.purple)
    show cite: super

    let hero = grid(
        columns: (5fr, 1fr),
        gutter: 5mm,
        align: (left + horizon, right + top),
        [
            #set text(fill: colors.purple)
            #grid(
                columns: 2,
                gutter: 10mm,
                image("./assets/images/logo.svg", width: 28mm),
                title()
            )
        ],
        [
            #set text(size: 9pt, fill: colors.purple)
            #block(
                inset: (top: 3mm),
                datetime.today().display("[day] [month repr:short] [year]")
            )
        ],
    )
    let hero_height = 55mm;
    context place(
        dx: -page.margin,
        dy: -page.margin,
        block(
            fill: colors.purple-light,
            inset: (x: page.margin),
            height: hero_height,
            width: page.width,
            align(horizon, hero)
        )
    )
    v(hero_height)

    doc

    if use-bib {
        pagebreak()
        bibliography("all.bib", style: "association-for-computing-machinery")
    }
}
