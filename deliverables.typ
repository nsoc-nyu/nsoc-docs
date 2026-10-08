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

- connecting researchers as liaisons to specific Open Source ecosystems,
- inspecting projects for vulnerabilities with fuzzing frameworks and LLM-assisted pipelines,
- detecting anomalous or unmaintained packages through continuous monitoring, and
- directing the production of annual ecosystem security evaluations.

Here are some of the benefits we aim to deliver to the Open Source community.

= Educating researchers on respectful contribution

NSOC-affiliated students serve as dedicated liaisons that work to make specific Open Source ecosystems more secure. One
student might work on improving package manager security in the Python ecosystem; another on identifying vulnerabilities
in Rust supply chains; and so on.

#grid(
    columns: (1fr, 40mm),
    gutter: 5mm,
    align: (left + top, right + horizon),
    [
        But *how can researchers contribute in a respectful manner that meets each project's needs?* Maintainers are already
        overwhelmed by burnout and AI contributions, and researchers should not further burden them.

        To answer this question, NSOC will collaborate with the #link("https://stewardshiplab.org")[Software Stewardship
        Lab], whose researchers have authored the to-date most comprehensive
        #link("https://stewardshiplab.org/reports/burnout-in-open-source-a-structural-problem-we-can-fix-together/")[reports
        on burnout]
        and mental health among Open Source maintainers.

        We will then create educational materials that summarise our findings in order to help other organisations give back to
        Open Source in an effective and respectful way.
    ],
    image("assets/images/burnout-report-cover.png", width: 40mm)
)

= Open Infrastructure Observatory

Developers should be able to easily identify vulnerabilities in their dependency tree. But current dependency scanning
tools fall short on multiple fronts.

First, they miss
#link("https://www.endorlabs.com/learn/dependency-resolution-in-python-beware-the-phantom-dependency")[_phantom
dependencies_], which are dependencies that are not specified in package manager manifests.
#link("https://vlad.website/binary-dependencies-identifying-the-hidden-packages-we-all-depend-on/")[_Binary
dependencies_] are an example, and occur when software depends on compiled code: _NumPy_ (written in Python) depends on
_OpenBLAS_ (written in C), but this dependency is not recorded anywhere, so vulnerabilities in _OpenBLAS_ are invisible
to its dependants.

But even when vulnerabilities are identified, patches cannot be upstreamed when the vulnerable project is a
#link("https://nesbitt.io/2026/05/08/weekend-at-bernies.html")[Bernie] — that is, a project that appears active, but is
in fact unmaintained, with nobody available to accept security patches.

These gaps in our knowledge about package ecosystems need to be filled. To do so, we are working with
#link("https://ecosyste.ms/")[ecosyste.ms] to create an _Open Infrastructure Observatory_ — a real-time global database
monitoring package dependency relationships. We aim to provide a service that detects signs of packages becoming
unmaintained and alerts their dependants.

#align(
    center,
    image("assets/images/table.png", width: 110mm)
)

= Research reports

There are many techniques that package managers can adopt in an effort to improve security, including
#link("https://github.blog/changelog/2025-07-31-npm-trusted-publishing-with-oidc-is-generally-available/")[trusted
publishing],
#link("https://blog.pypi.org/posts/2023-05-25-securing-pypi-with-2fa/")[mandatory 2FA],
#link("https://blog.yossarian.net/2025/11/21/We-should-all-be-using-dependency-cooldowns")[dependency cooldowns]
and
#link("https://nesbitt.io/2026/05/24/signing-is-for-the-bad-days.html")[code signing].

However, decisions to use such techniques are often made without cross-ecosystem collaboration and deliberation, and
with limited research to back these decisions up.

NSOC aims to use our members' expertise to write reports that investigate the pros and cons of such security strategies,
then disseminate the results in both article and video form. This will allow us to provide evidence-based
recommendations to the leaders of package management ecosystems, thereby improving security for millions of developers.

= Book: Tai & The Keys of Trust

#grid(
    columns: (1fr, 40mm),
    gutter: 5mm,
    align: (left + top, right + horizon),
    [
        Developers trust package registries to deliver the software they expect, but what if these registries get
        compromised? Code signing helps, but only until the keys doing the signing get leaked.

        #link("https://theupdateframework.io/")[TUF (The Update Framework)], led by Justin Cappos, provides a way to
        protect software update systems even against attackers that compromise package repositories or signing keys.

        To maximise the impact of this technology, we want to make sure it can be widely understood, which is why
        we collaborated with artists to create
        #link("https://vlad.website/static/tai-and-the-keys-of-trust.pdf")[_Tai & The Keys of Trust_],
        a children's-book-styled explainer of TUF.
    ],
    image("assets/images/tai.png", width: 40mm)
)

= Software Supply Chain Map

Software supply chains are complex and made up of many interlocking parts: code forges, VCS, CI/CD, build tools, static
analysis, package managers and registries, IoT devices, IDEs and more.

Students and experienced programmers alike often find this complexity overwhelming, which is a barrier to developer
education.

The NSOC Software Supply Chain Map is a visual (and whimsical) portrayal of the various parts that make up our software
supply chains, which we hope will serve as an educational aid for learners both within and outside NSOC.

#align(
    center,
    image("assets/images/map.jpg", width: 170mm)
)

#v(20mm)

#align(right, [
    == Have questions?

    Read more on #link("https://nsoc.engineering.nyu.edu/")[nsoc.engineering.nyu.edu], or \
    contact Justin Cappos at #link("mailto:jcappos@nyu.edu")[jcappos\@nyu.edu].
])
