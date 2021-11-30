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

use WHMCS\Database\Capsule;

if (!defined("WHMCS")) {
    die("This file cannot be accessed directly");
}

function darkblend_config()
{
    include_once "logo.php";

    return [
        'name'        => 'Blend Dark Mode',
        'description' => 'This module adds a dark mode for WHMCS admin theme Blend. To enable the dark UI, simply Activate the addon, and to disable the dark mode, simple Deactivate the addon.',
        'author'      => "<a href='https://wevrlabs.net' target='_blank' title='contributed by WevrLabs Hosting'><img style='padding:7px;width:150px' src='$logo' alt='contributed by WevrLabs Hosting'></a>",
        'language'    => 'english',
        'version'     => '3.0.0',
    ];
}
