# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?  
Version control is a software tool/system that allows us to track progress of our code, view the history of revisions, revert changes and back up our code. To name a few useful features of this tool: developers can work at the same project simultaneiously without interfering with each other (branching), they can bring their work back together (merging), changes made to files can be annotated with a message, making the code easy to understand, the code has a detailed history of it's changes, changes can be reversed; etc.
* What is a branch and why would you use one?  
A branch is a copy of your project. When making changes to your project, you don't want to work on the master branch, you create a feature branch and you work on the changes you want to make from there. By doing so, you maintain clean, functional code in your branch master while making changes or experiment with the project in the feature branch. When ready, you can merge the changes to the parent branch.
* What is a commit? What makes a good commit message?
In Git, a commit creates a save point of your project. In developing a project, first you edit a file in the working directory, then you save a copy of the current state of your project in the staging area with the add command. Last step, you commit the staged snapshot to the project history with a commit message. A good commit message would have to be concise and describe the work that has been done. 
* What is a merge conflict?  
While Git will take care of the merging process for you, there are situations where Git is stuck and will have you step in and tell it how to proceed. A merge conflict could be caused by two different developers changing the same line in the same file or one of them deleting the file that the other developer is working on.