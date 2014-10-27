<?php
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
if (!function_exists("system_form_install_configure_form_alter")) {
  function system_form_install_configure_form_alter(&$form, $form_state) {
    $form['site_information']['site_name']['#default_value'] = 'd7base';
  }
}

/**
 * Implements hook_form_alter().
 *
 * Select the current install profile by default.
 */
if (!function_exists("system_form_install_select_profile_form_alter")) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'd7base';
    }
  }
}

/**
 * Implements hook_install_tasks()
 */
function d7base_install_tasks(&$install_state) {
  $tasks = array();
  
  $tasks['d7base_finalize'] = array(
    'type' => 'normal',
  );

  return $tasks;
}

function d7base_finalize() {
  
  //set the configuration path for the Configuration Management module
  variable_set('configuration_config_path','sites/default/config');

  //Enable modules that cannot be installed as dependencies in the .info file
  $enable = array(
    'fences',
  );
  module_enable($enable);
}
