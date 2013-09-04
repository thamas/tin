api = 2
core = 7.x

; core
projects[drupal][type] = core

; profile
projects[tin_profile][type] = profile
projects[tin_profile][download][type] = git
projects[tin_profile][download][url] = https://github.com/thamas/tin.git
projects[tin_profile][download][branch] = master
projects[tin_profile][directory_name] = tin

; Contrib modules
projects[admin_menu][subdir] = contrib
projects[admin_menu][version] = 3.0-rc4
projects[features][subdir] = contrib
projects[features][version] = 2.0-beta2
projects[variable][subdir] = contrib
projects[variable][subdir] = 2.3
projects[views][subdir] = contrib
projects[views][version] = 3.7
projects[ctools][subdir] = contrib
projects[ctools][version] = 1.3
projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.0
projects[pathauto][subdir] = contrib
projects[pathauto][version] = 1.2
projects[entity][subdir] = contrib
projects[entity][version] = 1.2
projects[maillog][version] = 1.x-dev
projects[maillog][subdir] = contrib

;Translation
projects[i18n][subdir] = contrib
projects[i18n][version] = 1.10
projects[l10n_update][subdir] = contrib
projects[l10n_update][version] = 1.2
