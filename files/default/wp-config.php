<%# coding: UTF-8 %>
<?php
define('DB_NAME', 'wordpress');

define('DB_USER', 'wordpress');

define('DB_PASSWORD', 'wordpress');

define('DB_HOST', 'localhost');

define('DB_CHARSET', 'utf8');

define('DB_COLLATE', '');

define('AUTH_KEY',         '*@]|+=-s-OGLSGxf05x5x^_RQ2a+SzK8Whlyh/Jrr*WY/3]*g=f0 ll}`N2GY21_');
define('SECURE_AUTH_KEY',  'vYU~C/t0[lznY}Sx=J@%7orH3Uxsemu+4Jm&x.8rM#pYv:o&fo0Y6|P iLN90M(m');
define('LOGGED_IN_KEY',    '<{#WCDfbFhJbm)65nw[|;:k7$ykH}o}|Wf3|b#z>H0Z7qam!9J$=31^d+1#)IF|e');
define('NONCE_KEY',        '4TecFv-+*-)|*Zi>x06$1vpB{t9WI0oo/A:}L~]_1qQ[a5jX(I#jVv8$#6(sSymH');
define('AUTH_SALT',        '1It9O+LhF|}f$,P6!/|?~wG7}-6}E*!NQX|VJ%bT.Cc%AwcYr+6 7zS||<=|:SXv');
define('SECURE_AUTH_SALT', 'IdO{gliySvhW]QA`gYj6+b~9MsT++x1a(Q,-@4vN=+uOOydamMX (* wnwpqEt>2');
define('LOGGED_IN_SALT',   '.u1X@O+Ay*P`%%a(`Ah=2h Nmbaq?1`o}P~%lql&0Lah5l`+EHvb1vb#;<K_Bh4Y');
define('NONCE_SALT',       'a9#Pp7muGNBqsm1>nE&!+9#=u7DP2y.5|MoEZ;2Z=,|-HlT?}tNe:2|W0pE^JbNp');
$table_prefix  = 'wp_';

define('WP_DEBUG', false);

if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

require_once(ABSPATH . 'wp-settings.php');
?>
