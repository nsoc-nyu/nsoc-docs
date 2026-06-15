#import "template.typ": *

#set document(
    title: [
        NYU \
        Software Supply Chain \
        Security Operations Center
    ]
)

#show: template.with()

#par(leading: 0.9em)[
    #text(size: 21pt, fill: colors.purple)[
        NSOC is a new supply chain security research center, observatory and training facility, led by the field's
        foremost experts. \ \
    ]
]

Modern software is built on open source foundations: 98% of analyzed codebases contain OSS components, with the average
application depending on a mean >1,180 such components, a 30% increase in just one year @blackduck-2026. This dependency
landscape is scattered across dozens of ecosystems, each with its own distinct but interdependent communities,
governance models, and tooling. Maintaining a good security posture across these ecosystems is difficult, because there
is simply not enough security expertise, tooling or comprehensive guidance to tackle the scale of the problem.

The NYU Software Supply Chain Security Operations Center (NSOC) is dedicated to building the capability to surface and
address threats across the open source ecosystems that feed modern software. Powered by the intelligence of
#link("https://ecosyste.ms")[ecosyste.ms], covering 14 million packages, 287 million repositories, and 24.5 billion
dependencies, NSOC continuously monitors environments like Python, Rust, Ruby, Java, and GitHub, catching threats before
they reach production systems.

We will also carry out rigorous multi-year training of world-class experts on using AI models to find vulnerabilities in
open source software. Each graduate student will be guided to become a meaningful contributor to an open source
ecosystem.

NSOC is positioned to monitor the open source ecosystems that underpin modern software delivery, while actively working
to improve the security posture of the organizations and foundations that depend on them, through ecosystem report
cards, per-ecosystem guidance, and direct code integrations.

= Motivation

The integrity of modern software depends on the integrity of its dependencies. High-profile incidents, from the
SolarWinds @fortinet-solarwinds compromise to the XZ Utils backdoor @akamaisecurityintelligencegroup-xza, have
demonstrated that adversaries who corrupt software can reach production systems undetected, including open source
ecosystems that underpin modern software delivery.

Yet the problem runs deeper than individual attacks: modern software projects depend on thousands of open source
packages across multiple ecosystems, each maintained by different contributors under different governance models,
creating an enormous and constantly shifting attack surface. Meanwhile, the window to respond is shrinking — mean time
to compromise has dropped from three days to negative seven days, meaning attackers now exploit vulnerabilities before
patches are even released @kutscher-mtrends.

Once inside, adversaries move fast: the average breakout time has fallen to just 29 minutes, with the fastest observed
at 27 seconds @crowdstrike-2026. At the same time, new attacks like the openpcp attack exploits GitHub's own CI/CD
infrastructure to distribute malware that spreads across package language types, showing that ecosystems cannot be
secured in isolation @kirk-defending. This creates an enormous, constantly shifting attack surface that no single
organization can monitor on its own. By the time a vulnerability is publicly disclosed, organizations are already
exposed.

= Strategy

NSOC nurtures software supply chain experts who apply the open source intelligence of
#link("https://ecosyste.ms")[ecosyste.ms] to continuously monitor the ecosystems that feed enrolled projects, surfacing
possible threats. Our tooling tracks dependency changes, new attack vectors, and anomalous package behavior across
ecosystems to alert organizations before exposure becomes an incident.

Hosted at
#link("https://engineering.nyu.edu/")[NYU’s Tandon School of Engineering]
in the
#link("https://cyber.nyu.edu/")[Center for Cyber Security],
NSOC's leadership team of world-class experts trains the next generation of software supply chain specialists, bringing
together master's students, PhD researchers, and postdoctoral associates.

= Our Leadership Team

#box[
    #grid(
        columns: (1fr, 1fr),
        column-gutter: 4mm,
        row-gutter: 10mm,
        align: (left + top, left + top),
        member(
            name: "Prof. Justin Cappos",
            image-path: "assets/images/team/justin@300px.webp",
            title: "NYU Tandon",
        )[
            The “father of software supply chain security”. A creator of
            #link("https://theupdateframework.com/")[TUF],
            #link("https://uptane.org/")[Uptane],
            #link("https://gittuf.dev/")[gittuf],
            #link("https://in-toto.io/")[in-toto],
            and Git's tag security architecture, technologies deployed in millions of devices and across critical global
            infrastructure.
        ],
        member(
            name: "Prof. Jiahao Yu",
            image-path: "assets/images/team/jiahao@300px.webp",
            title: "NYU Abu Dhabi",
        )[
            Cyber-AI expert focused on AI-driven vulnerability discovery, fuzzing, and automated patch generation. His
            team won a \$3M prize in the DARPA AI Cyber Challenge (AIxCC).
        ],
        member(
            name: "Andrew Nesbitt",
            image-path: "assets/images/team/andrew@300px.webp",
            title: "Founder, ecosyste.ms",
        )[
             Founder of
             #link("https://ecosyste.ms")[ecosyste.ms].
             One of the foremost researchers performing security data analysis at open source scale, with deep expertise
             in large-scale ecosystem intelligence and AI-powered cybersecurity tooling.
        ],
        member(
            name: "Vlad-Stefan Harbuz",
            image-path: "assets/images/team/vlad@300px.webp",
            title: "Founder, Software Stewardship Lab",
        )[
             OSS sustainability researcher and director of the
             #link("https://opensourcepledge.com")[Open Source Pledge],
             which has raised \$7,156,281 for OSS maintainers.
             #link("https://thanks.dev")[thanks.dev] core developer.
             Helped build software used by the
             #link("https://www.gatesfoundation.org/")[Gates Foundation]
             to allocate \$1B in healthcare funding.
        ],
    )
]

= Connect

NSOC will train a cadre of master's students, each serving as a dedicated liaison between NSOC and a specific
open source ecosystem. These students do more than observe; they become active, trusted participants in their assigned
communities. For example, a NSOC liaison could help the Python Software Foundation work through their backlog of package
ownership change requests
(see #link("https://www.gatesfoundation.org/")[PEP 541]).

Before engaging as security liaisons, each student undergoes structured onboarding that emphasizes the norms, culture,
and contribution expectations of their ecosystem. This groundwork builds credibility and earns the trust that makes
security conversations possible. The result is a human infrastructure that complements automated monitoring:
relationships and institutional knowledge that no pipeline can replicate, and a growing network of security-aware
contributors embedded across the ecosystems that modern software depends on.

= Inspect

AI-driven vulnerability detection and repair has rapidly advanced, with Mythos demonstrating that LLM-based agents can
identify vulnerabilities, generate patches, and assist human analysts at unprecedented scale. Under the guidance of top
tier experts in LLM guided vulnerability discovery, students will scan important open source frameworks to develop and
refine cutting edge techniques for how to use LLMs for security analysis. With guidance from groups like Alpha-Omega
and the OpenSSF, we will model our disclosure and outreach on Google’s Project Zero and Project Glasswing. Students and
our domain experts will disseminate guidance about what does and does not work effectively in this manner across the
security community, while also targeting and responsibly disclosing bugs in high impact projects.

= Detect

NSOC will continuously monitor signals across open source ecosystems to surface security vulnerabilities. This
monitoring is powered primarily by
#link("https://ecosyste.ms")[ecosyste.ms],
which serves as the intelligence backbone for tracking dependency changes and anomalous package behavior at scale,
complemented by rolling security scans across critical projects.

NSOC analysts examine signals across ecosystems simultaneously, identifying suspicious dependency injections, and
unmaintained-but-apparently-alive
(“#link("https://nesbitt.io/2026/05/08/weekend-at-bernies.html")[Bernie]”)
critical components that represent latent risk. Some example projects include monitoring trusted publishing adoption
across ecosystems and evaluating differences in security and usability between implementations. For example, an analysis
of _post_install_ scripts including how many packages have them, what they are used for, their history, what percentage
are dangerous, along with suggestions to ecosystems about how they might sandbox, phase out, or restrict the use of this
overpermissioned mechanism. This will help open source software stay ahead of emerging threats.

= Direct

NSOC will produce annual guidance on the state of package security, translating monitored signals and research findings
into actionable recommendations for the broader ecosystem community. NSOC will publish per-ecosystem report cards that
assess security posture across dimensions such as trusted publishing adoption, dependency hygiene, and responsiveness to
disclosed vulnerabilities, giving ecosystem maintainers and downstream consumers a picture of where risks concentrate.

Beyond reporting, NSOC liaisons will deliver technical assistance through code integrations, helping package managers
implement concrete security improvements rather than simply identifying gaps. These efforts will be coordinated with
established standards bodies and working groups, including OpenSSF WGs, NIST, and relevant ecosystem governance
organizations, to ensure that NSOC’s recommendations align with and strengthen existing frameworks, while also informing
industry-wide policy.

= Expected Impact

NSOC provides a center for cross-ecosystem problem solving and information sharing. We will use NSOC to deliver early
warning on upstream threats before they surface in formal advisories. This operational impact extends outward: NSOC’s
annual ecosystem report cards, ecosystem-specific security guidance, and direct code integrations will measurably
improve the security posture of the package managers on which the broader industry depends. All tooling, datasets, and
findings will be released publicly, providing the broader tech community with data and tooling that is not available
today.
