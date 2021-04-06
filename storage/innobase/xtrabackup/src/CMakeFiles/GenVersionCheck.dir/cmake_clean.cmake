FILE(REMOVE_RECURSE
  "CMakeFiles/GenVersionCheck"
  "version_check_pl.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/GenVersionCheck.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
