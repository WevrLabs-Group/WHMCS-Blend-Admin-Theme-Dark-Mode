<?php

/***************************************************************************
// *                                                                       *
// * Blend Dark Mode                                                       *
// * This addon adds dark mode to the Blend admin theme                    *
// * Compatible with WHMCS Version: 8.x                                    *
// * https://github.com/WevrLabs-Group/WHMCS-Blend-Admin-Theme-Dark-Mode   *
// *                                                                       *
// *************************************************************************
// *                                                                       *
// * Maintained by: WevrLabs Hosting                                       *
// * Email: hello@wevrlabs.net                                             *
// * Website: https://wevrlabs.net                                         *
// *                                                                       *
// *************************************************************************/

use WHMCS\Database\Capsule;

function admin_blend_maincss_hook($vars) 
{

	if ($vars['template'] == "blend" ) {
		return '<link href="../modules/addons/darkblend/css/dark-blend.css" rel="stylesheet" type="text/css" />';
	}
}

function admin_blend_customcss_hook($vars)
{

	if ($vars['template'] == "blend") {
		return '<link href="../modules/addons/darkblend/custom.css" rel="stylesheet" type="text/css" />';
	}
}

add_hook("AdminAreaHeadOutput", 1, "admin_blend_maincss_hook");
add_hook("AdminAreaFooterOutput", 1, "admin_blend_customcss_hook");
