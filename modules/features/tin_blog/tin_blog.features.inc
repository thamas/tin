<?php
/**
 * @file
 * tin_blog.features.inc
 */

/**
 * Implements hook_node_info().
 */
function tin_blog_node_info() {
  $items = array(
    'blog' => array(
      'name' => t('Blog'),
      'base' => 'node_content',
      'description' => '',
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
