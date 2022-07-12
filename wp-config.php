<?php
define('REVISR_WORK_TREE', '/var/www/html/'); // Added by Revisr
define('REVISR_GIT_PATH', ''); // Added by Revisr
define( 'WP_CACHE', true ); // Added by WP Rocket

 // WP-Optimize Cache
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */
// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dev_a1office' );
/** Database username */
define( 'DB_USER', 'devA1office' );
/** Database password */
define( 'DB_PASSWORD', 'myUser@!devA1office' );
/** Database hostname */
define( 'DB_HOST', 'localhost' );
/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );
/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
/** To disable to many redirects. */
define('WP_HOME','https://dev.a1office.co');
define('WP_SITEURL','https://dev.a1office.co');
$_SERVER['HTTPS'] = 'on';
/* Added my devloper to connect DigitalOcean Space and WordPress */
define( 'AS3CF_SETTINGS', serialize( array(
    'provider' => 'do',
    'access-key-id' => '3CP2RZ7SNZTPJL33YM5G',
    'secret-access-key' => 'MA5Y7b4lUdPtTPhDI+Bj4fu0eysRnHe5PPOmUeIjQUI',
) ) );
/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'kcx9rtde1i3berhyoydrg4cruxai2ptwj6mnt5gxukuufyyxmkhn1gyfqx1hcopn' );
define( 'SECURE_AUTH_KEY',  '4dirtpiyyzziecs6t8q0k5g7kxz05ypkmpmmruvq3sf0s9mokwbgxdnz1x1tdzov' );
define( 'LOGGED_IN_KEY',    't7oej7icjpc1viy1u2lk9phkov8p7x6lhlkir8xjdckphmqx7b7aioxgyw3uobtm' );
define( 'NONCE_KEY',        's8je39abc3jwh1paqdsd2jhxw0kgv9xgy3stunnbm4ebvps8tk0qe3zbezndxgz2' );
define( 'AUTH_SALT',        'bjfz0c7e7rmornjig5zteynlg5lgw6rw9varwxuef1yfh9wggof9mosmiv3nqria' );
define( 'SECURE_AUTH_SALT', 'eudftodkr3oysnmywujlptcdpc19fz8b51wzwlxacyxfnb1nxkxkjzxdnzilvgef' );
define( 'LOGGED_IN_SALT',   'npectxvhkkxufkvha9db8dxp570qtbhjcxjf1z17dcwoudioavx9rwwk20rf7tdh' );
define( 'NONCE_SALT',       'qxm0k7huqotokinbzox4gvcod1xaykakkfzmd0rgocsfrurkolsnktjijvgu6zsu' );
/**#@-*/
/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wpsa_';
/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );
/* Add any custom values between this line and the "stop editing" line. */
define('WP_MEMORY_LIMIT', '1024M');
/* That's all, stop editing! Happy publishing. */
/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
