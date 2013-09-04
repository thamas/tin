<?php

function tin_install_tasks() {
  return array(
    'tin_add_language' => array(),
    'tin_set_languages' => array(
      'display_name' => st('Set up languages'),
        'type' => 'batch'
    ),
  'tin_import_local_po' => array(),
  );
}

function tin_add_language() {
  include_once DRUPAL_ROOT . '/includes/locale.inc';
  locale_add_language('hu', 'Hungarian', 'Magyar', LANGUAGE_LTR, '', '', TRUE, TRUE);
  // set language prefix
  db_update('languages')
  ->fields(array(
    'prefix' => 'en',
    'native' => 'En'
  ))
  ->condition('language', 'en')
  ->execute();

  db_update('languages')
  ->fields(array(
    'prefix' => '',
    'native' => 'Hu'
  ))
  ->condition('language', 'hu')
  ->execute();

  variable_set("i18n_string_source_language", "en");
}

function tin_set_languages() {
  // Builds batch with l10n_update module.
  include_once DRUPAL_ROOT . '/includes/locale.inc';

  // Updates the translations.
  $history = l10n_update_get_history();
  module_load_include('check.inc', 'l10n_update');
  $available = l10n_update_available_releases();
  $updates = l10n_update_build_updates($history, $available);

  module_load_include('batch.inc', 'l10n_update');
  $updates = _l10n_update_prepare_updates($updates, NULL, array());
  $batch = l10n_update_batch_multiple($updates, LOCALE_IMPORT_KEEP);

  return $batch;
}

function tin_import_local_po() {
  return;
}
