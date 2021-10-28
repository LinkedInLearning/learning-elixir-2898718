# Learning Elixir
This is the repository for the LinkedIn Learning course `Learning Elixir`. The full course is available from [LinkedIn Learning][lil-course-url]. 

The Elixir Programming Language is a functional language for creating easy to maintain and easy to scale applications. Elixir harnesses the power of the Erlang Virtual Machine, which offers scalability, high-availability, and fault-tolerance. Elixir is consistently ranked one of the most loved languages by developers and is found across a variety of industries for everything from web development to data ingestion to embedded software. 

Through practical examples and exercises, this course helps you build your understanding of Elixir step by step, from the basics of data types, operators, and conditionals through advanced topics like managing control flow structures, functions, and recursion. At each step, instructor Vanessa Lee guides you through challenges test out your new Elixir skills.

## Learning objectives
- Installing Elixir and Erlang
- Functional programming basics
- Data types
- Logical, mathmatic, and comparison operators
- Pattern matching
- Managing data collections
- Iteration
- Control flow structures
- Functions and modules
- Recursion
- Mix automated build tool

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

## Resources

**Elixir & Erlang**

* [Elixir](https://elixir-lang.org/)
* [Erlang](https://www.erlang.org/)
* [Elixir Documentation](https://hexdocs.pm/elixir/Kernel.html)
* [Elixir Reducees](http://blog.plataformatec.com.br/2015/05/introducing-reducees/)

**Installation**

* [Elixir/Erlang Version Compatability](https://hexdocs.pm/elixir/master/compatibility-and-deprecations.html#compatibility-between-elixir-and-erlang-otp)
* [Installing Elixir](https://elixir-lang.org/install.html)
* [Installing Erlang](https://erlang.org/doc/installation_guide/INSTALL.html)
* [Version Manager asdf](https://github.com/asdf-vm/asdf)
* [Elixir plugin for asdf](https://github.com/asdf-vm/asdf-elixir)
* [Erlang plugin for asdf](https://github.com/asdf-vm/asdf-erlang)

**Tools**
* [Visual Studio Code](https://code.visualstudio.com/)
* [ElixirLS extension for VSCode](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls)
* [Erlang extension for VSCode](https://marketplace.visualstudio.com/items?itemName=pgourlain.erlang)
* [Elixir's Interactive Shell (IEx)](https://hexdocs.pm/iex/IEx.html)
* [Mix, Elixir's build tool](https://hexdocs.pm/mix/Mix.html)

## Sample Installation Steps: asdf on macOSX 

1. [Elixir website](https://elixir-lang.org/install.html)
1. [asdf version manager](http://asdf-vm.com/guide/getting-started.html)
1. Install the build tools `brew install autoconf`
1. Install OpenSSL `brew install openssl`
1. Install asdf `brew install asdf`
1. Run `echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.bash_profile`
1. Run `echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.bash_profile`
1. Run `brew install gpg gawk`
1. Install asdf Elixir plugin `asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git`
1. Install asdf Erlang plugin `asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git`
1. Run `asdf install elixir 1.12.2-otp-24`
1. Run `asdf install erlang 24.0.3`
1. Run `asdf global elixir 1.12.2-otp-24`
1. Run `asdf global erlang 24.0.3`

[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://github.com/LinkedInLearning/learning-elixir-2898718
[lil-thumbnail-url]: http://

