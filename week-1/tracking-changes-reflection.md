# Reflection

How does tracking and adding changes make developers' lives easier?
What is a commit?

While working on a file in a version control, the version control will automatically track the changes made to the file. Essentially, a commit is saving a version of your work, after changes are made. Rather than saving after every change, a commit can be a collection of actions made to the file.

What are the best practices for commit messages?

Commit messages should be short summary (around 50 characters). The messages should be capitalized and in the imperative.

What does the HEAD^ argument mean?

The HEAD^ argument will unstage the last commit made.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

1. Untracked File: to add the file you need to enter git add [File Name]
2. Staged File: to commit the file you git commit -m "enter message here"
3. Committed

Write a handy cheatsheet of the commands you need to commit your changes?

1. save changes in editor
2. git status
3. git add .
4. git status
5. git commit -m "enter message here"
6. git status

What is a pull request and how do you create and merge one?

A pull request fetches changes and merges them with the master. You can do this by going to git checkout master then endering git pull origin master. Then you will need to enter git checkout (branch name) and then merge it by entering git merge master. A pull and merge can also be manually done via GitHub's prompts.

Why are pull requests preferred when working with teams?

This way there are less branches and remotes to keep track of in the long run. It is an easier way for teams to keep track of changes.
