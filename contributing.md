# Contributing to coreR

:tada: First off, thanks for contributing! :tada:

[1. Definitions](#1-definitions)

[2. Types of contributions](#2-types-of-contributions)

[3. Getting started](#3-getting-started)

[4. Fixing a bug in `coreR`](#4-fixing-a-bug-in-corer)

[5. Contributing or modifying a lesson to `coreRlessons`](#5-contributing-or-modifying-a-lesson-to-corerlessons)

[6. Adding a course](#6-adding-a-course)

[7. Materials Development Workflow](#7-materials-development-workflow)

[8. Building the book](#8-building-the-book)

## 1. Definitions

- **forked repository**: this refers to contributors' forked copy of the
`nceas-learning-hub/coreRlessons` repository which is specified with the path `{yourUsername}/coreRlessons`
- **upstream repository**: this refers to the original repository that
contributors fork from which is `nceas-learning-hub/coreRlessons` 
- **origin or remote repository**: this refers to your forked repository on GitHub

## 2. Types of contributions

We welcome all types of contributions, including bug fixes, new lessons, lesson
improvements, and new training events.

- Report a bug or issue to our [issue tracker](https://github.com/nceas-learning-hub/coreR/issues)
- Fix a bug or add a feature in `coreR` with a Pull Request
- Contribute a lesson to `coreRlessons` with a Pull Request
- Add a training event by creating a new repository using the functionality of `coreR`.

## 3. Getting started

For this repository, external contributors use a [forking workflow](https://learning.nceas.ucsb.edu/2023-04-coreR/session_17.html#forking-workflow).
This means contributors make edits to files from the `nceas-learning-hub/coreRlessons`
repository in their forked repository `{yourUsername}/coreRlessons`, and to merge
these edits to `nceas-learning-hub/coreRlessons` (the original repository) they
open a pull request (PR). 

(Internal contributors can use a forking workflow or a branching workflow with
Pull Requests)

We use pull requests to review and discuss changes before merging contributor's
additions or new features into `nceas-learning-hub/coreRlessons`. See documentation on pull requests [here](https://help.github.com/articles/about-pull-requests/) and [here](https://www.atlassian.com/git/tutorials/making-a-pull-request).

To contribute to this repository, use these steps to get started:

1. `Fork` the `nceas-learning-hub/coreRlessons` repository by clicking the "Fork" button 
    at the top right of the repository 
    a. In the "Create a new fork" screen make sure the Owner is set to your 
       GitHub user and don't change the repository name
    b. If you need access to more branches than `main` in the `nceas-learning-hub/coreRlessons` 
       repository, uncheck "Copy the `main` branch only"
2. Clone `{yourUsername}/coreRlessons` (this is your forked copy) into your workspace onto your computer
3. Sync your forked repository with the upstream repository. It's important to 
   note that no matter how you are contributing, you should check that the branch 
   you're working on in your forked repository is in the same state as the same 
   branch in the upstream repository. [See section 6 for more detailed instructions on how to sync your forked respository with the upstream repository](#6-syncing-your-forked-repository-with-the-upstream-repository)

## 4. Fixing a bug in `coreR`

For details on contributing to the `coreR` package, see the [`coreR` contributing document](https://github.com/nceas-learning-hub/coreR/blob/main/contributing.md).


## 5. Contributing or modifying a lesson to `coreRlessons`

1. Add an [issue](https://github.com/nceas-learning-hub/coreRlessons/issues) describing 
   your planned changes, or add a comment to an existing issue
2. **Make sure you're working in the right branch and sync changes / pull from the 
   upstream respository before you start making changes.** [See section 6](#6-syncing-your-forked-repository-with-the-upstream-repository) 
    a. Once you've identified which branch you want to work in check that the 
       branch in your forked repository is in "Sync" with `nceas-learning-hub/coreRlessons`
       (aka the upstream repository) *before* you start making changes. This will 
       ensure that your forked repository (`{yourUsername}/coreRlessons`) and the 
       upstream repository (`nceas-learning-hub/coreRlessons`) are in the same state 
       and will prevent merge conflicts from occurring when you PR.
4. Make your changes and `push` changes to your forked repository 
5. Open a Pull Request (PR). Make sure that the base repository is 
   `nceas-learning-hub/coreRlessons` and the head repository is `{yourUsername}/coreRlessons`. 
   It's also important to double check that the base branch of `nceas-learning-hub/coreRlessons` 
   matches up with the compare branch in `{yourUsername}/coreRlessons`. Aka make sure that 
   you're PRing (and ultimately, merging) the right branches
6. Assign someone from the NCEAS Learning Hub GitHub Organization to review your changes
7. Your reviewer may request changes before merging in the changes and closing the PR. 
   This discussion can take place in the "Conversation" tab of the PR webpage
8. Once changes have been confirmed, the reviewer will merge in the changes and 
   close the PR, and you're done!
   

## 6. Adding a course

Course materials are contained in repositories in the `nceas-learning-hub` Github
Organization.  The functionality of the `coreR` package sets up the structure of
the course, and pulls lesson content (including images and data as needed) from
the `coreRlessons` R package.

If you wish to customize your course, create the course with the provided lessons
and then simply modify the Quarto documents in the `lessons` folder, and put associated
images and data into the `images` and `data` folders inside the appropriate subfolder.

You are welcome to use `coreR` and `coreRlessons` to create training events in a
different location or organization.  If you wish to have your training materials
hosted on the `nceas-learning-hub` organization, contact one of the
owners/administrators of the organization.

Because the training event repositories are independent of `coreR` and `coreRlessons`
packages, modifications (e.g., bug fixes, modifications to content) cannot be
automatically synced back to those package repositories.  Instead, use the fork
(or branch) workflow noted above.

## 7. Materials Development Workflow

### Material Development Guidelines

Lesson Quarto scripts are stored in `inst/lessons/`. Lesson images and data are stored in 
`inst/lesson_images` and `inst/lesson_data` respectively, within subfolders that 
bear the same filename as the Quarto script (but without the .qmd extension).

Lesson filenames should follow this naming convention:

* Use `lower_snakecase`
* Start with the tool or type of lesson (`r_`, `github_`, `activity_`, `lecture_`)
* Use `r_` prefix for lessons that include R and RStudio topics
* Use `github_` prefix for lessons that include Git and GitHub topics
* Use `lecture_` for all the non-technical lessons that are presented in a more lecture format
* Use `activity_` for all hands-on activities that do not involve coding (generally associated to a non-technical lesson)

For example, there is a "Working in R and RStudio" lesson, `r_programming_introduction.qmd`.

* The script resides in: `inst/lessons/r_programming_introduction.qmd`
* Images associated with this script reside in: `inst/lesson_images/r_programming_introduction/<image files>`
* Data associated with this script reside in: `inst/lesson_data/r_programming_introduction/<data files>`

Note that the file structure created by the coreR package renames `lesson_images` 
and `lesson_data` to `images` and `data`, so the pathnames to images inside the
Quarto scripts should look like: `![image alt text](images/r_programming_instruction/image_file.png)`

In expanding existing materials you are welcome to:

- add a new section as an qmd to the `inst/lessons` directory
- add or edit material to existing qmd sections

We ask that you not:

- delete content wholesale. Content that you are not teaching can be omitted from
  the `coreR::setup_lessons()` function call, and such lessons will remain safely tucked 
  away inside `coreRlessons`.
- commit very large data or presentation files


## 8. Building the book

While there are many workflows for building the qmd files into the rendered Quarto book,
probably the simplest to use during authoring is to click on the Build tab and select Render Book,
assuming your working directory is the root of the coreR repository. This
will load the rendered view into the RStudio `Viewer` pane (or an external browser).


