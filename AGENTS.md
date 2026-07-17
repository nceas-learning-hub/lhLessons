# AGENTS.md

Guidance for working in the `lhLessons` repository (an R package of Quarto lesson
content used by the `lhCore` package to build NCEAS Learning Hub training courses).

## Repository Structure

- `inst/lessons/*.qmd` — the lesson content itself (one Quarto document per lesson).
- `inst/lesson_images/<lesson_name>/` — images for a given lesson (folder name matches
  the `.qmd` filename, minus extension).
- `inst/lesson_data/<lesson_name>/` — data files for a given lesson (same folder naming
  convention).
- `contributing.md` — full contributor workflow (forking, PRs, naming conventions,
  building the book).

Lesson filenames use `lower_snake_case` and are prefixed by lesson type/topic:
`r_`, `github_`, `git_`, `lecture_`, `activity_`, `quarto_`, `shiny_`, `synthesis_`.

## Lesson YAML Front Matter Convention

Every lesson `.qmd` file has a YAML header with `title`, plus (as of July 2026)
`categories` and `description` fields, e.g.:

```yaml
---
title: Git and GitHub Setup
categories: [git, github, setup, beginner]
description: "Configures Git's global options and sets up authentication with GitHub via a Personal Access Token."
---
```

- `description` is a one- or two-sentence summary of what the lesson covers.
- `categories` draws from a **controlled vocabulary** (see below) spanning three
  facets: topic/tool, format, and level. Not every lesson needs a tag from every facet
  (e.g. `blank_placeholder.qmd` only has `template`), but most lessons have at least one
  topic tag, one format tag, and one level tag.
- When adding a **new** lesson, add these two fields following the same pattern,
  reusing existing controlled-vocabulary terms wherever the content fits, and treat
  proposing a new term (see below) as a deliberate, infrequent decision.
- Do not alter lesson prose/content when only updating `categories`/`description`.

### Controlled Vocabulary

**Topic/tool:**
`git`, `github`, `collaboration`, `r-basics`, `functions`, `packages`,
`parallel-computing`, `data-visualization`, `tidyverse`, `data-wrangling`,
`tidy-data`, `spatial-data`, `quarto`, `data-management`, `reproducibility`,
`provenance`, `communication`, `project-management`, `team-science`, `facilitation`,
`synthesis-science`, `computing-setup`, `machine-learning`, `tidymodels`, `apis`,
`shiny`, `dashboards`, `websites`

**Format:** `lecture`, `activity`, `setup`, `template`

**Level:** `beginner`, `intermediate`, `advanced`

If a new lesson genuinely doesn't fit any existing topic tag, it's fine to introduce a
new one — just keep it lowercase, hyphenated, and singular/general like the existing
terms, and mention the addition when summarizing the change.

## Current Lesson Inventory (46 lessons)

### Git & GitHub
- `git_setup.qmd` — Git and GitHub Setup (setup, beginner)
- `github_introduction.qmd` — Git and GitHub Introduction (lecture, beginner)
- `github_collaboration.qmd` — Collaborating with Git and GitHub (lecture, intermediate)
- `git_advanced_git_github.qmd` — Advanced Git and GitHub (lecture, advanced)
- `github_project_management.qmd` — GitHub for Project Management (lecture, intermediate)
- `github_publishing.qmd` — Publishing to the Web (lecture, intermediate)
- `r_git_install_guide.qmd` — Installing R and Git on Your Computer (setup, beginner)

### R Programming Fundamentals
- `r_programming_introduction.qmd` — Working in R & RStudio (lecture, beginner)
- `r_functions.qmd` — Writing Functions (lecture, intermediate)
- `r_practice_functions.qmd` — Practice Session: Functions (activity, beginner)
- `r_packages.qmd` — Creating R Packages (lecture, intermediate)
- `r_parallel_computing.qmd` — Parallel Computing in R (lecture, advanced)

### Data Wrangling & Tidy Data
- `lecture_tidy_data.qmd` — Tidy Data (lecture, intermediate)
- `r_tidyverse_clean_wrangle.qmd` — Cleaning & Wrangling Data (lecture, intermediate)
- `r_practice_tidy_data_joins.qmd` — Practice Session: Joins (activity, intermediate)
- `r_practice_clean_wrangle_visualize.qmd` — Practice Session: Collaborative Report (activity, intermediate)

### Data Visualization & Spatial
- `r_data_visualization.qmd` — Data Visualization (lecture, intermediate)
- `r_geospatial_vector_analysis.qmd` — Working with Spatial Data (lecture, advanced)
- `r_geospatial_raster_analysis.qmd` — Geospatial Raster Analysis in R (lecture, advanced)

### Quarto, Dashboards & Apps
- `r_quarto_literate_analysis.qmd` — Literate Analysis with Quarto (lecture, beginner)
- `quarto_websites.qmd` — Building a Website with Quarto (lecture, intermediate)
- `quarto_dashboards_reports.qmd` — Interactive Dashboards with Quarto (lecture, intermediate)
- `shiny_introduction.qmd` — Interactivity with Shiny Apps (lecture, intermediate)

### Machine Learning & APIs
- `r_machine_learning_tidymodels.qmd` — Machine Learning with `tidymodels` (lecture, advanced)
- `r_programmatic_data_access.qmd` — Programmatic Data Access in R (lecture, intermediate)

### Data Management & Reproducibility
- `lecture_data_management.qmd` — Data Management Essentials (lecture, intermediate)
- `lecture_data_mgmt_discovery.qmd` — Data Management & Data Discovery (lecture, intermediate)
- `lecture_data_mgmt_reproducibility.qmd` — Data Management and Reproducibility (lecture, beginner)
- `lecture_publishing_data.qmd` — Publishing Synthesis Data (lecture, intermediate)
- `lecture_project_doc_organization.qmd` — Project Documentation & Organization (lecture, beginner)
- `r_provenance_reproducibility.qmd` — Provenance and Reproducibility (lecture, intermediate)
- `activity_reproducibility_lego.qmd` — Reproducibility: a LEGO Activity (activity, beginner)

### Computing Setup
- `positron_setup.qmd` — Positron Setup (setup, beginner)
- `r_rstudio_server_setup.qmd` — RStudio Server Setup (setup, beginner)

### Communication
- `lecture_communication_plan.qmd` — Developing a Strategic Communications Plan (lecture, beginner)
- `lecture_communication_results.qmd` — Communicating Your Results (lecture, beginner)
- `lecture_science_communication.qmd` — Science Communication Fundamentals (lecture, beginner)
- `lecture_one_pagers.qmd` — One Pagers with Google Documents (lecture, beginner)

### Project Management, Team Science & Facilitation
- `lecture_proj_mgmt_team_science.qmd` — Project Management & Team Facilitation (lecture, intermediate)
- `lecture_github_for_proj_mgmt.qmd` — GitHub for Project Management [short workshop version] (lecture, beginner)
- `lecture_facilitating_working_group.qmd` — Facilitating a Successful Working Group (lecture, beginner)
- `activity_thinking_preferences.qmd` — Thinking Preferences & Meeting Design (activity, beginner)
- `synthesis_crafting_project_ideas.qmd` — Crafting Synthesis Project Ideas (lecture, intermediate)
- `synthesis_logic_models.qmd` — Logic Models and Synthesis Development (lecture, intermediate)
- `lecture_intellectual_credit.qmd` — Intellectual Credit (lecture, intermediate)

### Templates
- `blank_placeholder.qmd` — Blank placeholder lesson (template)

## Notes for Future Updates

- When lessons are added or removed, update both the vocabulary section (if new terms
  are introduced) and the inventory list above.
- The inventory count (46, as of July 2026) is a quick sanity check — compare against
  `ls inst/lessons/*.qmd | wc -l` when this file is next revisited.
