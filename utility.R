# rename *.PNG to *.png --------------------------------------------------------
rename_PNG_to_png <- function (x) {
  files_to_rename <- list.files(path = "./figures", pattern = "*.PNG", full.names = TRUE)
  if (files_to_rename |> length() == 0) return(message("nothing change"))
  
  new_name <- files_to_rename |> tools::file_path_sans_ext() |> paste0(".png")
  result <- file.rename(files_to_rename, new_name) |> sum()
  message(paste0(result, " files has been renamed."))
}

rename_PNG_to_png()
