{if $sidebar eq "home"}

<div class="sidebar-header">
    <i class="fas fa-star"></i>
    {$_ADMINLANG.global.shortcuts}
</div>
<ul>
    <li><a href="clientsadd.php"><img src="images/icons/clientsadd.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.clients.addnew}</a></li>
    <li><a href="ordersadd.php"><img src="images/icons/ordersadd.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.orders.addnew}</a></li>
    <li><a href="quotes.php?action=manage"><img src="images/icons/quotes.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.quotes.createnew}</a></li>
    <li><a href="todolist.php"><img src="images/icons/todolist.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.utilities.todolistcreatenew}</a></li>
    <li><a href="supporttickets.php?action=open"><img src="images/icons/tickets.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.support.opennewticket}</a></li>
    <li><a href="whois.php"><img src="images/icons/domains.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.utilities.whois}</a></li>
    <li><a href="#" data-toggle="modal" data-target="#modalGenerateInvoices"><img src="images/icons/invoices.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.invoices.geninvoices}</a></li>
    <li><a href="#" data-toggle="modal" data-target="#modalCreditCardCapture"><img src="images/icons/offlinecc.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.invoices.attemptcccaptures}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fas fa-home"></i>
    {$_ADMINLANG.global.systeminfo}
</div>
<div class="content-padded small">
    {$_ADMINLANG.license.regto}: {$licenseinfo.registeredname}<br />{$_ADMINLANG.license.type}: {$licenseinfo.productname}<br />{$_ADMINLANG.license.expires}: {$licenseinfo.expires}<br />{$_ADMINLANG.global.version}: {$licenseinfo.currentversion}{if $licenseinfo.updateavailable}<br /><span class="textred"><b>{$_ADMINLANG.license.updateavailable}</b></span>{/if}
</div>

{elseif $sidebar eq "clients"}

<div class="sidebar-header">
    <i class="fas fa-users"></i>
    {$_ADMINLANG.clients.title}
</div>
<ul class="menu">
    <li><a href="clients.php">{$_ADMINLANG.clients.viewsearch}</a></li>
    <li><a href="clientsadd.php">{$_ADMINLANG.clients.addnew}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fas fa-cube"></i>
    {$_ADMINLANG.services.title}
</div>
<ul class="menu">
    <li><a href="{routePath('admin-services-index')}">{$_ADMINLANG.services.listall}</a></li>
    <li><a href="{routePath('admin-services-shared')}">- {$_ADMINLANG.services.listhosting}</a></li>
    <li><a href="{routePath('admin-services-reseller')}">- {$_ADMINLANG.services.listreseller}</a></li>
    <li><a href="{routePath('admin-services-server')}">- {$_ADMINLANG.services.listservers}</a></li>
    <li><a href="{routePath('admin-services-other')}">- {$_ADMINLANG.services.listother}</a></li>
    <li><a href="{routePath('admin-addons-index')}">{$_ADMINLANG.services.listaddons}</a></li>
    <li><a href="{routePath('admin-domains-index')}">{$_ADMINLANG.services.listdomains}</a></li>
    <li><a href="cancelrequests.php">{$_ADMINLANG.clients.cancelrequests}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fas fa-retweet"></i>
    {$_ADMINLANG.affiliates.title}
</div>
<ul class="menu">
    <li><a href="affiliates.php">{$_ADMINLANG.affiliates.manage}</a></li>
</ul>

{elseif $sidebar eq "orders"}

<div class="sidebar-header">
    <i class="fas fa-shopping-cart"></i>
    {$_ADMINLANG.orders.title}
</div>
<ul class="menu">
    <li><a href="orders.php">{$_ADMINLANG.orders.listall}</a></li>
    <li><a href="orders.php?status=Pending">- {$_ADMINLANG.orders.listpending}</a></li>
    <li><a href="orders.php?status=Active">- {$_ADMINLANG.orders.listactive}</a></li>
    <li><a href="orders.php?status=Fraud">- {$_ADMINLANG.orders.listfraud}</a></li>
    <li><a href="orders.php?status=Cancelled">- {$_ADMINLANG.orders.listcancelled}</a></li>
    <li><a href="ordersadd.php">{$_ADMINLANG.orders.addnew}</a></li>
</ul>

{elseif $sidebar eq "billing"}

<div class="sidebar-header">
    <i class="fas fa-money-bill-wave-alt"></i>
    {$_ADMINLANG.billing.title}
</div>
<ul class="menu">
    <li><a href="transactions.php">{$_ADMINLANG.billing.transactionslist}</a></li>
    <li><a href="gatewaylog.php">{$_ADMINLANG.billing.gatewaylog}</a></li>
    <li><a href="offlineccprocessing.php">{$_ADMINLANG.billing.offlinecc}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fas fa-file-invoice"></i>
    {$_ADMINLANG.invoices.title}
</div>
<ul class="menu">
    <li><a href="invoices.php">{$_ADMINLANG.invoices.listall}</a></li>
    <li><a href="invoices.php?status=Paid">- {$_ADMINLANG.status.paid}</a></li>
    <li><a href="invoices.php?status=Draft">- {$_ADMINLANG.status.draft}</a></li>
    <li><a href="invoices.php?status=Unpaid">- {$_ADMINLANG.status.unpaid}</a></li>
    <li><a href="invoices.php?status=Overdue">- {$_ADMINLANG.status.overdue}</a></li>
    <li><a href="invoices.php?status=Cancelled">- {$_ADMINLANG.status.cancelled}</a></li>
    <li><a href="invoices.php?status=Refunded">- {$_ADMINLANG.status.refunded}</a></li>
    <li><a href="invoices.php?status=Collections">- {$_ADMINLANG.status.collections}</a></li>
    <li><a href="invoices.php?status=Payment%20Pending">- {$_ADMINLANG.status.paymentpending}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fas fa-user-clock"></i>
    {$_ADMINLANG.billableitems.title}
</div>
<ul class="menu">
    <li><a href="billableitems.php">{$_ADMINLANG.billableitems.listall}</a></li>
    <li><a href="billableitems.php?status=Uninvoiced">- {$_ADMINLANG.billableitems.uninvoiced}</a></li>
    <li><a href="billableitems.php?status=Recurring">- {$_ADMINLANG.billableitems.recurring}</a></li>
    <li><a href="billableitems.php?action=manage">{$_ADMINLANG.billableitems.addnew}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fas fa-file-signature"></i>
    {$_ADMINLANG.quotes.title}
</div>
<ul class="menu">
    <li><a href="quotes.php">{$_ADMINLANG.quotes.listall}</a></li>
    <li><a href="quotes.php?validity=Valid">- {$_ADMINLANG.status.valid}</a></li>
    <li><a href="quotes.php?validity=Expired">- {$_ADMINLANG.status.expired}</a></li>
    <li><a href="quotes.php?action=manage">{$_ADMINLANG.quotes.createnew}</a></li>
</ul>

{elseif $sidebar eq "support"}

{if $inticket}

<div class="sidebar-header">
    <i class="fas fa-comment-alt-check"></i>
    {$_ADMINLANG.support.ticketinfo}
</div>
<div class="content-padded">
    <span class="sub-header">{$_ADMINLANG.fields.owner}</span>
    <div class="bottom-margin-5">
        {if $userid}
            <a href="clientssummary.php?userid={$userid}"{if $clientgroupcolour} style="background-color:{$clientgroupcolour}"{/if} target="_blank">
                {$clientname}
            </a>
            {if $contactid}
                (<a href="clientscontacts.php?userid={$userid}&contactid={$contactid}"{if $clientgroupcolour} style="background-color:{$clientgroupcolour}"{/if} target="_blank">{$contactname}</a>)
            {/if}
        {else}
            <a href="{$SCRIPT_NAME}?email={$email|urlencode}">{$name}</a><br />
            {$email}
        {/if}
    </div>

    <span class="sub-header">
        {$_ADMINLANG.fields.requestor}
    </span>
    <div class="bottom-margin-5">
        {$requestor.name}<br>
        <span class="label requestor-type-{$requestor.type_normalised}">
            {if $requestor.type_normalised eq 'operator'}
                {lang key='support.requestor.operator'}
            {elseif $requestor.type_normalised eq 'owner'}
                {lang key='support.requestor.owner'}
            {elseif $requestor.type_normalised eq 'authorizeduser'}
                {lang key='support.requestor.authorizeduser'}
            {elseif $requestor.type_normalised eq 'externaluser'}
                {lang key='support.requestor.externaluser'}
            {elseif $requestor.type_normalised eq 'subaccount'}
                {lang key='support.requestor.subaccount'}
            {elseif $requestor.type_normalised eq 'guest'}
                {lang key='support.requestor.guest'}
            {/if}
        </span>
        <br>
        <div class="small truncate">{$requestor.email}</div>
    </div>

    <span class="sub-header">{$_ADMINLANG.support.department}</span>
    <div class="bottom-margin-5">
        <input type="hidden" id="currentdeptid" value="{$deptid}" />
        <select id="deptid" data-update-type="deptid" class="form-control sidebar-ticket-ajax">
            {foreach from=$departments item=department}
                <option value="{$department.id}"{if $department.id eq $deptid} selected{/if}>{$department.name}</option>
            {/foreach}
        </select>
    </div>
    <span class="sub-header">
        {$_ADMINLANG.support.assignedto}
        <a href="#" onclick="$('#flagto').val({$adminid});$('#flagto').trigger('change');return false" class="pull-right">{$_ADMINLANG.support.me}</a>
    </span>
    <div class="bottom-margin-5">
        <input type="hidden" id="currentflagto" value="{$flag}" />
        <select id="flagto" data-update-type="flagto" class="form-control select-assignto sidebar-ticket-ajax">
            <option value="0">{$_ADMINLANG.global.none}</option>
            {foreach from=$staff item=staffmember}
                <option value="{$staffmember.id}"{if $staffmember.id eq $flag} selected{/if}>{$staffmember.name}</option>
            {/foreach}
        </select>
    </div>
    <span class="sub-header">{$_ADMINLANG.support.priority}</span>
    <div class="bottom-margin-5">
        <input type="hidden" id="currentpriority" value="{$priority}" />
        <select id="priority" data-update-type="priority" class="form-control sidebar-ticket-ajax">
            <option value="High"{if $priority eq "High"} selected{/if}>{$_ADMINLANG.status.high}</option>
            <option value="Medium"{if $priority eq "Medium"} selected{/if}>{$_ADMINLANG.status.medium}</option>
            <option value="Low"{if $priority eq "Low"} selected{/if}>{$_ADMINLANG.status.low}</option>
        </select>
    </div>
    <span class="sub-header">{$_ADMINLANG.support.staffparticipants}</span>
    <div class="bottom-margin-5">
        {foreach from=$staffinvolved item=staffname}
            {$staffname}<br />
        {foreachelse}
            No Replies Yet
        {/foreach}
    </div>
    <span class="sub-header">{$_ADMINLANG.support.tags}</span>
    <input id="ticketTags" value="{$tags|implode:','}" class="selectize-tags" placeholder="{lang key='support.addTag'}" />

    <div class="watch-ticket">
        {if $watchingTicket}
            <button class="btn btn-danger btn-block btn-xs" id="watch-ticket" type="button" data-admin-full-name="{$adminFullName}" data-admin-id="{$adminid}" data-ticket-id="{$ticketid}" data-type="unwatch">
                {lang key="support.unwatchTicket"}
            </button>
        {else}
            <button class="btn btn-info btn-block btn-xs" id="watch-ticket" type="button" data-admin-full-name="{$adminFullName}" data-admin-id="{$adminid}" data-ticket-id="{$ticketid}" data-type="watch">
                {lang key="support.watchTicket"}
            </button>
        {/if}
    </div>
</div>

{foreach $sidebaroutput as $output}
    <div>
        {$output}
    </div>
{/foreach}

<div class="sidebar-header">
    <i class="fas fa-eye"></i>
    {$_ADMINLANG.support.ticketWatchers}
</div>
<div class="content-padded small">
    <ol id="ticketWatchers">
        {foreach $ticketWatchers as $k => $ticketWatcher}
            <li id="ticket-watcher-{$k}">{$ticketWatcher}</li>
        {/foreach}
        <li id="ticket-watcher-0"{if $ticketWatchers} class="hidden"{/if}>{$_ADMINLANG.global.none}</li>
    </ol>
</div>

<div class="sidebar-header">
    <i class="fad fa-copy"></i>
    {$_ADMINLANG.support.ccrecipients}
</div>
<div class="content-padded small">
    {if count($ticketCc) > 0}
        <ol>
            {foreach $ticketCc as $k => $cc}
                <li>{$cc}</li>
            {/foreach}
        </ol>
    {else}
        {lang key="global.none"}
    {/if}
</div>

{else}

<div class="sidebar-header">
    <i class="fas fa-life-ring"></i>
    {$_ADMINLANG.support.title}
</div>
<ul class="menu">
    <li><a href="supportannouncements.php">{$_ADMINLANG.support.announcements}</a></li>
    <li><a href="supportdownloads.php">{$_ADMINLANG.support.downloads}</a></li>
    <li><a href="supportkb.php">{$_ADMINLANG.support.knowledgebase}</a></li>
    <li><a href="supporttickets.php">{$_ADMINLANG.support.supporttickets}</a></li>
    <li><a href="supporttickets.php?action=open">{$_ADMINLANG.support.opennewticket}</a></li>
    <li><a href="supportticketpredefinedreplies.php">{$_ADMINLANG.support.predefreplies}</a></li>
</ul>

{/if}

<div class="sidebar-header">
    <i class="fas fa-search"></i>
    {$_ADMINLANG.support.filtertickets}
</div>
<div class="content-padded">
<form method="post" action="supporttickets.php">
<span class="sub-header">{$_ADMINLANG.fields.status}</span>
<select name="view" class="form-control">
    <option value="any">- Any -</option>
    <option value=""{if $ticketfilterdata.view eq ""} selected{/if}>{$_ADMINLANG.support.awaitingreply} ({$ticketsawaitingreply})</option>
    <option value="flagged"{if $ticketfilterdata.view eq "flagged"} selected{/if}>{$_ADMINLANG.support.flagged} ({$ticketsflagged})</option>
    <option value="active"{if $ticketfilterdata.view eq "active"} selected{/if}>{$_ADMINLANG.support.allactive} ({$ticketsallactive})</option>
{foreach from=$ticketstatuses item=status}
    <option value="{$status.title}"{if $status.title eq $ticketfilterdata.view} selected{/if}>{$status.title} ({$status.count})</option>
{/foreach}
</select>
<span class="sub-header">{$_ADMINLANG.support.department}</span>
<select name="deptid" class="form-control">
    <option value="">- Any -</option>
{foreach from=$ticketdepts item=dept}
    <option value="{$dept.id}"{if $dept.id eq $ticketfilterdata.deptid} selected{/if}>{$dept.name}</option>
{/foreach}
</select>
<span class="sub-header">{$_ADMINLANG.support.subjectmessage}</span>
<input type="text" name="subject" value="{$ticketfilterdata.subject}" class="form-control" />
<span class="sub-header">{$_ADMINLANG.fields.email}</span>
<input type="text" name="email" value="{$ticketfilterdata.email}" class="form-control" />
<input type="submit" value="{$_ADMINLANG.global.filter}  &raquo;" class="btn btn-primary btn-block btn-sm top-margin-5" />
</form>
</div>

{if $inticketlist}

<div class="sidebar-header">
    <i class="fas fa-tags"></i>
    {$_ADMINLANG.support.tagcloud}
</div>
<div class="content-padded">{$tagcloud}</div>

{/if}

{if !$inticket}

<div class="sidebar-header">
    <i class="fas fa-wifi"></i>
    {$_ADMINLANG.networkissues.title}
</div>
<ul class="menu">
    <li><a href="networkissues.php">- {$_ADMINLANG.networkissues.open}</a></li>
    <li><a href="networkissues.php?view=scheduled">- {$_ADMINLANG.networkissues.scheduled}</a></li>
    <li><a href="networkissues.php?view=resolved">- {$_ADMINLANG.networkissues.resolved}</a></li>
    <li><a href="networkissues.php?action=manage">{$_ADMINLANG.networkissues.addnew}</a></li>
</ul>

{/if}

{elseif $sidebar eq "reports"}

<div class="sidebar-header">
    <i class="fas fa-chart-bar"></i>
    {$_ADMINLANG.reports.title}
</div>
<ul class="menu">
    {foreach from=$text_reports key=filename item=reporttitle}
        {if !in_array($filename, $denied_reports)}
            <li><a href="reports.php?report={$filename}">{$reporttitle}</a></li>
        {/if}
    {/foreach}
</ul>

{elseif $sidebar eq "utilities"}

<div class="sidebar-header">
    <i class="fas fa-cubes"></i>
    {lang key='utilities.title'}
</div>
<ul class="menu">
    {if in_array('Update WHMCS', $admin_perms)}
        <li><a href="update.php">{lang key='update.title'}</a></li>
    {/if}
    {if in_array('WHMCSConnect', $admin_perms)}
        <li><a href="whmcsconnect.php">{lang key='whmcsConnect.whmcsConnectName'}</a></li>
    {/if}
    {if in_array('Automation Status', $admin_perms)}
        <li><a href="automationstatus.php">{lang key='utilities.automationStatus'}</a></li>
    {/if}
    {if in_array('View Module Queue', $admin_perms)}
        <li><a href="modulequeue.php">{lang key='utilities.moduleQueue'}</a></li>
    {/if}
    {if in_array('Configure Domain Pricing', $admin_perms)}
        <li><a href="{routePath('admin-utilities-tools-tld-import-step-one')}">{lang key='utilities.tldImport'}</a></li>
    {/if}
    {if in_array('Mass Mail', $admin_perms)}
        <li>
            <a href="{routePath('admin-utilities-tools-email-campaigns')}">
                {lang key='utilities.emailCampaigns.title'}
            </a>
        </li>
    {/if}
    {if in_array('Email Marketer', $admin_perms)}
        <li><a href="utilitiesemailmarketer.php">{lang key='utilities.emailmarketer'}</a></li>
    {/if}
    {if in_array('Link Tracking', $admin_perms)}
        <li><a href="utilitieslinktracking.php">{lang key='utilities.linktracking'}</a></li>
    {/if}
    {if in_array('Calendar', $admin_perms)}
        <li><a href="calendar.php">{lang key='utilities.calendar'}</a></li>
    {/if}
    {if in_array('To-Do List', $admin_perms)}
        <li><a href="todolist.php">{lang key='utilities.todolist'}</a></li>
    {/if}
    {if in_array('WHOIS Lookups', $admin_perms)}
        <li><a href="whois.php">{lang key='utilities.whois'}</a></li>
    {/if}
    {if in_array('Domain Resolver Checker', $admin_perms)}
        <li><a href="utilitiesresolvercheck.php">{lang key='utilities.domainresolver'}</a></li>
    {/if}
    {if in_array('View Integration Code', $admin_perms)}
        <li><a href="systemintegrationcode.php">{lang key='utilities.integrationcode'}</a></li>
    {/if}
    {if in_array('Database Status', $admin_perms)}
        <li><a href="systemdatabase.php">{lang key='utilities.dbstatus'}</a></li>
    {/if}
    {if in_array('System Cleanup Operations', $admin_perms)}
        <li><a href="systemcleanup.php">{lang key='utilities.syscleanup'}</a></li>
    {/if}
    {if in_array('View PHP Info', $admin_perms)}
        <li><a href="systemphpinfo.php">{lang key='utilities.phpinfo'}</a></li>
        <li><a href="{routePath('admin-utilities-system-phpcompat')}">{lang key='utilities.phpcompat'}</a></li>
    {/if}
</ul>

{elseif $sidebar eq "logs"}
<div class="sidebar-header" style="word-wrap: break-word">
    <i class="fas fa-clock"></i>
    {$_ADMINLANG.system.currentTime}
</div>
<div class="content-padded">
    {$dateTimeNowFormatted}
</div>
<div class="sidebar-header">
    <i class="fas fa-file-alt"></i>
    {$_ADMINLANG.utilities.logs}
</div>
<ul class="menu">
    <li><a href="systemactivitylog.php">{$_ADMINLANG.utilities.activitylog}</a></li>
    <li><a href="systemadminlog.php">{$_ADMINLANG.utilities.adminlog}</a></li>
    <li><a href="{routePath('admin-logs-module-log')}">{$_ADMINLANG.utilities.modulelog}</a></li>
    <li><a href="systememaillog.php">{$_ADMINLANG.utilities.emaillog}</a></li>
    <li><a href="systemmailimportlog.php">{$_ADMINLANG.utilities.ticketmaillog}</a></li>
    <li><a href="systemwhoislog.php">{$_ADMINLANG.utilities.whoislog}</a></li>
</ul>

{elseif $sidebar eq "addonmodules"}

{$addon_module_sidebar}

<div class="sidebar-header">
    <i class="fas fa-box-alt"></i>
    {$_ADMINLANG.utilities.addonmodules}
</div>
<ul class="menu">
    {foreach from=$addon_modules key=filename item=addontitle}
    <li><a href="addonmodules.php?module={$filename}">{$addontitle}</a></li>
    {/foreach}
</ul>

{elseif $sidebar eq "config"}

<div class="sidebar-header">
    <i class="fas fa-wrench"></i>
    {$_ADMINLANG.setup.config}
</div>
<ul class="menu">
    <li><a href="configgeneral.php">{$_ADMINLANG.setup.general}</a></li>
    <li><a href="{routePath('admin-apps-index')}">{$_ADMINLANG.setup.appsAndIntegrations}</a></li>
    <li><a href="{routePath('admin-setup-authn-view')}">{$_ADMINLANG.setup.signInIntegrations}</a></li>
    <li><a href="configauto.php">{$_ADMINLANG.setup.automation}</a></li>
    <li><a href="marketconnect.php">{$_ADMINLANG.setup.marketconnect}</a></li>
    <li><a href="{routePath('admin-setup-notifications-overview')}">{$_ADMINLANG.setup.notifications}</a></li>
    <li><a href="{routePath('admin-setup-storage-index')}">{$_ADMINLANG.setup.storage}</a></li>
    <li><a href="configapplinks.php">{$_ADMINLANG.setup.applicationLinks}</a></li>
    <li><a href="configopenid.php">{$_ADMINLANG.setup.openIdConnect}</a></li>
    <li><a href="configemailtemplates.php">{$_ADMINLANG.setup.emailtpls}</a></li>
    <li><a href="configaddonmods.php">{$_ADMINLANG.setup.addonmodules}</a></li>
    <li><a href="configclientgroups.php">{$_ADMINLANG.setup.clientgroups}</a></li>
    <li><a href="configcustomfields.php">{$_ADMINLANG.setup.customclientfields}</a></li>
    <li><a href="configfraud.php">{$_ADMINLANG.setup.fraud}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fad fa-user-friends"></i>
    {$_ADMINLANG.setup.staff}
</div>
<ul class="menu">
    <li><a href="configadmins.php">{$_ADMINLANG.setup.admins}</a></li>
    <li><a href="configadminroles.php">{$_ADMINLANG.setup.adminroles}</a></li>
    <li><a href="configtwofa.php">{$_ADMINLANG.setup.twofa}</a></li>
    <li><a href="configapicredentials.php">{$_ADMINLANG.setup.apicredentials}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fad fa-coins"></i>
    {$_ADMINLANG.setup.payments}
</div>
<ul class="menu">
    <li><a href="configcurrencies.php">{$_ADMINLANG.setup.currencies}</a></li>
    <li><a href="configgateways.php">{$_ADMINLANG.setup.gateways}</a></li>
    <li><a href="{routePath('admin-setup-payments-tax-index')}">{$_ADMINLANG.setup.tax}</a></li>
    <li><a href="configpromotions.php">{$_ADMINLANG.setup.promos}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fad fa-cubes"></i>
    {$_ADMINLANG.setup.products}
</div>
<ul class="menu">
    <li><a href="configproducts.php">{$_ADMINLANG.setup.products}</a></li>
    <li><a href="configproductoptions.php">{$_ADMINLANG.setup.configoptions}</a></li>
    <li><a href="configaddons.php">{$_ADMINLANG.setup.addons}</a></li>
    <li><a href="configbundles.php">{$_ADMINLANG.setup.bundles}</a></li>
    <li><a href="configdomains.php">{$_ADMINLANG.setup.domainpricing}</a></li>
    <li><a href="configregistrars.php">{$_ADMINLANG.setup.registrars}</a></li>
    <li><a href="configservers.php">{$_ADMINLANG.setup.servers}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fad fa-life-ring"></i>
    {$_ADMINLANG.support.title}
</div>
<ul class="menu">
    <li><a href="configticketdepartments.php">{$_ADMINLANG.setup.supportdepartments}</a></li>
    <li><a href="configticketstatuses.php">{$_ADMINLANG.setup.ticketstatuses}</a></li>
    <li><a href="configticketescalations.php">{$_ADMINLANG.setup.escalationrules}</a></li>
    <li><a href="configticketspamcontrol.php">{$_ADMINLANG.setup.spam}</a></li>
</ul>

<div class="sidebar-header">
    <i class="fad fa-cog"></i>
    {$_ADMINLANG.setup.other}
</div>
<ul class="menu">
    <li><a href="configorderstatuses.php">{$_ADMINLANG.setup.orderstatuses}</a></li>
    <li><a href="configsecurityqs.php">{$_ADMINLANG.setup.securityqs}</a></li>
    <li><a href="configbannedips.php">{$_ADMINLANG.setup.bannedips}</a></li>
    <li><a href="configbannedemails.php">{$_ADMINLANG.setup.bannedemails}</a></li>
    <li><a href="configbackups.php">{$_ADMINLANG.setup.backups}</a></li>
</ul>

{/if}

<div class="sidebar-header">
    <i class="fas fa-binoculars"></i>
    {$_ADMINLANG.global.advancedsearch}
</div>
<div class="content-padded">
    <form method="get" action="search.php">
        <select name="type" id="searchtype" onchange="populate(this)" class="form-control">
          <option value="clients">Clients </option>
          <option value="orders">Orders </option>
          <option value="services">Services </option>
          <option value="domains">Domains </option>
          <option value="invoices">Invoices </option>
          <option value="tickets">Tickets </option>
        </select>
        <select name="field" id="searchfield" class="form-control">
          <option>Client ID</option>
          <option selected="selected">Client Name</option>
          <option>Company Name</option>
          <option>Email Address</option>
          <option>Address 1</option>
          <option>Address 2</option>
          <option>City</option>
          <option>State</option>
          <option>Postcode</option>
          <option>Country</option>
          <option>Phone Number</option>
          <option>CC Last Four</option>
        </select>
        <div class="input-group">
            <input type="text" name="q" class="form-control" />
            <div class="input-group-btn">
                <input type="submit" value="{$_ADMINLANG.global.search}" class="btn btn-default" />
            </div>
        </div>
    </form>
</div>

<div class="sidebar-header">
    <i class="fas fa-users"></i>
    {$_ADMINLANG.global.staffonline}
</div>
<div class="content-padded small">
    {$adminsonline}
</div>

<a href="#" class="btn-min-sidebar" id="sidebarClose">
    &laquo; Minimise Sidebar
</a>
