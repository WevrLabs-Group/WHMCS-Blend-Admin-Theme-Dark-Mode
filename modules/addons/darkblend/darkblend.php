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

if (!defined("WHMCS")) {
    die("This file cannot be accessed directly");
}

function darkblend_config()
{
    include_once "logo.php";

    return [
        'name'        => 'Blend Dark Mode',
        'description' => 'This module adds a dark mode for WHMCS admin theme Blend. To enable the dark UI, simply Activate the addon, and to disable the dark mode, Deactivate the addon.',
        'author'      => "<a href='https://wevrlabs.net' target='_blank' title='contributed by WevrLabs Hosting'><img style='padding:7px;width:150px' src='$logo' alt='contributed by WevrLabs Hosting'></a>",
        'language'    => 'english',
        'version'     => '3.1.0',
        "fields"      => [
            'datetime_enable'           => [
                'FriendlyName' => 'Display date and time in main navbar',
                'Type'         => 'yesno',
                'Size'         => '55',
                'Default'      => 'yes',
                'Description'  => 'Check this to display date and time in the main navbar.',
            ],
            'ticketcount_enable'           => [
                'FriendlyName' => 'Display open tickets count in main navbar',
                'Type'         => 'yesno',
                'Size'         => '55',
                'Default'      => 'yes',
                'Description'  => 'Check this to display open tickets count in the main navbar.',
            ],
        ],
    ];
}
