**Issue tracking**

  - > Issues are associated with github repositories and allow you to keep track of "issues" such as bugs, future development plans, and so on. Major purposes are to:
    
      - > organize who is addressing current problems with a project
    
      - > plan changes (major and minor)
    
      - > keep track of changes which will be made
    
      - > in general, keep a permanent record of the development of a project so that it can be understood what changes were made, why, and by whom

  - > Issues normally should interact with pull requests -- specifically, the normal development process is:
    
      - > an issue is raised to bring up a problem or plan development
    
      - > the issue is used to make plans
    
      - > someone begins development in a branch or fork and opens a pull request to master labeled "\[WIP\] Implement partial bond orders as discussed in issue \#53" (for example), where \[WIP\] stands for "work in progress"
        
          - > This allows people to see, comment on, and help with resolution of the issue
        
          - > It keeps a record of exactly how the issue was dealt with
    
      - > When the issue is resolved, "\[WIP\]" is removed from the title of the pull request, the issue is closed, and the pull request is merged, bringing the changes into master

  - > Find issues on the “Issues (\#)” tab on the github website
    
      - > ![](./media/image2.png)

  - > Good Practice - try to keep issue limited to one problem *or* to several issues which are so closely related that they would best be dealt with by a single person in a single set of changes

  - > When creating an issue leave detailed comments about what is happening or what the problem that needs to be addressed is
    
      - > Attach files or supporting materials to allow exact reproduction of the file
    
      - > Code can be provided by using single quotes to indicate it is \`code'; triple single quotes can be used to set off \`\`\`larger blocks of code''' that can span multiple lines (though you want your opening quotes on an empty line and your closing quotes on another empty line)

  - > You can assign a specific person to address an Issue:
    
      - > ![](./media/image3.png)Or chose “assign yourself” to assign yourself to be in charge of addressing the issue

  - > Good Practice - you should use pull requests to close issues. You can link a pull request to the issue by referring to it by number with (\#number)
    
      - > ![](./media/image1.png) this is an issue
    
      - > If I was going to try to close it with a pull request I would put “This addresses issue \#1” in the pull request so they are linked
    
      - > Ideally, use names which describe what the pull request does, unlike the example above -- for example, "Ensure molecules retain the correct net charge" or something similar
