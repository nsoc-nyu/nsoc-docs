# NSOC

NYU Software Supply Chain Security Operations Center. Hosted at NYU Tandon, Center for Cyber Security.

NSOC monitors the open source ecosystems modern software is built on, finds threats, and contributes fixes back. It runs on top of ecosyste.ms data:

- 14M packages
- 287M repositories
- 24.5B dependencies
- Across nearly every package manager in use

That data is paired with trained students, PhD researchers, and postdocs embedded inside ecosystems as real contributors, not external auditors.

## Why now

Open source is the ground modern software stands on, and almost nobody is watching it at the ecosystem level.

- Average app pulls in 1,180+ open source components, up 30% in one year
- 98% of analyzed codebases contain open source
- Mean time to compromise: 3 days → negative 7 days. Exploits ship before patches.
- Average breakout time inside a network: 29 minutes. Fastest observed: 27 seconds.
- The XZ Utils backdoor was caught when one Postgres engineer noticed his SSH logins were 500ms slower than usual. That's the current defense in depth.
- openpcp spread malware across language ecosystems via GitHub's CI. Defending one package manager at a time doesn't work anymore.

## What it actually does

Four areas of work.

### 1. Connect

Each liaison student is assigned to one ecosystem (Python, Rust, Ruby, Java, GitHub, etc).

- Onboarded into the community's norms and contribution culture first
- Helps with unglamorous maintenance work (e.g. PyPI PEP 541 ownership transfers)
- Becomes a trusted contributor before raising security concerns
- Security conversations land because the person raising them already shipped

### 2. Inspect

AI-assisted vulnerability discovery on important open source projects.

- Uses models like Mythos to find vulnerabilities and generate patches
- Responsible disclosure modeled on Project Zero and Project Glasswing
- Publishes what works and what doesn't, so other security teams can apply it

### 3. Detect

Continuous monitoring across ecosystems for the things that actually break supply chains.

- Suspicious dependency injections
- Anomalous package behavior (e.g. weird `post_install` scripts)
- Unmaintained-but-still-load-bearing critical components
- Cross-ecosystem attack patterns that single-ecosystem teams miss

### 4. Direct

Push improvements into the package managers and standards bodies where they take effect.

- Annual per-ecosystem report cards: trusted publishing adoption, dependency hygiene, disclosure responsiveness
- Direct code contributions to package managers
- Coordination with OpenSSF working groups, NIST, and ecosystem governance

## Who's running it

- **Justin Cappos**: TUF, Uptane, in-toto, gittuf, parts of Git's security architecture. Shipped in millions of vehicles.
- **Jiahao Yu**: team won the $3M DARPA AI Cyber Challenge (AIxCC) for AI-driven vulnerability discovery and patching.
- **Andrew Nesbitt**: founder of ecosyste.ms, part of Glasswing.

## For students

- Course credit and a travel stipend to spend time with the assigned community
- Hands on terabytes of supply chain metadata
- Work with AI models like Mythos to find and responsibly disclose bugs
- Embed inside a major open source community as a real contributor
- First cohort recruited this December

## What ships out

All tooling, datasets, and findings are released publicly. The deeper output is a generation of supply chain security experts trained on real work in the ecosystems that need them most.
