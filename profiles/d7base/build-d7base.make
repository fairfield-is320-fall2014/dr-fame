; d7base make file for local development
core = "7.x"
api = "2"

projects[drupal][version] = "7.x"
; include the d.o. profile base
includes[] = "drupal-org.make"

; Download the OpenAtrium install profile and recursively build all its dependencies:
projects[d7base][type] = profile
projects[d7base][download][type] = git
projects[d7base][download][url] = "https://github.com/christopherhuntley/d7base.git"
