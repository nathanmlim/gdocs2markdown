When you are satisfied with your changes you can use a pull request to submit your changes to the upstream branch, this will show you if there are any discrepancies between your local fork and the upstream fork that need to be addressed before merging.

You can submit pull requests to any fork and branch in the system. This will depend on your project and how the people you are working with want to do things, if it’s not clear ask, but most likely:

- One fork project it will be from your branch to the master

- Multi fork project: from \[your name\]/branch to the most \[upstream owner\]/master

# Create the Pull Request

Creating a pull request on a fork is the same as on a branch,

- go to the github website

- Click on the Pull Request Tab

- click “new pull request” button on the top right:<img src="media/image1.png" style="width:3.01042in;height:1.02083in" />

- Then choose which forks and branches you wish to merge, add a title, description and click “Create pull request"

  - Detailed instructions for what to include in these sections can be seen below

- If you make more commits to your local branch those changes will automatically be added to this pull request as long as the pull request is open!

  - It is important to remember this so if you want to start making new changes that you don’t want these new changes included on this PR you should make a new branch and make your new changes there.

- It is bad practice to merge your own pull requests, in face most repositories will have it set so that this is impossible.

Below are details for what you should include in the different parts of a Pull Request

## 

# PR Title

# PR Description

# Reviews for your PR

Usually, you want to recruit someone with an interest in the project to do code review on your code before it's merged -- this is both a good way to get it checked for mistakes AND get helpful feedback on code development

# Tests Must Pass

Instructions for tests are available in the Travis CI file, but assuming they are set up correctly, you’ll need the tests to pass before you can merge a Pull Request.

- Travis-CI is an environment which integrates with GitHub and allows automated testing when code changes are made

- Tests are automatically run when you use a pull request

  - To see details click on the X <img src="media/image4.png" style="width:0.85417in;height:0.27083in" />or checkmark <img src="media/image3.png" style="width:0.83333in;height:0.23958in" /> next to the commit

<!-- -->

- If you want to run these tests on the command line navigate to the directory “tests” (it could be in a sub-directory)

  - Command: nosetest -v

# Resolving Conflicts

If your branch is out of date with the mast you will receive a warning that the branch cannot be merged due to conflicts:

<img src="media/image2.png" style="width:6.5in;height:1.375in" />

You will need to pull the master branch into your local branch and resolve any conflicts. See the [<span class="underline">Update your Local Repository Section of Working Locally</span>](https://docs.google.com/document/d/1Ivk_IHnZd862YWdlppmqpU_0VRKY9FbbAOZ-XNC-TN8/edit?usp=sharing) for details
