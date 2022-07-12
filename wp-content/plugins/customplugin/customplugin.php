<?php
 /*
   Plugin Name: Custom plugin
   Plugin URI: http://makitweb.com
   description: A simple custom plugin to demonstrate file upload
   Version: 1.0.1
   Author: rahat yasmin
   Author URI: http://makitweb.com/about
 */

// Add menu
function customplugin_menu() {

    add_menu_page("Custom Plugin", "Custom Plugin","manage_options", "myplugin", "uploadfile",plugins_url('/customplugin/img/icon.png'));
    add_submenu_page("myplugin","Upload file", "Upload file","manage_options", "uploadfile", "uploadfile");
   	
}

add_action("admin_menu", "customplugin_menu");

function uploadfile(){
	include "uploadfile.php";
}
