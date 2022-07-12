<?php

/**
* Plugin Name: Embed any file
* Author: Rahat Yasmin
* Description: A simple wordpress plugin to embed file.
* Version: 1.0
*/

// Load assets for wp-admin when editor is active


function rahat_gutenberg_notice_block_admin() {
    wp_enqueue_script(
       'gutenberg-notice-block-editor',
       plugins_url( 'block.js', __FILE__ ),
       array( 'wp-blocks', 'wp-element' )
    );
 
wp_enqueue_style(
       'gutenberg-notice-block-editor',
       plugins_url( 'block.css', __FILE__ ),
       array()
    );
 }
 
 add_action( 'enqueue_block_editor_assets', 'rahat_gutenberg_notice_block_admin' );
 
 // Load assets for frontend
 function rahat_gutenberg_notice_block_frontend() {
 
    wp_enqueue_style(
       'gutenberg-notice-block-editor',
       plugins_url( 'block.css', __FILE__ ),
       array()
    );
 }
 add_action( 'wp_enqueue_scripts', 'rahat_gutenberg_notice_block_frontend' );
 