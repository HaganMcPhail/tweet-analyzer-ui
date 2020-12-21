## Overview

<!-- Brief description of what this PR does, and why it is needed. -->

## Demo

<!-- Previous vs new behavior. Screenshots pls :) -->

## Test Coverage

<!-- (mandatory)

- What tests were added?
- What tests were changed?
- What tests were removed?
- If nothing was changed, explain why not.

-->

## Reviewer testing instructions


## QA instructions

<!-- Are they the same as the testing instructions? What does QA need to do with this in order for it to be accepted and merged? If no QA, please note here -->

## Release Instructions

<!-- When should this be released? Are there dependencies? Is there a team that needs to approve the release? (ex. "No dependancies: Deploy when QA passes", "Check with CS team before deployment", "DEPENDENCIES: Do Not Deploy") -->

## Deploy checklist

- [ ] Engineering review signed off by: 
  - [ ] Database migration required. Time to run against production data: 
  - [ ] Downtime required: 
- [ ] QA review signed off by: 
- [ ] Product review signed off by: 

## Open questions and pre-merge TODOs


## Post-merge TODOs

<!--

If appropriate:

- [ ] announce in #product-updates with @channel [mention assignee, typically the PM]

-->


## Dev notes

<!-- (optional)

What did you learn while working on this?
What was challenging about this change?
Are parts of this change particularly risky?
Are there followup changes we should make in another ticket?

-->

### Code Review Guidelines

<details>

- [ ] Review the Commits
   - [ ] Check the commit message itself. Is it clear? Will it make sense in 6 months?
   - [ ] Check the total reviews. Do they need squashing? Are there rubocop/linting commits?
- [ ] Review the Intent
   - [ ] Why is this change needed?
   - [ ] Does the PR satisfy the associated ticket?
   - [ ] Does the PR make other additional changes?
   - [ ] Could we achieve more with less using a 3rd party library?
   - [ ] If we are using a 3rd party library, did we evaluate others to find the best one?
- [ ] Do a quick Review of the Code
  - [ ] Check the PR size. Is it more than 500 lines? If so it may be trying to do too much.
  - [ ] Check the migrations. Are they reversible?
    - [ ] Can you run `rake db:migrate && rake db:rollback STEP=2 && rake db:migrate` and have it all work?
    - [ ] Are they structural changes (DDL)? Or are they a data migration (DML)?  If DML is a migration the best place for this? Will it be a long-running set of changes?
  - [ ] Test the code
    - [ ] Are there unit tests?
    - [ ] Are the tests complete? Did they just test the happy-path or are there edge cases tested too?
    - [ ] Are there integration tests or end-to-end Cypress tests?
    - [ ] Are there instructions on how to test the code?
    - [ ] Does the code work? Check it out and run it to make sure.
- [ ] Do an in-depth Review of the Code
  - [ ] Check the code style, does this match our conventions?
  - [ ] Check the software architecture.
    - [ ] Can the effect in this PR be accomplished more simply?
    - [ ] Can this be done more canonically?
    - [ ] Can we create an abstraction to hide details from ourselves, or allow us to treat different systems similarly?
- [ ] Security Assessment
  - [ ] Does this take user input and perform any unsafe operations with it?
  - [ ] Does it use SQL strings instead of using the ORM?
  - [ ] Does it use the `html_safe` method or otherwise add dynamic HTML content that could be compromised?
  - [ ] Does this code turn off safety features that Rails or React
    provide for some reason?

</details>
