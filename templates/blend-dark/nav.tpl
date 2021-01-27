<a href="index.php" class="logo" title="{$_ADMINLANG.home.title}">
    <img src="templates/{$template}/images/logo.png">
</a>

<ul class="left-nav">
    <li class="bt visible-sidebar">
        <a href="#" class="nav-toggle" id="btnNavbarToggle">
            <i class="fas fa-bars always"></i>
        </a>
    </li>
</ul>

<div class="navbar-collapse">
    <ul>
        {if in_array("Add New Client", $admin_perms) || in_array("Add New Order", $admin_perms) || in_array("Create Invoice", $admin_perms) || in_array("Manage Quotes", $admin_perms) || in_array("Open New Ticket", $admin_perms)}
            <li class="bt has-dropdown">
                <a href="#" onclick="return false;">
                    <i class="fas fa-plus always"></i>
                    <span class="visible-sidebar">{$_ADMINLANG.addNew.title}</span>
                </a>
                <ul class="slim">
                    {if in_array("Add New Client", $admin_perms)}
                        <li><a href="clientsadd.php">{$_ADMINLANG.addNew.client}</a></li>
                    {/if}
                    {if in_array("Add New Order", $admin_perms)}
                        <li><a href="ordersadd.php">{$_ADMINLANG.addNew.order}</a></li>
                    {/if}
                    {if in_array("Create Invoice", $admin_perms)}
                        <li>
                            <a href="{routePath('admin-billing-invoice-new')}" class="open-modal" data-modal-title="{lang key='addNew.invoice'}" {if $anyGatewaysActivated}data-btn-submit-id="btnCreateInvoice" data-btn-submit-label="{lang key='invoices.create'}"{/if}>
                                {lang key='addNew.invoice'}
                            </a>
                        </li>
                    {/if}
                    {if in_array("Manage Quotes", $admin_perms)}
                        <li><a href="quotes.php?action=manage">{$_ADMINLANG.addNew.quote}</a></li>
                    {/if}
                    {if in_array("Open New Ticket", $admin_perms)}
                        <li><a href="supporttickets.php?action=open">{$_ADMINLANG.addNew.ticket}</a></li>
                    {/if}
                </ul>
            </li>
        {/if}
        <li class="has-dropdown">
            <a id="Menu-Clients" href="#" onclick="return false;">
                <i class="fas fa-user"></i>
                {$_ADMINLANG.clients.title}
                <span class="caret"></span>
            </a>
            <ul>
                {if in_array("List Clients",$admin_perms)}
                    <li>
                        <a id="Menu-Clients-View_Search_Clients" href="clients.php">
                            {$_ADMINLANG.clients.viewsearch}
                        </a>
                    </li>
                {/if}
                {if in_array("List Users", $admin_perms)}
                    <li>
                        <a id="Menu-Clients-View_Search_Users" href="{routePath('admin-user-list')}">
                            {lang key='user.manageUsers'}
                        </a>
                    </li>
                {/if}
                {if in_array("Add New Client",$admin_perms)}
                    <li>
                        <a id="Menu-Clients-Add_New_Client" href="clientsadd.php">
                            {$_ADMINLANG.clients.addnew}
                        </a>
                    </li>
                {/if}
                {if in_array("List Services",$admin_perms)}
                    <li class="has-dropdown sub-menu expand">
                        <a id="Menu-Clients-Products_Services" href="{routePath('admin-services-index')}">
                            {$_ADMINLANG.services.title}
                        </a>
                        <ul>
                            <li>
                                <a id="Menu-Clients-Products_Services-Shared_Hosting" href="{routePath('admin-services-shared')}">
                                    -
                                    {$_ADMINLANG.services.listhosting}
                                </a>
                            </li>
                            <li>
                                <a id="Menu-Clients-Products_Services-Reseller_Accounts" href="{routePath('admin-services-reseller')}">
                                    -
                                    {$_ADMINLANG.services.listreseller}
                                </a>
                            </li>
                            <li>
                                <a id="Menu-Clients-Products_Services-VPS_Servers" href="{routePath('admin-services-server')}">
                                    -
                                    {$_ADMINLANG.services.listservers}
                                </a>
                            </li>
                            <li>
                                <a id="Menu-Clients-Products_Services-Other_Services" href="{routePath('admin-services-other')}">
                                    -
                                    {$_ADMINLANG.services.listother}
                                </a>
                            </li>
                        </ul>
                    </li>
                {/if}
                {if in_array("List Addons",$admin_perms)}
                    <li><a id="Menu-Clients-Service_Addons" href="{routePath('admin-addons-index')}">
                        {$_ADMINLANG.services.listaddons}</a>
                    </li>
                {/if}
                {if in_array("List Domains",$admin_perms)}
                    <li>
                        <a id="Menu-Clients-Domain_Registration" href="{routePath('admin-domains-index')}">
                            {$_ADMINLANG.services.listdomains}
                        </a>
                    </li>
                {/if}
                {if in_array("View Cancellation Requests",$admin_perms)}
                    <li>
                        <a id="Menu-Clients-Cancelation_Requests" href="cancelrequests.php">
                            {$_ADMINLANG.clients.cancelrequests}
                        </a>
                    </li>
                {/if}
                {if in_array("Manage Affiliates",$admin_perms)}
                    <li>
                        <a id="Menu-Clients-Manage_Affiliates" href="affiliates.php">
                            {$_ADMINLANG.affiliates.manage}
                        </a>
                    </li>
                {/if}
            </ul>
        </li>
        <li class="has-dropdown">
            <a id="Menu-Orders" href="#" onclick="return false;">
                <i class="fas fa-shopping-cart"></i>
                {$_ADMINLANG.orders.title}
                <span class="caret"></span>
            </a>
            <ul>
                {if in_array("View Orders",$admin_perms)}
                    <li>
                        <a id="Menu-Orders-List_All_Orders" href="orders.php">
                            {$_ADMINLANG.orders.listall}
                        </a>
                    </li>
                    <li>
                        <a id="Menu-Orders-Pending_Orders" href="orders.php?status=Pending">
                            -
                            {$_ADMINLANG.orders.listpending}
                        </a>
                    </li>
                    <li>
                        <a id="Menu-Orders-Active_Orders" href="orders.php?status=Active">
                            -
                            {$_ADMINLANG.orders.listactive}
                        </a>
                    </li>
                    <li>
                        <a id="Menu-Orders-Fraud_Orders" href="orders.php?status=Fraud">
                            -
                            {$_ADMINLANG.orders.listfraud}
                        </a>
                    </li>
                    <li>
                        <a id="Menu-Orders-Cancelled_Orders" href="orders.php?status=Cancelled">
                            -
                            {$_ADMINLANG.orders.listcancelled}
                        </a>
                    </li>
                {/if}
                {if in_array("Add New Order",$admin_perms)}
                    <li>
                        <a id="Menu-Orders-Add_New_Order" href="ordersadd.php">
                            {$_ADMINLANG.orders.addnew}
                        </a>
                    </li>
                {/if}
            </ul>
        </li>
        <li class="has-dropdown">
            <a id="Menu-Billing" href="#" onclick="return false;">
                <i class="fas fa-credit-card"></i>
                {$_ADMINLANG.billing.title}
                <span class="caret"></span>
            </a>
            <ul>
                {if in_array("List Transactions",$admin_perms)}
                    <li>
                        <a id="Menu-Billing-Transactions_List" href="transactions.php">
                            {$_ADMINLANG.billing.transactionslist}
                        </a>
                    </li>
                {/if}
                {if in_array("List Invoices",$admin_perms)}
                    <li class="has-dropdown expand">
                        <a id="Menu-Billing-Invoices" href="invoices.php">
                            {$_ADMINLANG.invoices.title}
                        </a>
                        <ul>
                            <li><a id="Menu-Billing-Invoices-Paid" href="invoices.php?status=Paid">- {$_ADMINLANG.status.paid}</a></li>
                            <li><a id="Menu-Billing-Invoices-Draft" href="invoices.php?status=Draft">- {$_ADMINLANG.status.draft}</a></li>
                            <li><a id="Menu-Billing-Invoices-Unpaid" href="invoices.php?status=Unpaid">- {$_ADMINLANG.status.unpaid}</a></li>
                            <li><a id="Menu-Billing-Invoices-Overdue" href="invoices.php?status=Overdue">- {$_ADMINLANG.status.overdue}</a></li>
                            <li><a id="Menu-Billing-Invoices-Cancelled" href="invoices.php?status=Cancelled">- {$_ADMINLANG.status.cancelled}</a></li>
                            <li><a id="Menu-Billing-Invoices-Refunded" href="invoices.php?status=Refunded">- {$_ADMINLANG.status.refunded}</a></li>
                            <li><a id="Menu-Billing-Invoices-Collections" href="invoices.php?status=Collections">- {$_ADMINLANG.status.collections}</a></li>
                            <li><a id="Menu-Billing-Invoices-Payment_Pending" href="invoices.php?status=Payment%20Pending">- {$_ADMINLANG.status.paymentpending}</a></li>
                        </ul>
                    </li>
                {/if}
                {if in_array("View Billable Items",$admin_perms)}
                    <li class="has-dropdown expand">
                        <a id="Menu-Billing-Billable_Items" href="billableitems.php">
                            {$_ADMINLANG.billableitems.title}
                        </a>
                        <ul>
                            <li><a id="Menu-Billing-Billable_Items-Uninvoiced_Items" href="billableitems.php?status=Uninvoiced">- {$_ADMINLANG.billableitems.uninvoiced}</a></li>
                            <li><a id="Menu-Billing-Billable_Items-Recurring_Items" href="billableitems.php?status=Recurring">- {$_ADMINLANG.billableitems.recurring}</a></li>
                            {if in_array("Manage Billable Items",$admin_perms)}<li><a id="Menu-Billing-Billable_Items-Add_New" href="billableitems.php?action=manage">- {$_ADMINLANG.billableitems.addnew}</a></li>{/if}
                        </ul>
                    </li>
                {/if}
                {if in_array("Manage Quotes",$admin_perms)}
                    <li class="expand">
                        <a id="Menu-Billing-Quotes" href="quotes.php">
                            {$_ADMINLANG.quotes.title}
                        </a>
                        <ul>
                            <li><a id="Menu-Billing-Quotes-Valid" href="quotes.php?validity=Valid">- {$_ADMINLANG.status.valid}</a></li>
                            <li><a id="Menu-Billing-Quotes-Expired" href="quotes.php?validity=Expired">- {$_ADMINLANG.status.expired}</a></li>
                            <li><a id="Menu-Billing-Quotes-Create_New_Quote" href="quotes.php?action=manage">- {$_ADMINLANG.quotes.createnew}</a></li>
                        </ul>
                    </li>
                {/if}
                {if in_array("Offline Credit Card Processing",$admin_perms)}
                    <li><a id="Menu-Billing-Offline_CC_Processing" href="offlineccprocessing.php">{$_ADMINLANG.billing.offlinecc}</a></li>
                {/if}
                {if in_array("View Gateway Log",$admin_perms)}
                    <li><a id="Menu-Billing-Gateway_Log" href="gatewaylog.php">{$_ADMINLANG.billing.gatewaylog}</a></li>
                {/if}
            </ul>
        </li>
        <li class="has-dropdown">
            <a id="Menu-Support" href="#" onclick="return false;">
                <i class="fas fa-life-ring"></i>
                {$_ADMINLANG.support.title}
                <span class="caret"></span>
            </a>
            <ul>
                {if in_array("Support Center Overview",$admin_perms)}
                    <li><a id="Menu-Support-Support_Overview" href="supportcenter.php">{$_ADMINLANG.support.supportoverview}</a></li>
                {/if}
                {if in_array("List Support Tickets",$admin_perms)}
                    <li class="has-dropdown expand">
                        <a id="Menu-Support-Support_Tickets" href="supporttickets.php">
                            {$_ADMINLANG.support.supporttickets}
                        </a>
                        <ul>
                            <li><a id="Menu-Support-Support_Tickets-Flagged_Tickets" href="supporttickets.php?view=flagged">- {$_ADMINLANG.support.flagged}</a></li>
                            <li><a id="Menu-Support-Support_Tickets-All_Active_Tickets" href="supporttickets.php?view=active">- {$_ADMINLANG.support.allactive}</a></li>
                            {foreach $menuticketstatuses as $status}
                                <li><a id="Menu-Support-Support_Tickets-{$status|replace:' ':'_'}" href="supporttickets.php?view={$status}">- {$status}</a></li>
                            {/foreach}
                        </ul>
                    </li>
                {/if}
                {if in_array("Open New Ticket",$admin_perms)}
                    <li><a id="Menu-Support-Open_New_Ticket" href="supporttickets.php?action=open">{$_ADMINLANG.support.opennewticket}</a></li>
                {/if}
                {if in_array("Manage Predefined Replies",$admin_perms)}
                    <li><a id="Menu-Support-Predefined_Replies" href="supportticketpredefinedreplies.php">{$_ADMINLANG.support.predefreplies}</a></li>
                {/if}
                {if in_array("Manage Announcements",$admin_perms)}
                    <li><a id="Menu-Support-Announcements" href="supportannouncements.php">{$_ADMINLANG.support.announcements}</a></li>
                {/if}
                {if in_array("Manage Downloads",$admin_perms)}
                    <li><a id="Menu-Support-Downloads" href="supportdownloads.php">{$_ADMINLANG.support.downloads}</a></li>
                {/if}
                {if in_array("Manage Knowledgebase",$admin_perms)}
                    <li><a id="Menu-Support-Knowledgebase" href="supportkb.php">{$_ADMINLANG.support.knowledgebase}</a></li>
                {/if}
                {if in_array("Manage Network Issues",$admin_perms)}
                    <li class="has-dropdown expand">
                        <a id="Menu-Support-Network_Issues" href="networkissues.php">
                            {$_ADMINLANG.networkissues.title}
                        </a>
                        <ul>
                            <li><a id="Menu-Support-Network_Issues-Open" href="networkissues.php">- {$_ADMINLANG.networkissues.open}</a></li>
                            <li><a id="Menu-Support-Network_Issues-Scheduled" href="networkissues.php?view=scheduled">- {$_ADMINLANG.networkissues.scheduled}</a></li>
                            <li><a id="Menu-Support-Network_Issues-Resolved" href="networkissues.php?view=resolved">- {$_ADMINLANG.networkissues.resolved}</a></li>
                            <li><a id="Menu-Support-Network_Issues-Create_New" href="networkissues.php?action=manage">- {$_ADMINLANG.networkissues.addnew}</a></li>
                        </ul>
                    </li>
                {/if}
            </ul>
        </li>
        {if in_array("View Reports",$admin_perms)}
            <li class="has-dropdown">
                <a id="Menu-Reports" href="#" onclick="return false;">
                    <i class="fas fa-chart-bar"></i>
                    {$_ADMINLANG.reports.title}
                    <span class="caret"></span>
                </a>
                <ul>
                    <li><a id="Menu-Reports-Home" href="reports.php">{$_ADMINLANG.reports.title}</a></li>
                    <li><a id="Menu-Reports-Daily_Performance" href="reports.php?report=daily_performance">Daily Performance</a></li>
                    <li><a id="Menu-Reports-Income_Forecast" href="reports.php?report=income_forecast">Income Forecast</a></li>
                    <li><a id="Menu-Reports-Annual_Income_Report" href="reports.php?report=annual_income_report">Annual Income Report</a></li>
                    <li><a id="Menu-Reports-New_Customers" href="reports.php?report=new_customers">New Customers</a></li>
                    <li><a id="Menu-Reports-Ticket_Feedback_Scores" href="reports.php?report=ticket_feedback_scores">Ticket Feedback Scores</a></li>
                    <li><a id="Menu-Reports-Batch_Invoice_PDF_Export" href="reports.php?report=pdf_batch">Batch Invoice PDF Export</a></li>
                    <li><a id="Menu-Reports-More..." href="reports.php">More...</a></li>
                </ul>
            </li>
        {/if}
        <li class="has-dropdown">
            <a id="Menu-Utilities" href="#" onclick="return false;">
                <i class="fas fa-file-alt"></i>
                {$_ADMINLANG.utilities.title}
                <span class="caret"></span>
            </a>
            <ul>
                {if in_array("Update WHMCS",$admin_perms)}
                    <li><a id="Menu-Utilities-Update" href="update.php">{$_ADMINLANG.update.title}</a></li>
                {/if}
                {if in_array("WHMCSConnect",$admin_perms)}
                    <li><a id="Menu-Utilities-WHMCS_Connect" href="whmcsconnect.php">{$_ADMINLANG.whmcsConnect.whmcsConnectName}</a></li>
                {/if}
                {if in_array("Automation Status", $admin_perms)}
                    <li><a id="Menu-Utilities-System-Automation_Status" href="automationstatus.php">{$_ADMINLANG.utilities.automationStatus}</a></li>
                {/if}
                {if in_array("View Module Queue", $admin_perms)}
                    <li><a id="Menu-Utilities-Module_Queue" href="modulequeue.php">{$_ADMINLANG.utilities.moduleQueue}</a></li>
                {/if}
                {if in_array("Configure Domain Pricing",$admin_perms)}
                    <li><a id="Menu-Utilities-Tld_Sync" href="{routePath('admin-utilities-tools-tld-import-step-one')}">{$_ADMINLANG.utilities.tldImport}</a></li>
                {/if}
                {if in_array("Mass Mail",$admin_perms)}
                    <li><a id="Menu-Utilities-Email_Campaigns" href="{routePath('admin-utilities-tools-email-campaigns')}">{lang key='utilities.emailCampaigns.title'}</a></li>
                {/if}
                {if in_array("Email Marketer",$admin_perms)}
                    <li><a id="Menu-Utilities-Email_Marketer" href="utilitiesemailmarketer.php">{$_ADMINLANG.utilities.emailmarketer}</a></li>
                {/if}
                {if in_array("Link Tracking",$admin_perms)}
                    <li><a id="Menu-Utilities-Link_Tracking" href="utilitieslinktracking.php">{$_ADMINLANG.utilities.linktracking}</a></li>
                {/if}
                {if in_array("Calendar",$admin_perms)}
                    <li><a id="Menu-Utilities-Calendar" href="calendar.php">{$_ADMINLANG.utilities.calendar}</a></li>
                {/if}
                {if in_array("To-Do List",$admin_perms)}
                    <li><a id="Menu-Utilities-To-Do_List" href="todolist.php">{$_ADMINLANG.utilities.todolist}</a></li>
                {/if}
                {if in_array("WHOIS Lookups",$admin_perms)}
                    <li><a id="Menu-Utilities-WHOIS_Lookups" href="whois.php">{$_ADMINLANG.utilities.whois}</a></li>
                {/if}
                {if in_array("Domain Resolver Checker",$admin_perms)}
                    <li><a id="Menu-Utilities-Domain_Resolver" href="utilitiesresolvercheck.php">{$_ADMINLANG.utilities.domainresolver}</a></li>
                {/if}
                {if in_array("View Integration Code",$admin_perms)}
                    <li><a id="Menu-Utilities-Integration_Code" href="systemintegrationcode.php">{$_ADMINLANG.utilities.integrationcode}</a></li>
                {/if}
                {if in_array("Automation Status", $admin_perms) || in_array("Database Status", $admin_perms) || in_array("System Cleanup Operations", $admin_perms) || in_array("View PHP Info", $admin_perms)}
                    <li class="has-dropdown expand">
                        <a id="Menu-Utilities-System" href="#">
                            {$_ADMINLANG.utilities.system}
                        </a>
                        <ul>
                            {if in_array("Database Status",$admin_perms)}<li><a id="Menu-Utilities-System-Database_Status" href="systemdatabase.php">{$_ADMINLANG.utilities.dbstatus}</a></li>{/if}
                            {if in_array("System Cleanup Operations",$admin_perms)}<li><a id="Menu-Utilities-System-System_Cleanup" href="systemcleanup.php">{$_ADMINLANG.utilities.syscleanup}</a></li>{/if}
                            {if in_array("View PHP Info",$admin_perms)}<li><a id="Menu-Utilities-System-PHP_Info" href="systemphpinfo.php">{$_ADMINLANG.utilities.phpinfo}</a></li>{/if}
                            {if in_array("View PHP Info",$admin_perms)}<li><a id="Menu-Utilities-System-PhpCompat" href="{routePath('admin-utilities-system-phpcompat')}">{$_ADMINLANG.utilities.phpcompat}</a></li>{/if}
                        </ul>
                    </li>
                {/if}
            </ul>
        </li>
        <li class="has-dropdown">
            <a id="Menu-Addons" href="#" onclick="return false;">
                <i class="fas fa-cube"></i>
                {$_ADMINLANG.utilities.addonmodules}
                <span class="caret"></span>
            </a>
            <ul>
                <li><a id="Menu-Addons-Home" href="addonmodules.php">{$_ADMINLANG.utilities.addonmodules}</a></li>
                {foreach from=$addon_modules key=module item=displayname}
                    <li><a id="Menu-Addons-{$displayname}" href="addonmodules.php?module={$module}">{$displayname}</a></li>
                {foreachelse}
                    <li><a id="Menu-Addons-AppsAndIntegrations" href="{routePath('admin-apps-index')}">{$_ADMINLANG.setup.appsAndIntegrations}</a></li>
                    <li><a id="Menu-Addons-Marketplace-Link" class="autoLinked" href="https://marketplace.whmcs.com">Visit WHMCS Marketplace</a></li>
                {/foreach}
            </ul>
        </li>
    </ul>

    <ul class="right-nav">
        {if in_array("Automation Status", $admin_perms)}
            <li class="bt">
                <a href="automationstatus.php" id="Menu-Automation-Status" data-toggle="tooltip" data-placement="bottom" title="{$_ADMINLANG.utilities.automationStatus}">
                    {if !$isNewInstallation && ($isCronError || $isCronWarning)}
                        <div class="badge-container">
                            <i class="fas fa-cogs always"></i>
                            <span class="badge"><span class="fas fa-{if $isCronError}times{else}exclamation{/if}"></span></span>
                        </div>
                    {else}
                        <i class="fas fa-cogs always"></i>
                    {/if}
                    <span class="visible-sidebar">{$_ADMINLANG.utilities.automationStatus}</span>
                </a>
            </li>
        {/if}
        {if $showUpdateAvailable}
            <li class="bt">
                <a href="update.php" class="update-btn" data-toggle="tooltip" data-placement="bottom" title="{$_ADMINLANG.license.updateavailable}">
                    <i class="fas fa-download always"></i>
                    <span class="visible-sidebar">{$_ADMINLANG.global.updateAvailabile}</span>
                </a>
            </li>
        {/if}
        <li class="bt has-dropdown">
            <a id="Menu-Setup" href="#" onclick="return false;">
                <i class="fas fa-wrench always"></i>
                <span class="visible-sidebar">{$_ADMINLANG.setup.config}</span>
            </a>
            <ul class="drop-icons">
                {if in_array("Configure General Settings",$admin_perms)}
                    <li>
                        <a id="Menu-Config-Setup" href="{routePath('admin-setup-index')}">
                            <span class="ico-container"><i class="fad fa-sliders-h"></i></span>
                            {$_ADMINLANG.setup.title}
                        </a>
                    </li>
                {/if}
                <li>
                    <a id="Menu-Config-Apps-Integrations" href="{routePath('admin-apps-index')}">
                        <span class="ico-container wizard"><i class="fad fa-cubes"></i></span>
                        {$_ADMINLANG.setup.appsAndIntegrations}
                    </a>
                </li>
                {if in_array("Configure Administrators",$admin_perms)}
                    <li>
                        <a id="Menu-Config-Admins" href="configadmins.php">
                            <span class="ico-container health"><i class="fad fa-user-friends"></i></span>
                            {$_ADMINLANG.config.manageAdmins}
                        </a>
                    </li>
                {/if}
                {if in_array("Health and Updates", $admin_perms)}
                    <li>
                        <a id="Menu-Config-HealthStatus" href="systemhealthandupdates.php">
                            <span class="ico-container health"><i class="fad fa-heart-rate"></i></span>
                            {$_ADMINLANG.healthCheck.menuTitle}
                        </a>
                    </li>
                {/if}
                {if in_array("Configure General Settings",$admin_perms)}
                    <li>
                        <a id="Menu-Config-SetupWizard" href="#" onclick="openSetupWizard();return false;">
                            <span class="ico-container wizard"><i class="fad fa-magic"></i></span>
                            {$_ADMINLANG.help.setupWizard}
                        </a>
                    </li>
                {/if}
                {if in_array("View Activity Log",$admin_perms) || in_array("View Admin Log",$admin_perms) || in_array("View Module Debug Log",$admin_perms) || in_array("View Email Message Log",$admin_perms) || in_array("View Ticket Mail Import Log",$admin_perms) || in_array("View WHOIS Lookup Log",$admin_perms)}
                    <li>
                        <a id="Menu-Config-SysLogs" href="systemactivitylog.php">
                            <span class="ico-container logs"><i class="fad fa-copy"></i></span>
                            {$_ADMINLANG.config.sysLogs}
                        </a>
                    </li>
                {/if}
            </ul>
        </li>
        <li class="bt account has-dropdown">
            <a id="Menu-Account" href="#" onclick="return false;">
                <img src="https://www.gravatar.com/avatar/{md5(\WHMCS\User\Admin::getAuthenticatedUser()->email)}?s=25&d=mp" class="profile-icon" alt="Gravatar">
                <span class="visible-sidebar">{$_ADMINLANG.account}</span>
            </a>
            <ul class="slim drop-left">
                <li><a href="myaccount.php">{$_ADMINLANG.global.myaccount}</a></li>
                <li><a href="#" data-toggle="modal" data-target="#modalMyNotes">{$_ADMINLANG.global.mynotes}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="../">{$_ADMINLANG.global.clientarea}</a></li>
                <li role="separator" class="divider"></li>
                <li><a id="Menu-Account-Logout" href="logout.php">{$_ADMINLANG.global.logout}</a></li>
            </ul>
        </li>
        <li class="bt help has-dropdown">
            <a id="Menu-Help" href="#" onclick="return false;">
                <i class="far fa-question-circle always"></i>
                <span class="visible-sidebar">{$_ADMINLANG.help.title}</span>
            </a>
            <ul class="drop-left">
                <li><a href="https://docs.whmcs.com/{$helplink}" target="_blank">{$_ADMINLANG.help.docs}</a></li>
                <li><a href="systemsupportrequest.php">{$_ADMINLANG.help.techSupport}</a></li>
                <li><a id="Menu-Help-Community_Forums" href="https://whmcs.community/?utm_source=InApp&utm_medium=Help_Menu" target="_blank">{$_ADMINLANG.help.forums}</a></li>
                {if in_array("View What's New",$admin_perms)}
                    <li><a href="javascript:openFeatureHighlights()">{$_ADMINLANG.whatsNew.menuTitle}</a></li>
                {/if}
                {if in_array("Main Homepage",$admin_perms)}
                    <li role="separator" class="divider"></li>
                    <li><a href="{routePath('admin-help-license')}">{$_ADMINLANG.help.licenseinfo}</a></li>
                {/if}
            </ul>
        </li>
    </ul>
</div>

<div class="intellisearch" id="intelliSearchForm">
    <form method="post" action="{routePath('admin-search-intellisearch')}">
        <input type="hidden" id="intelliSearchHideInactive" name="hide_inactive" value="1">
        <i class="fas fa-search loader"></i>
        <div class="input-group">
            <input type="text" name="searchterm" class="form-control" id="inputIntelliSearchValue" placeholder="{$_ADMINLANG.searchPlaceholder}">
            <span class="input-group-btn">
                <button class="btn btn-default" type="button" id="btnIntelliSearchClose">
                    <i class="far fa-times closer"></i>
                </button>
            </span>
        </div>
        <input type="hidden" id="intelliSearchExpand" name="more" value="">
    </form>
</div>
