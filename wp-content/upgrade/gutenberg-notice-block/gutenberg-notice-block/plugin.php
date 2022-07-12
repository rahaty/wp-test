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

//custom function to upload data
add_action('admin_menu', 'test_plugin_setup_menu');
   function test_plugin_setup_menu(){
       add_menu_page( 'Test Plugin Page', 'Test Plugin', 'manage_options', 'test-plugin', 'test_init' );
   }
    
    function test_init(){
       test_handle_post();
   ?>   
       <h2>Upload a File</h2>
       <!-- Form to handle the upload - The enctype value here is very important -->
       <form  method="post" enctype="multipart/form-data">
           <input type='file' id='test_upload_pdf' name='test_upload_pdf'></input>
           <?php submit_button('Upload') ?>
       </form>
   <?php
    }
    function wpse_custom_upload_dir( $dir_data ) {
        // $dir_data already you might want to use
        $custom_dir = 'test-plugin';
        return [
            'path' => $dir_data[ 'basedir' ] . '/' . $custom_dir,
            'url' => $dir_data[ 'url' ] . '/' . $custom_dir,
            'subdir' => '/' . $custom_dir,
            'basedir' => $dir_data[ 'error' ],
            'error' => $dir_data[ 'error' ],
        ];
    }
   function test_handle_post()
   {
       // First check if the file appears on the _FILES array
       if(isset($_FILES['test_upload_pdf'])){
           $pdf = $_FILES['test_upload_pdf'];
           add_filter( 'upload_dir', 'wpse_custom_upload_dir' );
           $uploaded = media_handle_upload('test_upload_pdf', 0);
           remove_filter( 'upload_dir', 'wpse_custom_upload_dir' );

            if(is_wp_error($uploaded))
            {
               echo "Error uploading file: " . $uploaded->get_error_message();
            } 
            else 
            { 
   ?>
                <iframe src="https://cdn.a1office.co/wp-content/uploads/2022/07/Employee-Joining-Form-_3_-5.pdf"  width="900px" height="500px" ></iframe> 
               <?php
            }
        } 
    }
 