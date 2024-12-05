#' Find image files associated with lesson scripts
#'
#' @return nothing

find_images <- function() {
  ### Script to quickly (and roughly) identify figures in scripts, and check
  ### whether the image files exist in coreRlessons yet

  fs <- list.files(here::here('inst/lessons'), full.names = TRUE)

  scripts <- data.frame(txt = lapply(fs, readr::read_file) |> unlist(),
                        f = basename(fs)) |>
    dplyr::mutate(txt = stringr::str_split(txt, '\\n')) |>
    tidyr::unnest(txt)

  ### get bare image file names
  images <- scripts |>
    dplyr::filter(stringr::str_detect(txt, '!\\[\\]|images/')) |>
    dplyr::filter(!stringr::str_detect(txt, 'ggsave')) |>
    dplyr::mutate(img_file = stringr::str_extract(txt, '[\\(\"\'].+?[\\)\"]'),
           img_file = stringr::str_remove_all(img_file, '[\\(\\)\"\']')) |>
    dplyr::mutate(dest_dir = sprintf(here::here('inst/lesson_images/%s'), stringr::str_remove(basename(f), '.qmd'))) |>
    dplyr::mutate(dest_file = file.path(dest_dir, basename(img_file)))

  ### copy from nceas-training repo to coreRlessons repo.
  ### NOTE: drop files where there is an existing directory; these might be
  ### old filenames or commented out - assume scripts with existing image
  ### directories already work!

  missing <- images |>
    dplyr::filter(!file.exists(dest_file)) |>
    dplyr::mutate(src_dir = here::here('../nceas-training/materials/images')) |>
    dplyr::mutate(src_file = file.path(src_dir, stringr::str_remove(img_file, '.*images/'))) |>
    dplyr::filter(!dir.exists(dest_dir))

  if(nrow(missing) > 0) {
    ### set up new folders in the destination
    dest_dirs <- missing$dest_dir |> unique()
    message('Creating new image folders in destination: \n', paste0('\u2022 ', basename(dest_dirs), collapse = '\n'))
    new_dirs <- sum(sapply(dest_dirs, dir.create))
    if(length(dest_dirs) != new_dirs) stop('Some new image directories were unable to be created!')

    src_files <- missing$src_file
    dest_files <- missing$dest_file

    message('Copying image files to destination: \n',
            paste0('\u2022 ', stringr::str_remove(dest_files, '.+lesson_images/'), collapse = '\n'))
    new_fs <- sum(file.copy(from = src_files, to = dest_files))
    if(length(src_files) != new_fs) stop('Some new image files were unable to be created!')

    copy_check <- missing |>
      dplyr::filter(!file.exists(dest_file))
  }
}
