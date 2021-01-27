<div class="intellisearchresults" id="intelligentSearchResults">
    <div class="search-header">
        {lang key="global.numSearchResultsFound" number='<span class="search-result-count">0</span>'}
    </div>
    <div class="outcome search-results">
        <h5>
            {lang key="clients.title"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="client">
            <li class="template">
                <a href="{$ADMIN_WEB_ROOT}/clientssummary.php?userid=[id]">
                    <span class="icon"><i class="fal fa-user"></i></span>
                    <strong>[name] [company_name]</strong>
                    #[id]
                    <span class="label [statusclass]">[status]</span>
                    <em>[email]</em>
                </a>
            </li>
        </ul>
        <h5>
            {lang key="user.userTab"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="user">
            <li class="template">
                <a
                    [link]
                    class="open-modal"
                    data-modal-title="{lang key='user.manageUserEmail' email='[email]'}"
                    data-modal-size="modal-lg"
                    data-btn-submit-label="{lang key='global.save'}"
                    data-btn-submit-id="btnUpdateUser"
                >
                    <span class="icon"><i class="fal fa-user"></i></span>
                    <strong>[name]</strong>
                    #[id]
                    <em>[email]</em>
                </a>
            </li>
        </ul>
        <h5>
            {lang key="clientsummary.contacts"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="contact">
            <li class="template">
                <a href="{$ADMIN_WEB_ROOT}/clientscontacts.php?userid=[user_id]&contactid=[id]">
                    <span class="icon"><i class="fal fa-user"></i></span>
                    <strong>[name][company_name]</strong>
                    #[id]
                    <em>[email]</em>
                </a>
            </li>
        </ul>
        <h5>
            {lang key="services.title"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="service">
            <li class="template">
                <a href="{$ADMIN_WEB_ROOT}/clientsservices.php?userid=[user_id]&id=[id]">
                    <span class="icon"><i class="fal fa-cube"></i></span>
                    <strong>[product_name] - [domain]</strong>
                    <span class="label [statusclass]">[status]</span>
                    <em>[client_name][client_company_name] #[user_id]</em>
                </a>
            </li>
        </ul>
        <h5>
            {lang key="domains.title"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="domain">
            <li class="template">
                <a href="{$ADMIN_WEB_ROOT}/clientsdomains.php?userid=[user_id]&id=[id]">
                    <span class="icon"><i class="fal fa-globe-americas"></i></span>
                    <strong>[domain]</strong>
                    <span class="label [statusclass]">[status]</span>
                    <em>[client_name][client_company_name] #[user_id]</em>
                </a>
            </li>
        </ul>
        <h5>
            {lang key="invoices.title"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="invoice">
            <li class="template">
                <a href="{$ADMIN_WEB_ROOT}/invoices.php?action=edit&id=[id]">
                    <span class="icon"><i class="fal fa-file-invoice"></i></span>
                    <strong>Invoice #[number]</strong>
                    <span class="label [statusclass]">[status]</span>
                    <em>[client_name][client_company_name] #[user_id]</em>
                </a>
            </li>
        </ul>
        <h5>
            {lang key="support.supporttickets"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="ticket">
            <li class="template">
                <a href="{$ADMIN_WEB_ROOT}/supporttickets.php?action=view&id=[id]">
                    <span class="icon"><i class="fal fa-comments"></i></span>
                    <strong>Ticket #[mask]</strong>
                    <em>[subject]</em>
                </a>
            </li>
        </ul>
        <h5>
            {lang key="search.otherResults"}
            (<span class="count"></span>)
            <i class="far fa-chevron-down"></i>
        </h5>
        <ul data-type="other">
            <li class="template">
                <a href="{$ADMIN_WEB_ROOT}/[href]">
                    <span class="icon"><i class="[icon]"></i></span>
                    <strong>[title]</strong>
                    <em>[subTitle]</em>
                </a>
            </li>
        </ul>
    </div>
    <div class="outcome search-in-progress">
        <i class="fas fa-spinner fa-spin"></i>
        {lang key="search.performingSearch"}
    </div>
    <div class="outcome search-no-results">
        <i class="fas fa-exclamation-triangle"></i>
        {lang key="search.noResultsFound"}.<br>
        {lang key="search.tryAlternativeSearchTerm"}.
    </div>
    <div class="outcome session-expired">
        <i class="fas fa-exclamation-triangle"></i>
        {lang key="search.sessionExpired"}.<br>
        {lang key="search.refreshAndRetry"}.
    </div>
    <div class="outcome search-warning">
        <i class="fas fa-exclamation-triangle"></i>
        <span class="warning-msg"></span>
    </div>
    <div class="outcome error">
        <i class="fas fa-exclamation-triangle"></i>
        {lang key="global.erroroccurred"}.<br>
        {lang key="global.seeConsoleLog"}.
    </div>
    <div class="search-footer">
        <a href="#" class="collapse-toggle" data-lang-collapse="{lang key="global.collapseAll"}" data-lang-expand="{lang key="global.expandAll"}">{lang key="global.collapseAll"}</a>
        <span class="realtime"><input type="checkbox" id="intelliSearchRealtime" data-size="mini" data-label-text="{lang key="search.autoSearchOnType"}" data-on-color="info" data-url="{routePath('admin-search-intellisearch-settings-autosearch')}"{if $intelligentSearch.autoSearchEnabled} checked{/if}></span>
        <span class="hide-inactive"><input type="checkbox" id="intelliSearchHideInactiveSwitch" data-size="mini" data-label-text="{lang key="global.hideInactive"}" checked="checked"></span>
    </div>
    <div class="hidden">
        <a class="search-more-results" data-type="placeholder">
            <i class="fas fa-info-circle"></i>
            {lang key="search.showMoreResults"}.
        </a>
    </div>
</div>
