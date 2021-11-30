<?php

/***************************************************************************
// *                                                                       *
// * Blend Dark Mode                                                       *
// * This addon adds dark mode to the Blend admin theme                    *
// * Compatible with WHMCS Version: 8.x                                    *
// *                                                                       *
// *************************************************************************
// *                                                                       *
// * Contributed by: WevrLabs Hosting                                      *
// * Email: hello@wevrlabs.net                                             *
// * Website: https://wevrlabs.net                                         *
// *                                                                       *
// *************************************************************************/

function admin_blend_css_hook($vars) 
{
	global $CONFIG;

	if ($vars['template'] == "blend" ) {
		return '<link href="../modules/addons/darkblend/css/dark-blend.css" rel="stylesheet" type="text/css" />';
	}
}
add_hook("AdminAreaHeadOutput", 1, "admin_blend_css_hook");
