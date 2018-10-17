[**<span class="underline">Forking</span>**](https://help.github.com/articles/syncing-a-fork/) **a repository**

  - > Forks are a way of making a copy of a project to work on. They can let you ‘fork’ off of a project and develop separately, and are often preferred for large projects with multiple people working on them. BUT, in projects with certain types of automated testing it can be preferred to use a branch rather than a fork. Find out what is preferred for the project you are involved in.
    
      - > In projects with many people we use often use forks to help prevent people from making conflicting edits to the same branch
    
      - > With the fork model, it is important to keep track of the "upstream" repository (the original project)

<!-- end list -->

  - > The repository you fork from will be called the “upstream” for clarity here and your fork is “origin"

<!-- end list -->

  - > This will require making a completely different repository on github before cloning it to your desktop

<!-- end list -->

  - > On the github website for the project chose the fork button in the top right corner
    
      - > ![](./media/image1.png)

<!-- end list -->

  - > Copy the link (under Clone or download) and clone to your desktop with “git clone \[paste location\]"

<!-- end list -->

  - > You can make whatever changes you want on this fork and push them to the “origin master” or your local master branch without ever interacting with the upstream fork

<!-- end list -->

  - > Next we will create a remote that will connect your fork to the upstream fork
    
      - > Copy the link (under Clone or download) for the upstream project
    
      - > you can check your remote connection with “git remote -v"
    
      - > add the upstream fork to your remote with “git remote add \[fork name\] \[paste location\]”

![](./media/image2.png)

You always want to be in agreement with the upstream fork, here are two options for how to get changes from the upstream. pulling or fetching
