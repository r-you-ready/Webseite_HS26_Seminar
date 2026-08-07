# Jeweils ergänzen mit den entsprechenden Files
files <- c(
  "loesung_1.qmd",
  "loesung_2.qmd",
  "loesung_3.qmd",
  "loesung_4.qmd",
  "loesung_5.qmd"
)

for (f in files) {
  
  from <- file.path("scripts/02_excercises", f)
  
  new_name <- sub("\\.qmd$", "_solution.qmd", f)
  
  to <- file.path("scripts/02_excercises/downloads", new_name)
  
  dir.create(dirname(to), recursive = TRUE, showWarnings = FALSE)
  
  file.copy(from, to, overwrite = TRUE)
}