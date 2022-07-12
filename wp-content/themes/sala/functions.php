<?php
/**
 * Sala functions and definitions
 *
 * @package sala
 */
remove_filter( 'the_content', 'wpautop' );
remove_filter( 'the_excerpt', 'wpautop' );

require_once get_template_directory() . '/inc/init.php';
