# Learning Elixir
This is the repository for the LinkedIn Learning course Learning Elixir. The full course is available from [LinkedIn Learning][lil-course-url].

![Learning Elixir][lil-thumbnail-url] 

Elixir is a highly scalable, performant, fault-tolerant functional programming language with an incredible adoption rate in a wide array of companies. In this course, experienced software engineer Vanessa Lee introduces you to the benefits of Elixir and walks you through the functional programming basics essential for writing Elixir code. She covers the basics of data types, variables, and functions, then uses practical challenges and exercises to teach topics specific to functional programming, such as immutability, recursion, the actor model, and pattern matching. After completing this course, you will understand how to write applications in Elixir and where to go for more in-depth learning.

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"


### Instructor

Vanessa Lee 
                            


                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/vanessa-lee).

[lil-course-url]: https://www.linkedin.com/learning/learning-elixir
[lil-thumbnail-url]: https://cdn.lynda.com/course/2898718/2898718-1645727877018-16x9.jpg
