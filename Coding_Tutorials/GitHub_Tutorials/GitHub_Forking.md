[**[Forking]{.underline}**](https://help.github.com/articles/syncing-a-fork/) **a repository**

- Forks are a way of making a copy of a project to work on. They can let you 'fork' off of a project and develop separately, and are often preferred for large projects with multiple people working on them. BUT, in projects with certain types of automated testing it can be preferred to use a branch rather than a fork. Find out what is preferred for the project you are involved in.

  - In projects with many people we use often use forks to help prevent people from making conflicting edits to the same branch

  - With the fork model, it is important to keep track of the \"upstream\" repository (the original project)

<!-- -->

- The repository you fork from will be called the "upstream" for clarity here and your fork is "origin\"

<!-- -->

- This will require making a completely different repository on github before cloning it to your desktop

<!-- -->

- On the github website for the project chose the fork button in the top right corner

  - <img src="./media/image1.png" style="width:1.11458in;height:0.69792in" />

<!-- -->

- Copy the link (under Clone or download) and clone to your desktop with "git clone \[paste location\]\"

<!-- -->

- You can make whatever changes you want on this fork and push them to the "origin master" or your local master branch without ever interacting with the upstream fork

<!-- -->

- Next we will create a remote that will connect your fork to the upstream fork

  - Copy the link (under Clone or download) for the upstream project

  - you can check your remote connection with "git remote -v\"

  - add the upstream fork to your remote with "git remote add \[fork name\] \[paste location\]"

<img src="./media/image2.png" style="width:6.5in;height:1.30556in" />

You always want to be in agreement with the upstream fork, here are two options for how to get changes from the upstream. pulling or fetching
