This section includes instructions for how to create a new GitHub repository.

# Start on GitHub

  - > Click on the octocat symbol in the top left corner to get to your newsfeed
    
      - > ![](./media/image2.png)

  - > On the left select “New repository"
    
      - > ![](./media/image1.png)

  - > This will open a screen with options for your repository:![](./media/image3.png)

  - > Owner:
    
      - > You should probably put it on the MobleyLab group or another Collaboration group so that when you graduate others will still have easy access to the repository. If it is for personal use or you’re writing a paper, then your personal account is also fine
    
      - > You can change Owners on github repos

  - > Repository Name
    
      - > If this is a python project you probably want to follow python style/syntax. That is all lowercase and \_ between words and be careful with special characters
    
      - > Otherwise, choose whatever you want.
    
      - > Note - Repository names can also be changed, but fixing your settings when you do it can be complicated so best to think through this before making the repo

  - > Description
    
      - > This is a short blurb at the top of your repository, it isn’t required, but if you chose to write something make sure to keep it clear and consise and remember a user might read this before seeing your README since this is at the top.

  - > Public or Private
    
      - > If this repository if for a project in the group, you probably want it to be public. Check with Dr. Mobley or other grad students/post docs on the project if you aren’t sure
    
      - > If you’re creating a personal repository, its up to you, some things to consider:
        
          - > If this code would be useful to other people in the community then you should make it public.
        
          - > How would you feel if a potential employer or collaborator stumbled upon this directory. If you don’t want them to see whatever you’re doing here, make it private

  - > Now there are two options, do you want to create a repository with initial files that is otherwise empty or do you want to start from an exisiting directory on your desktop. Below are directions for both options, if this is your first time starting with **Include initial files** is probably better.

## Include Initial Files

After clicking a new repository, you have the option of including a few default files. For a new user this is usually the best option because some of these files are essential to getting code to work correctly.

  - > Initialize this repository with a README
    
      - > Usually it is best to do this, the initial README.md file will only have the name of the repository, but it gaurentees that one is included in your repository.

  - > Add .gitignore
    
      - > You want to include this. It tells git not to track changes for files that aren’t essential to your code. For example, if you’re using python, you don’t want to track changes in a \*.pyc file\!
    
      - > Chose the file type based on the coding language you’re working in. (There are gitignore files for almost every language include TeX if you’re writing a paper).

  - > Add a license
    
      - > If there is no license for your code then technically people are not allowed to use it. You should always include a license in your repository.
    
      - > Most of the time in our group we use GNU or MIT
        
          - > If this repository is a part of an existing project you’ll want to make sure the license is consistent with the other parts of the project. (for example, the Open Force Field project always uses MIT).
        
          - > Basically both of these licenses say that the code is available free of charge AS IS and that people can do whatever they want with it as long as they site you.

  - > Click “create repository" when you’re ready (This will open your repository)

  - > [**<span class="underline">Clone your repository</span>**](https://docs.google.com/document/d/1kXob_nXz-LxOyJcHq-zgJnskma10SPXm7YCy1dhujq0/edit?usp=sharing) to your terminal so you can add files and start working

## Completely Empty Repository

In this scenario you basically say no initializing a README or including a .gitignore or license file. When you click “Create repository” github will give you instructions for how to initialize files in your git repository from a directory in your terminal. Note, that you MUST have a license file in order for other people to use your code and .gitignore files are extremely useful so unless your local directory already has these items, I recommend initializing these files and then moving anything you want in the repository into your folder after [**<span class="underline">cloning your repository</span>**](https://docs.google.com/document/d/1kXob_nXz-LxOyJcHq-zgJnskma10SPXm7YCy1dhujq0/edit?usp=sharing).
