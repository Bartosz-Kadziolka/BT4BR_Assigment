# Basic Toolkit for Bioinformatics Research Assigment #5

- Author: Bartosz Kądziołka
- E-mail: bartosz.kadziolka@student.uj.edu.pl
- Date: 20.11.2025
- Deadline: 27.11.2025
- Affiliation: Jagiellonian University
- Favorite Ice Cream flavor: Brown Butter or Salted Caramel
- Programming languages I like: C++, Python and R
- Programming languages I dislike: Java, Javascript

## On to the fun part... GIT :D:

### What can you do with git?

- track changes made to files
  - helps avoid having "Report_draft_1.txt, Report_draft_2.txt, Report_FINAL.txt, Report_FINAL_FINAL.txt, Report_FINAL_V3.txt"
- never lose your files in case something happens to them locally
- work on multiple machines
- share your work with others
- branch out to try new things
  - have a prod and dev branch for released products
  - go back in time if something doesn't work out

### How to use git?

- git commands in the terminal
- git wrappers such as [GitHub Desktop](https://desktop.github.com/download/), [Fork](https://git-fork.com/), and others
- [GitHub web client](https://github.com/) and others

### Useful commands and select flags:

- git clone [\[repository URL\]](https://github.com/Bartosz-Kadziolka/BT4BR_Assigment) - clones a repository
- git add \[file\]- adds files to the stage
  - -u - only stages changed files
  - -A - stages all files
- git commit - commits files to the branch locally
  - -m - allows for adding a message to the commit
  - --amend - allows for fixing a commit message
- git push origin \[branch\] - pushes the committed files to the cloud
- git fetch origin - fetches origin to check if you're out of date, especially useful when working with others
- git pull - pulls files from a repository if you're out of date, especially useful when working with others
- git diff \[file_1\]..\[file_2\]- shows the difference between two files
  - git diff branch - shows the difference between two branches
- git branch \[branch_name\] - creates a branch
- git checkout \[branch_name\] - switches current branch
- git merge origin \[branch_name\] - merges specified branch to current branch
