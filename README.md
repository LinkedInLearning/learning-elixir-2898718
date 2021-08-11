# Learning Elixir
This is the repository for the LinkedIn Learning course `Learning Elixir`. The full course is available from [LinkedIn Learning][lil-course-url]. 

The Elixir Programming Language is a functional language for creating easy to maintain and easy to scale applications. Elixir harnesses the power of the Erlang Virtual Machine, which offers scalability, high-availability, and fault-tolerance. Elixir is consistently ranked one of the most loved languages by developers and is found across a variety of industries for everything from web development to data ingestion to embedded software. 

Through practical examples and exercises, this course helps you build your understanding of Elixir step by step, from the basics of data types, operators, and conditionals through advanced topics like managing control flow structures, functions, and recursion. At each step, instructor Vanessa Lee guides you through challenges test out your new Elixir skills.

_See the readme file in the main branch for updated instructions and information._
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

## Installing
1. To use these exercise files, you must have the following installed:
    - A code editor ([VS Code](https://code.visualstudio.com/) is recommended)
	- Version manager [asdf](asdf-url) 
    - [Elixir plugin](https://github.com/asdf-vm/asdf-elixir) for asdf version manager to install the latest version of Elixir
    - [Erlang plugin](https://github.com/asdf-vm/asdf-erlang) for asdf version manager to install the latest version of Erlang
    - [ElixirLS: Elixir support and debugger](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls) extension for VSCode
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.
3. [Course-specific instructions]


[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/
[lil-thumbnail-url]: http://

