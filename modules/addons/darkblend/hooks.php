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

function admin_blend_maincss_hook($vars)  {

	if ($vars['template'] == "blend" ) {
		return '<link href="../modules/addons/darkblend/css/dark-blend.css" rel="stylesheet" type="text/css" />';
	}
}

function admin_blend_customcss_hook($vars) {

	if ($vars['template'] == "blend" && file_exists(ROOTDIR . "/modules/addons/darkblend/custom.css")) {
		return '<link href="../modules/addons/darkblend/custom.css?ver=' . time() . '" rel="stylesheet" type="text/css" />';
	}
}

function admin_blend_stats_hook($vars) {

	$v8 = Capsule::select(Capsule::raw('SELECT value FROM tblconfiguration WHERE setting = "Version" LIMIT 1'))[0]->value;
	if (explode('.', $v8)[0] != '8') : return false;
	endif;
	
	$showTime		= Capsule::table('tbladdonmodules')->where('module', 'darkblend')->where('setting', 'datetime_enable')->first();
	$showTickets	= Capsule::table('tbladdonmodules')->where('module', 'darkblend')->where('setting', 'ticketcount_enable')->first();
	$ticketsTotal 	= Capsule::select(Capsule::raw('SELECT COUNT(t1.id) AS total FROM tbltickets AS t1 LEFT JOIN tblticketstatuses AS t2 ON t1.status = t2.title WHERE t2.showawaiting = "1" AND merged_ticket_id = "0"'))[0]->total;	


	if ($showTickets->value && $ticketsTotal > 0) {

		$ticketsAwaitCol 	= 'style="color: #f71616;font-size: 20px"';
		$tada 			 	= 'animation: tada 1s both infinite';
		$ticketText 		= $ticketsTotal . ' ' . AdminLang::trans('stats.ticketsawaitingreply');

		$awaitingTicketsJS 	= <<<HTML
        <li><a href="supporttickets.php" class="tickets-nav" data-toggle="tooltip" data-placement="bottom" title="{$ticketText}" data-original-title="{$ticketText}" style="word-wrap:break-word;{$tada}">
			<small class="v8navstatsul">
				<span class="icon-container"><i class="fad fa-comments"></i></span>
				<span class="v8navstats" {$ticketsAwaitCol}>{$ticketsTotal}</span>
			</small>
		</a></li>
HTML;
	}

	if ($showTime->value) {
		$time = '<li class="nav-time"><small><span class="v8navstats"><span class="icon-container"><i class="icon fas fa-clock"></i></span><span class="nav-date">' . date('M d, H:i') . '</span><span class="nav-clock"></span></span></small></li>';
	}

	return <<<HTML
<script type="text/javascript">
$(document).on('ready', function() {
    $('ul.right-nav').first('li').prepend('{$awaitingTicketsJS}{$time}');
    $("*[id=\'v8navstats\']").on("click", function(e) {
        e.preventDefault();
        $(e.currentTarget).parent("li").toggleClass("expanded");
    });
    $('#v8navstats').next('ul').css({"width": "340px", "left": "-134px"});
    $('span.v8navstats').css({"font-weight": "700"});
});
</script>
HTML;
}

add_hook("AdminAreaHeadOutput", 1, "admin_blend_maincss_hook");
add_hook("AdminAreaFooterOutput", 1, "admin_blend_customcss_hook");
add_hook('AdminAreaHeaderOutput', 1, "admin_blend_stats_hook");